package ko.gagu.issue.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ko.gagu.issue.dto.BoardDTO;
import ko.gagu.issue.service.BoardService;

@Controller
public class BoardController {
    
    Logger logger = LoggerFactory.getLogger(getClass());
    
    @Autowired 
    BoardService boardService;
    
    @GetMapping(value="/boardlist.go")
    public ModelAndView listBoards(@RequestParam(defaultValue = "1") int page,
                                   @RequestParam(defaultValue = "8") int pageSize) {
        // 페이지네이션을 위한 데이터 계산
        int startIndex = (page - 1) * pageSize;
        List<BoardDTO> boardList = boardService.getPaginatedBoardList(startIndex, pageSize);
        int totalItems = boardService.getTotalBoardCount(); // 전체 항목 수
        int totalPages = (int) Math.ceil((double) totalItems / pageSize); // 전체 페이지 수

        ModelAndView mav = new ModelAndView("common/board");
        mav.addObject("boardList", boardList);
        mav.addObject("page", page);
        mav.addObject("totalPages", totalPages);
        
        return mav;
    }
    
    @GetMapping(value="/boardupdate.go")
    public ModelAndView update_go(@RequestParam int id) {
    	
    	ModelAndView mav = new ModelAndView("common/boardupdate");
    	BoardDTO board = boardService.findBoardById(id);
    	mav.addObject("board", board);
    	
        logger.info("공지사항 수정페이지");
        
        return mav;
    }
    
    @GetMapping(value="/boardwrite.go")
    public String write_go() {
        logger.info("공지사항 작성");
        return "common/boardWrite";
    }

    @PostMapping(value = "/boardupdate.do")
    public ModelAndView update_do(
            RedirectAttributes rAttr,
            @RequestParam Map<String, String> param) {

        // 게시글 ID 파라미터 검증
        String postIdStr = param.get("post_id");
        if (postIdStr == null || postIdStr.isEmpty()) {
            rAttr.addFlashAttribute("errorMessage", "게시글 ID가 올바르지 않습니다.");
            return new ModelAndView("redirect:/boardlist.go");
        }

        int post_id;
        try {
            post_id = Integer.parseInt(postIdStr);
        } catch (NumberFormatException e) {
            rAttr.addFlashAttribute("errorMessage", "게시글 ID가 올바르지 않습니다.");
            return new ModelAndView("redirect:/boardlist.go");
        }

        // 기존 게시글 조회
        BoardDTO existingBoard = boardService.findBoardById(post_id);
        if (existingBoard == null) {
            rAttr.addFlashAttribute("errorMessage", "존재하지 않는 게시글입니다.");
            return new ModelAndView("redirect:/boardlist.go");
        }

        // 공지사항 여부 파라미터 처리
        String isNoticeStr = param.get("is_notice");
        boolean is_notice = "1".equals(isNoticeStr); // "1"이면 true, 그 외는 false로 처리

        existingBoard.setIs_notice(is_notice);

        // 게시글 업데이트
        boardService.updateBoard(existingBoard);

        // 성공 메시지 추가 후 리다이렉트
        rAttr.addFlashAttribute("successMessage", "게시글이 성공적으로 수정되었습니다.");
        return new ModelAndView("redirect:/boardlist.go");
    }




    @GetMapping(value = "/boarddetail.go")
    public ModelAndView viewBoardDetail(@RequestParam int post_id) {
        ModelAndView mav = new ModelAndView();

        // 게시글 조회
        BoardDTO board = boardService.getBoardById(post_id);
        if (board != null) {
            // 조회수 증가 처리
            boardService.increaseViewCount(post_id);
            mav.addObject("board", board);
            mav.setViewName("common/boardDetail");
            logger.info("Requested post_id: " + post_id);
        } else {
            mav.setViewName("errorPage");
        }
        
        return mav;
    }
    
    @PostMapping(value="boardwrite.do")
    public ModelAndView write_do(RedirectAttributes rAttr, 
            @RequestParam Map<String, String> param,
            @RequestParam("attachment") MultipartFile file) { // 파일을 함께 받음
        return boardService.write(rAttr, param, file);
    }
    
    @PostMapping(value = "/upload")
    public String upload(MultipartFile file) {
        logger.info("upload single file : "+file);        
        return boardService.upload(file);
    }

    @PostMapping(value = "/multiUpload")
    public String multiUpload(MultipartFile[] files) {
        logger.info("Upload Multi Files: "+files.length);
        return boardService.multiUpload(files);
    }

    @RequestMapping(value = "/download/{fileName}")
    public ResponseEntity<Resource> download(@PathVariable String fileName) {
        logger.info("download Images: "+fileName);
        return boardService.download(fileName);
    }
    
    @GetMapping("/searchboard.do")
    public ModelAndView searchNotices(@RequestParam(value = "searchType", required = false) String searchType,
                                      @RequestParam(value = "keyword", required = false) String keyword,
                                      @RequestParam(defaultValue = "1") int page,
                                      @RequestParam(defaultValue = "8") int pageSize) {
        // 검색어가 없으면 초기 페이지로 리다이렉트
        if (keyword == null || keyword.trim().isEmpty()) {
            return new ModelAndView("redirect:/boardlist.go");
        }

        // 검색 결과 가져오기
        List<BoardDTO> searchResults = new ArrayList<>();
        if ("po_title".equals(searchType)) {
            searchResults = boardService.searchByTitle(keyword); // 제목으로 검색
        } else if ("po_title||po_content".equals(searchType)) {
            searchResults = boardService.searchByTitleAndContent(keyword); // 제목 + 내용으로 검색
        }

        // 전체 항목 수 계산
        int totalItems = searchResults.size();

        // 전체 페이지 수 계산
        int totalPages = (int) Math.ceil((double) totalItems / pageSize);

        // 현재 페이지에 맞춰 검색 결과 잘라내기
        int startIndex = (page - 1) * pageSize;
        int endIndex = Math.min(startIndex + pageSize, totalItems);
        List<BoardDTO> pagedResults = searchResults.subList(startIndex, endIndex);

        // ModelAndView 생성
        ModelAndView mav = new ModelAndView("common/board");
        mav.addObject("searchResults", pagedResults); // 현재 페이지에 맞는 검색 결과를 뷰로 전달
        mav.addObject("keyword", keyword); // 검색 키워드도 뷰로 전달
        mav.addObject("searchType", searchType); // 검색 타입도 뷰로 전달
        mav.addObject("page", page); // 현재 페이지 번호
        mav.addObject("searchTotalPages", totalPages); // 전체 페이지 수

        return mav;
    }

}

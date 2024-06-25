package ko.gagu.issue.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ko.gagu.issue.dao.BoardDAO;
import ko.gagu.issue.dto.BoardDTO;

@Service
public class BoardService {

    private static final String UPLOAD_DIR = "C:/filestore";
    private Logger logger = LoggerFactory.getLogger(BoardService.class);

    @Autowired
    private BoardDAO boardDao;

    // 게시글 작성 메서드
    public ModelAndView write(RedirectAttributes rAttr, Map<String, String> param, MultipartFile file) {
        ModelAndView mav = new ModelAndView();
        String page = "boardWrite";

        BoardDTO dto = new BoardDTO();
        dto.setIs_notice(Boolean.parseBoolean(param.get("is_notice")));
        dto.setPo_title(param.get("po_title"));
        dto.setPo_content(param.get("po_content"));
        Timestamp currentTimestamp = new Timestamp(System.currentTimeMillis());
        dto.setWritten_datetime(currentTimestamp);
        dto.setPo_view_count(0);

        // 게시글을 데이터베이스에 삽입
        int result = boardDao.insertBoard(dto);
        int post_id = dto.getPost_id(); // 삽입된 게시글 ID 가져오기

        try {
            if (file != null && !file.isEmpty()) {
                // 파일 저장 및 파일 정보 데이터베이스에 저장
                String storedFileName = storeFile(file);
                int fileIdx = saveFileInfoToDatabase(post_id, file.getOriginalFilename(), storedFileName);
                dto.setIdx_file(fileIdx); // 게시글에 파일 인덱스 업데이트
            } else {
                dto.setIdx_file(null);
            }
        } catch (IOException e) {
            logger.error("파일 업로드 중 오류 발생: " + e.getMessage());
        }

        if (result > 0) {
            logger.info("게시글 작성 성공");
            rAttr.addFlashAttribute("message", "게시글이 성공적으로 작성되었습니다.");
            mav.setViewName("redirect:/boardlist.go");
        } else {
            logger.error("게시글 작성 실패");
            rAttr.addFlashAttribute("message", "게시글 작성에 실패하였습니다.");
            mav.setViewName("common/boardWrite");
        }

        return mav;
    }

    // 단일 파일 업로드 메서드
    public String upload(MultipartFile file) {
        try {
            if (file != null && !file.isEmpty()) {
                return storeFile(file); // 파일 저장
            }
        } catch (IOException e) {
            logger.error("파일 업로드 중 오류 발생: " + e.getMessage());
        }
        return null;
    }

    // 다중 파일 업로드 메서드
    public String multiUpload(MultipartFile[] files) {
        try {
            if (files != null && files.length > 0) {
                return storeFile(files[0]); // 첫 번째 파일 저장
            }
        } catch (IOException e) {
            logger.error("다중 파일 업로드 중 오류 발생: " + e.getMessage());
        }
        return null;
    }

    // 파일 다운로드 메서드
    public ResponseEntity<Resource> download(String fileName) {
        try {
            Path filePath = Paths.get(UPLOAD_DIR).resolve(fileName).normalize();
            Resource resource = new UrlResource(filePath.toUri());
            if (resource.exists()) {
                return ResponseEntity.ok()
                        .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + resource.getFilename() + "\"")
                        .body(resource);
            } else {
                logger.error("파일을 찾을 수 없습니다: " + fileName);
                return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
            }
        } catch (Exception e) {
            logger.error("파일 다운로드 중 오류 발생: " + e.getMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    // 파일 저장 메서드
    private String storeFile(MultipartFile file) throws IOException {
        String originalFileName = StringUtils.cleanPath(file.getOriginalFilename());
        String storedFileName = System.currentTimeMillis() + "_" + originalFileName;
        Path targetLocation = Paths.get(UPLOAD_DIR).resolve(storedFileName);
        Files.copy(file.getInputStream(), targetLocation);
        return storedFileName;
    }
    
    // 페이지네이션을 위한 게시글 목록 조회 메서드
    public List<BoardDTO> getPaginatedBoardList(int startIndex, int pageSize) {
        return boardDao.selectPaginatedBoardList(startIndex, pageSize);
    }

    // 전체 게시글 수 조회 메서드
    public int getTotalBoardCount() {
        return boardDao.selectTotalBoardCount();
    }

    private int saveFileInfoToDatabase(int post_id, String origin_name, String file_name) {
        return boardDao.insertFile(post_id, origin_name, file_name);
    }

    public List<BoardDTO> getBoardList() {
        return boardDao.selectBoardList(); 
    }
    
    public void increaseViewCount(int post_id) {
        boardDao.increaseViewCount(post_id);
    }

    public BoardDTO getBoardById(int post_id) {
        BoardDTO board = boardDao.getBoardById(post_id);
        BoardDTO fileInfo = boardDao.getFileById(post_id);
        if (fileInfo != null) {
        	
        	board.setOrigin_name(fileInfo.getOrigin_name());
        	board.setFile_name(fileInfo.getFile_name());
        }
        return board;
    }
}

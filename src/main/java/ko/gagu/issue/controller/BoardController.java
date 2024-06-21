package ko.gagu.issue.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ko.gagu.issue.service.BoardService;

@Controller
public class BoardController {
    
    Logger logger = LoggerFactory.getLogger(getClass());
    
    @Autowired 
    BoardService boardService;
    
    @GetMapping(value="/boardlist.go")
    public String home() {
        return "common/board";
    }
    
    @GetMapping(value="/boardwrite.go")
    public String write_go() {
        logger.info("공지사항 작성");
        return "common/boardWrite";
    }
    
    @GetMapping(value="/boarddetail.go")
    public String detail_go() {
        logger.info("공지사항 상세보기");
        return "common/boardDetail";
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

}

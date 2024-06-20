package ko.gagu.issue.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ko.gagu.issue.service.BoardService;

@Controller
public class BoardController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired BoardService boardService;
	
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
			@RequestParam Map<String, String> param) {
		return boardService.write(rAttr, param);
	}	

}

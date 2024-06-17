package ko.gagu.issue.main.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	// 메인페이지
	@RequestMapping(value = "/")
	public String main() {
		logger.info("index.jsp 로 이동");
		return "main/index";
	}

	@RequestMapping(value = "/indexOri.go")
	public String indexOri() {
		logger.info("indexOri.jsp 로 이동");
		return "main/indexOri";
	}

	// 1단 경로
	@GetMapping(value = "/{path}.go")
	public String path(@PathVariable String path) {
		logger.info(path + ".jsp 로 이동");
		return path;
	}

}

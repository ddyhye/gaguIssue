package ko.gagu.issue.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import ko.gagu.issue.service.MailService;

@Controller
public class MailController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	private final MailService mailService;
	
	public MailController(MailService mailService) {
		this.mailService=mailService;
	}

	@GetMapping(value="/common/mailList.go")
	public String mailList(){
		logger.info("mailList in");
		return "common/mail";
	}
	
	@GetMapping(value="/common/mailWrite.go")
	public String mailWrite() {
		logger.info("메일작성 페이지 진입");
		return "common/mailWrite";
	}
//	
//	@PostMapping(value="/common/mailWrite.do")
//	publci Stirng send
	
	
	
}

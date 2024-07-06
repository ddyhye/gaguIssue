package ko.gagu.issue.controller;

import java.io.IOException;
import java.util.List;

import javax.mail.MessagingException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import ko.gagu.issue.dto.MailDTO;
import ko.gagu.issue.service.MailService;

@Controller
public class MailController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	private final MailService mailService;
	
	public MailController(MailService mailService) {
		this.mailService=mailService;
	}

	@GetMapping(value="/common/mailList.go")
	public String mailList(Model model) throws IOException{
		List<MailDTO>mailList = mailService.receiveMails();
		model.addAttribute("mailList",mailList);
		return "common/mailList";
	}
	
	@GetMapping(value="/common/mailWrite.go")
	public String mailWrite() {
		logger.info("메일작성 페이지 진입");
		return "common/mailWrite";
	}
	
	@PostMapping(value = "/common/mailWrite.do")
	public String sendMail(MailDTO mailDto, @RequestParam("files") MultipartFile[] files) throws MessagingException {
	    mailService.sendMail(mailDto, files);
	    return "redirect:/common/mailList.go";
	}
	
	

	
	
	
}

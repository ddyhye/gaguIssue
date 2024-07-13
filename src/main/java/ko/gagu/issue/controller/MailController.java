package ko.gagu.issue.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ko.gagu.issue.dto.MailDTO;
import ko.gagu.issue.service.MailService;

@Controller
public class MailController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	private final MailService mailService;
	
	
	public MailController(MailService mailService) {
		this.mailService=mailService;
	}

//	@GetMapping(value="/common/mailList.go")
//	public String mailList(Model model) throws IOException{
//		List<MailDTO>mailList = mailService.receiveMails();
//		model.addAttribute("mailList",mailList);
//		return "common/mailList";
//	}
	
	@GetMapping(value="/common/mailWrite.go")
	public String mailWrite() {
		logger.info("메일작성 페이지 진입");
		return "common/mailWrite";
	}
	
	@PostMapping(value = "/common/mailWrite.do")
	public String sendMail(MailDTO mailDto, @RequestParam("files") MultipartFile[] files,HttpSession session) throws MessagingException {
		logger.info("mailDto : {}",mailDto.toString());
		logger.info("제목 : {}",mailDto.getTitle());
		logger.info("받는 사람 문자열 : {}",Arrays.stream(mailDto.getAddress())
                .collect(Collectors.joining(",")));
		int idx_employee = (int) session.getAttribute("idxEmployee");
		logger.info("idx_employee : {}",idx_employee);
		mailDto.setDb_address(Arrays.stream(mailDto.getAddress()).collect(Collectors.joining(",")));
		mailDto.setDb_ccAddress(Arrays.stream(mailDto.getCcAddress()).collect(Collectors.joining(",")));
	    mailService.sendMail(mailDto, files);
	    mailService.saveMail(mailDto,files,idx_employee);
	    return "redirect:/common/sendMailList.go";
	}
	
	@GetMapping(value="/common/sendMailList.go")
	public String sendMailList() {
		return "common/mailSendingList";
	}
	
	@PostMapping(value="/common/sendMailList.ajax")
	@ResponseBody
	public Map<String, Object>sendingMailList(String page, String cnt){
		logger.info("페이지 당 보여줄 갯수 : "+cnt);
		logger.info("요청 페이지 : " +page);
		
		int currentPage = Integer.parseInt(page);
		int pagePerCnt = Integer.parseInt(cnt);
		logger.info("sendingmaillist 진입 전");
		logger.info("currentPage : {}",currentPage);
		logger.info("pagePerCnt : {}",pagePerCnt);
		Map<String, Object>map = mailService.sendingMailList(currentPage,pagePerCnt);
		logger.info("map : {}",map);
		
		return map;
	}
	
//	@GetMapping(value="/common/sendMailDetail.go")
//	public String sendMailDetail(Integer idx_sending_email,Model model) {
//		logger.info("idx_sending_email : {}",idx_sending_email);
//		MailDTO mailDto = mailService.sendMailDetail(idx_sending_email);
//		logger.info("mailDto : {}",mailDto);
//		model.addAttribute("mailDto",mailDto);
//		return "common/mailSendingDetail";
//	}
	
	@GetMapping(value="/common/sendMailDetail.go")
	public ModelAndView sendMailDetail(Integer idx_sending_email) {
		ModelAndView mav= new ModelAndView();
		
		Map<String, Object>map=mailService.getSendMailDetail(idx_sending_email);
		logger.info("map : {}",map);
		if (map!=null) {
			mav.addObject("map",map);
			mav.setViewName("common/mailSendingDetail");
		}else {
			mav.setViewName("errorPage");
		}
		return mav;
	}
	
	@GetMapping(value="/download/{fileName}")
	public ResponseEntity<Resource>mailDownload(@PathVariable String fileName){
		logger.info("fileName : {}",fileName);
		return mailService.mailDownload(fileName);
	}
	
	
}

package ko.gagu.issue.social.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ko.gagu.issue.social.service.MessageService;

@Controller
public class MessageController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired MessageService messageService;
	
	 @GetMapping("/noteMessage2")
	    public String noteMessage2() {
	        return "noteMessage/noteMessage2";  // JSP 파일 경로를 반환 (확장자 없이)
	    }
	 
		/*
		 * @GetMapping("/getChatRooms")
		 * 
		 * @ResponseBody public List<ChatRoom> getChatRooms() { // 대화방 목록을 반환하는 로직을 구현
		 * return messageService.getAllChatRooms(); }
		 */
}

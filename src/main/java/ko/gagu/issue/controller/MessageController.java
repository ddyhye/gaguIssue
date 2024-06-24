package ko.gagu.issue.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import ko.gagu.issue.service.MessageService;

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
	 
	 	// 대화방 리스트 요청 ajax
		@RequestMapping(value = "/getChatRooms", method = RequestMethod.POST)
		@ResponseBody
		public Map<String, Object> roomListCallAjax(){
			logger.info("{}의 대화방 리스트 출력");
			int emp_id = 1;
			
			return messageService.roomListCallAjax(emp_id);
		
		}
		
		
		
		// 대화 내용 요청 ajax
		@RequestMapping(value = "/messageCall.ajax", method = RequestMethod.POST)
		@ResponseBody
		public Map<String, Object> messageCallAjax(int idx, String emp, String otherEmp){
			logger.info("{}번 게시물, {}가 요청", idx, emp);
			return messageService.messageCallAjax(idx, emp, otherEmp);
		}
		
		
		
		
		
		
		
		
}

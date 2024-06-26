package ko.gagu.issue.controller;

import java.util.HashMap;
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
import org.springframework.web.bind.annotation.RequestParam;
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
	 
		
	 
	 	// 대화방 리스트 요청 ajax
		@RequestMapping(value = "/getChatRooms", method = RequestMethod.POST)
		@ResponseBody
		public Map<String, Object> roomListCallAjax(@RequestParam(value="messageSearch", required = false) String messageSearch){
			logger.info("--------대화방 리스트 출력---------");
			logger.info("messageSearch :" + messageSearch);
			int emp_id = 1;
			
			return messageService.roomListCallAjax(emp_id, messageSearch);
		
		}
		
		
		
		// 대화 내용 요청 ajax
		@RequestMapping(value = "/messageCall.ajax", method = RequestMethod.POST)
		@ResponseBody
		public Map<String, Object> messageCallAjax(int idx, String emp, String otherEmp){
			logger.info("{}번 게시물, {}가 요청, other_emp: {}", idx, emp, otherEmp);
			return messageService.messageCallAjax(idx, emp, otherEmp);
		}
			
		
		// 쪽지 보내기 ajax
		@RequestMapping(value = "/messageSend.ajax", method = RequestMethod.POST)
		@ResponseBody
		public Map<String, Object> messageSendAjax(int idx, String emp_id, String other_emp, String content){
			logger.info("{}번 방, {}가 쪽지 전송", idx, emp_id);
			return messageService.messageSend(idx, emp_id, other_emp, content);
		}
		
		
		
		// 쪽지상대요청
		@RequestMapping(value = "/subjectCall.ajax", method = RequestMethod.POST)
		@ResponseBody
		public Map<String, Object> subjectCallAjax(int other_emp){
			logger.info("{}번 게시물, 제목 요청", other_emp);
			Map<String, Object> map = new HashMap<String, Object>();
			
			map = messageService.subjectCall(other_emp);			
			return map;
		}
		
		// 연락처 요청
		@RequestMapping(value = "/getContact.ajax", method = RequestMethod.POST)
		@ResponseBody
		public Map<String, Object> getContact(){
			logger.info("-------------연락처 요청-------------");
			Map<String, Object> map = new HashMap<String, Object>();
			int emp_id = 1;
			map = messageService.getContact(emp_id);			
			return map;
		}
		 
}

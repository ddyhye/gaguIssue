package ko.gagu.issue.controller;

import java.io.IOException;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

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
		public Map<String, Object> roomListCallAjax(@RequestParam(value="messageSearch", required = false, defaultValue = "") String messageSearch, String emp_id){
			logger.info("--------대화방 리스트 출력---------");
			logger.info("messageSearch :" + messageSearch);
			
			return messageService.roomListCallAjax(emp_id, messageSearch);
		
		}
		
		
		
		// 대화 내용 요청 ajax
		@RequestMapping(value = "/messageCall.ajax", method = RequestMethod.POST)
		@ResponseBody
		public Map<String, Object> messageCallAjax(int idx, String emp_id, int otherEmp){
			logger.info("{}번 게시물, {}가 요청, other_emp: {}", idx, emp_id, otherEmp);
			return messageService.messageCallAjax(idx, emp_id, otherEmp);
		}
			
		/*
		// 쪽지 보내기 ajax
		@RequestMapping(value = "/messageSend.ajax", method = RequestMethod.POST)
		@ResponseBody
		public Map<String, Object> messageSendAjax(int idx, String emp_id, int other_emp, String content){
			logger.info("{}번 방, {}가 쪽지 전송", idx, emp_id);
			return messageService.messageSend(idx, emp_id, other_emp, content);
		}
		 */
		
		// 쪽지 보내기 ajax
		@RequestMapping(value = "/messageSend.ajax", method = RequestMethod.POST)
		@ResponseBody
		public Map<String, Object> messageSendAjax(
				@RequestParam("idx") int idx,
			    @RequestParam("emp_id") String emp_id,
			    @RequestParam("other_emp") int other_emp,
			    @RequestParam("content") String content,
			    @RequestParam(value = "file-send", required = false) MultipartFile file){
			
			logger.info("{}번 방, {}가 쪽지 전송", idx, emp_id);
			logger.info("ㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣ사진 보내기ㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣ");
			logger.info("불러온 file : "+ file);
			/*
			// 파일 처리 로직 추가
		    if (file != null && !file.isEmpty()) {
		        // 파일 저장 로직을 여기에 추가
				String fileName = file.getOriginalFilename();
				// 예를 들어, 파일을 특정 경로에 저장하는 로직
				// file.transferTo(new File("/path/to/save/" + fileName));
				logger.info("파일 이름: {}", fileName);
		    } else {
		        logger.info("파일 없음");
		    }
			  */
			return messageService.messageSend(idx, emp_id, other_emp, content, file);
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
		public Map<String, Object> getContact(@RequestParam(value="contactSearch", required = false, defaultValue = "") String contactSearch, String emp_id){
			logger.info("-------------연락처 요청-------------");
			Map<String, Object> map = new HashMap<String, Object>();
			
		    map = messageService.getContact(emp_id, contactSearch);		
			return map;
		}
		 
		// 채팅 직원상세 모달
		@RequestMapping(value = "/getempDetail", method = RequestMethod.POST)
		@ResponseBody
		public Map<String, Object> getempDetail(int idx_emp){
			logger.info("-------------회원 상세 요청-------------");
			logger.info("회원 인덱스 : "+idx_emp);
			Map<String, Object> map = messageService.getempDetail(idx_emp);
			logger.info("map : "+ map);
			
			return map;
		}
		
		
		
		// 쪽지 보내기 ajax
		@RequestMapping(value = "/sendAndCreate.ajax", method = RequestMethod.POST)
		@ResponseBody
		public Map<String, Object> sendAndCreate(String emp_id, int other_emp, String content){
			logger.info("---------- 방생성 및 쪽지 보내기 ---------");
			logger.info("emp_id: {}, ohter_emp : {}, content: {}" , emp_id, other_emp, content);
			return messageService.sendAndCreate(emp_id, other_emp, content);
		}
		
		// 쪽지 삭제하기 ajax
		@RequestMapping(value = "/msgDelete.ajax", method = RequestMethod.POST)
		@ResponseBody
		public int msgDelete(int msg_idx){
			logger.info("---------- 쪽지 삭제 요청 ---------");
			logger.info("삭제할 MSG_IDX: "+ msg_idx);
			int cnt = messageService.msgDelete(msg_idx);
			return cnt;
		}
				
		
		
}

package ko.gagu.issue.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ko.gagu.issue.dao.MessageDAO;
import ko.gagu.issue.dto.MessageDTO;

@Service
public class MessageService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired MessageDAO messageDAO;
	
	public Map<String, Object> roomListCallAjax(int emp_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		logger.info("emp_id : " + emp_id);
		List<MessageDTO> roomList = messageDAO.roomList(emp_id);
		
		for (int i = 0; i < roomList.size(); i++) {
			MessageDTO messageDTO = roomList.get(i);
			
			 logger.info("other_emp : {}, reg_date : {}", messageDTO.getOther_emp(), messageDTO.getReg_date());
			 logger.info("msg_cnt : {}", messageDTO.getMsg_count());
			
			// 메시지가 없으면 리스트에서 뺴기
		  	if(messageDTO.getMsg_count() != 0) {
		  		MessageDTO lastContent = messageDAO.lastContent(messageDTO.getIdx_messageroom(), messageDTO.getOther_emp(), emp_id);
		  		String content = lastContent.getContent();
		  		Timestamp send_time = lastContent.getSend_datetime();
//		  		String new_picname = lastContent.getNew_picname();
		  		
		  		messageDTO.setContent(content);
		  		messageDTO.setReg_date(send_time);
//		  		messageDTO.setNew_picname(new_picname);		  		
		  	} else {				
		  		roomList.remove(i);
		  		i = i - 1;
			}
			 
		}
		
		map.put("roomList", roomList);
		
		return map;
	}

	public Map<String, Object> messageCallAjax(int idx, String emp, String otherEmp) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<Integer> messageIdxs = new ArrayList<Integer>();
		List<MessageDTO> messageList = messageDAO.messageList(idx, emp, otherEmp); // [min] 쪽지 내역 가져오기
		// messageDAO.messageRead(idx, emp, otherEmp);
		
		/*
		for (int i = 0; i < messageList.size(); i++) {
		 MessageDTO dto = messageList.get(i);
		  	// 삭제된 값 안 가져오기
		  	if(dto.getR().equals(email) && dto.getReceive_del().equals("Y")) {
		  		messageList.remove(i);
		  		i = i - 1;
		  	} else if (dto.getSender_email().equals(email) && dto.getSender_del().equals("Y")) {
		  		messageList.remove(i);
		  		i = i - 1;
			}
		}
		 */
		for (MessageDTO messageDTO : messageList) {
			messageIdxs.add(messageDTO.getIdx_messageroom());
			// logger.info("idx : {}, content : {}", messageDTO.getIdx(), messageDTO.getContent());
		}
		
		map.put("messageList", messageList);
		map.put("msgIdxs", messageIdxs);
		
		return map;
	}
	
	
}

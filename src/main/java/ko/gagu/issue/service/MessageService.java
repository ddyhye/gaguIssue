package ko.gagu.issue.service;

import java.sql.Timestamp;
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
		List<MessageDTO> roomList = messageDAO.roomList(emp_id);
		
		for (int i = 0; i < roomList.size(); i++) {
			MessageDTO messageDTO = roomList.get(i);
			
			 logger.info("other_emp : {}, reg_date : {}", messageDTO.getOther_emp(), messageDTO.getReg_date());
			 logger.info("msg_cnt : {}", messageDTO.getMsg_count());
			
			// 메시지가 없으면 리스트에서 뺴기
		  	if(messageDTO.getMsg_count() != 0) {
		  		MessageDTO lastContent = messageDAO.lastContent(messageDTO.getIdx_messageroom(), messageDTO.getSender(), emp_id);
		  		String content = lastContent.getContent();
		  		Timestamp reg_date = lastContent.getReg_date();
		  		String new_picname = lastContent.getNew_picname();
		  		
		  		messageDTO.setContent(content);
		  		messageDTO.setReg_date(reg_date);
		  		messageDTO.setNew_picname(new_picname);		  		
		  	} else {				
		  		roomList.remove(i);
		  		i = i - 1;
			}
		}
		
		map.put("roomList", roomList);
		
		return map;
	}
	
	
}

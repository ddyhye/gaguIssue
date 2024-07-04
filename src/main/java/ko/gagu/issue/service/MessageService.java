package ko.gagu.issue.service;

import java.io.IOException;
import java.math.BigInteger;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import ko.gagu.issue.dao.EmployeeDAO;
import ko.gagu.issue.dao.MessageDAO;
import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.MessageDTO;

@Service
public class MessageService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired MessageDAO messageDAO;
	@Autowired EmployeeDAO employeeDAO;
	
	public String upload_root="C:/upload/";
	
	@Value("${spring.servlet.multipart.location}")
    private String sendFile;
	
	public Map<String, Object> roomListCallAjax(String emp_id, String messageSearch) {
		Map<String, Object> map = new HashMap<String, Object>();
		logger.info("emp_id : " + emp_id);
		
		int idx_emp = employeeDAO.getEmpIdx(emp_id);
		logger.info("emp_id -> idx_emp: " + idx_emp);
		
		List<MessageDTO> roomList = messageDAO.roomList(idx_emp, messageSearch);
		
		for (int i = 0; i < roomList.size(); i++) {
			MessageDTO messageDTO = roomList.get(i);
			
			 logger.info("other_emp : {}, reg_date : {}", messageDTO.getOther_emp(), messageDTO.getReg_date());
			 logger.info("msg_cnt : {}", messageDTO.getMsg_count());
			
			// 메시지가 없으면 리스트에서 뺴기
		  	if(messageDTO.getMsg_count() != 0) {
		  		MessageDTO lastContent = messageDAO.lastContent(messageDTO.getIdx_messageroom(), messageDTO.getOther_emp(), idx_emp);
		  		String content = lastContent.getMsg_content();
		  		Timestamp send_time = lastContent.getSend_datetime();
		  		String new_picname = lastContent.getFile_name();
		  		logger.info("new_picname: " + new_picname);
		  		
		  		messageDTO.setMsg_content(content);
		  		messageDTO.setReg_date(send_time);
		  		messageDTO.setFile_name(new_picname); 		
		  	} else {				
		  		roomList.remove(i);
		  		i = i - 1;
			}
			 
		}
		
		map.put("roomList", roomList);
		map.put("messageSearch", messageSearch);
		logger.info("map : "+ map);
		return map;
	}

	public Map<String, Object> messageCallAjax(int idx, String emp_id, int otherEmp) {
		Map<String, Object> map = new HashMap<String, Object>();
		logger.info("map : " + map); 
		
		int idx_emp = employeeDAO.getEmpIdx(emp_id);
		
		
		List<Integer> messageIdxs = new ArrayList<Integer>();
		List<MessageDTO> messageList = messageDAO.messageList(idx, idx_emp, otherEmp); // [min] 쪽지 내역 가져오기
		messageDAO.messageRead(idx, idx_emp, otherEmp);
		
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
		map.put("idx_emp", idx_emp);
		logger.info("map : " + map);
		
		return map;
	}

	public Map<String, Object> messageSend(int idx, String emp_id, int other_emp, String content, MultipartFile file) {
		boolean result = false;
		Map<String, Object> map = new HashMap<String, Object>();
		
		
		int idx_emp = employeeDAO.getEmpIdx(emp_id);
		logger.info("emp_id -> idx_emp: " + idx_emp);

		if (file != null && !file.isEmpty()) {
	        // 파일이 있는 경우 처리
	        try {
	        	sendMessageImage(file, idx_emp);
	            // 파일 저장 후 메시지 전송
	            int row2 = messageDAO.sendMessageWithFile(file.getOriginalFilename(), idx_emp, other_emp, idx);
	            if (row2 == 1) {
	                result = true;
	            }
	        } catch (Exception e) {
	            logger.error("파일 저장 중 오류 발생: " + e.getMessage());
	        }
	    } else {
	        // 파일이 없는 경우 바로 메시지 전송
	        int row1 = messageDAO.sendMessage(content, idx_emp, other_emp, idx);
	        if (row1 == 1) {
	            result = true;
	        }
	    }
		
		
		map.put("result", "보낸 결과"+result);
		
		
		return map;
	}
	
	
	public String sendMessageImage(MultipartFile file, int idx_emp) throws Exception {
        // 파일 이름 생성
        String fileName = UUID.randomUUID().toString() + "_" + file.getOriginalFilename();
        
		Path filePath = Paths.get(sendFile+"/message_picture", fileName);
		

        // 파일 저장
        Files.createDirectories(filePath.getParent());
        Files.copy(file.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

        // 파일의 URL 생성
        String imageUrl = "/images/profile/" + fileName;

        // 데이터베이스에 파일 경로 저장 (DAO 호출)
        messageDAO.saveProfileImagePath(file.getOriginalFilename(), fileName, idx_emp);

        return imageUrl;
    }
	
	
	
	
	
	

	public Map<String, Object> subjectCall(int other_emp) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		List<MessageDTO> subjectCall = messageDAO.subjectCall(other_emp); // [min] 쪽지 내역 가져오기
		
		map.put("subjectCall", subjectCall);
		return map;
	}

	public Map<String, Object> getContact(String emp_id, String contactSearch) {
		Map<String, Object> map = new HashMap<String, Object>();
		logger.info("emp_id : " + emp_id);
		
		int idx_emp = employeeDAO.getEmpIdx(emp_id);
		logger.info("emp_id -> idx_emp: " + idx_emp);
		
		List<EmployeeDTO> ContactList = employeeDAO.getContact(idx_emp, contactSearch);
		
		map.put("ContackList", ContactList);
		return map;
	}

	public Map<String, Object> getempDetail(int idx_emp) {
		
		return employeeDAO.getempDetail(idx_emp);
	}

	
	
	public Map<String, Object> sendAndCreate(String emp_id, int other_emp, String content) {
		boolean result = false;
		Map<String, Object> map = new HashMap<String, Object>();
		
		int idx_emp = employeeDAO.getEmpIdx(emp_id);
		logger.info("emp_id -> idx_emp: " + idx_emp);
		
		int room_idx = messageDAO.roomExist(idx_emp, other_emp);
		logger.info("room_idx : " + room_idx);
		if(room_idx > 0) {
			int row = messageDAO.sendMessage(content, idx_emp, other_emp, room_idx);
			if(row == 1) {
				result = true;
			} 
			
			map.put("room_idx", room_idx);
			map.put("result", "보낸 결과"+result);
			logger.info("map : " + map);
		}else{
			map.put("param1", idx_emp);
			map.put("param2", other_emp);
			
			messageDAO.roomCreate(map);
			
			//int new_room_idx = (Integer)map.get("insert_id");
			int new_room_idx = ((BigInteger) map.get("insert_id")).intValue();
			 map.put("room_idx", new_room_idx);
			 logger.info("map : " + map);
			 if (new_room_idx > 0) {
		            int row = messageDAO.sendMessage(content, idx_emp, other_emp, new_room_idx);
		            if(row == 1) {
		                result = true;
		            } 
		            map.put("result", "방 생성 및 메시지 보낸 결과: " + result);
		       } 
		}
		
		
		
		
		return map;
	}

	public int msgDelete(int msg_idx) {
		
		int cnt = messageDAO.msgDelete(msg_idx);
		return cnt;
	}

	
	
}

package ko.gagu.issue.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import ko.gagu.issue.dto.MessageDTO;

@Mapper
public interface MessageDAO {

	List<MessageDTO> roomList(int idx_emp, String messageSearch);

	MessageDTO lastContent(int idx_messageroom, int other_idx, int idx_emp);

	List<MessageDTO> messageList(int idx, int idx_emp, int otherEmp);

	void messageRead(int idx, int idx_emp, int otherEmp);

	int sendMessage(String content, int idx_emp, int other_emp, int idx);

	List<MessageDTO> subjectCall(int other_emp);

	int roomExist(int idx_emp, int other_emp);

	int roomCreate(int idx_emp,int other_emp);

	void roomCreate(Map<String, Object> map);

	int msgDelete(int msg_idx);

	
}

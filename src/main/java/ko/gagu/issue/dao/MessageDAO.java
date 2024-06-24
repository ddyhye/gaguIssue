package ko.gagu.issue.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.MessageDTO;

@Mapper
public interface MessageDAO {

	List<MessageDTO> roomList(int emp_id);

	MessageDTO lastContent(int idx_messageroom, int sender, int emp_id);

	List<MessageDTO> messageList(int idx, String emp, String otherEmp);

	// void messageRead(int idx, String emp, String otherEmp);

}

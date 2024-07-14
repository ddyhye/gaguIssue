package ko.gagu.issue.dao;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.MailDTO;

@Mapper
public interface MailDAO {

	void saveSendingMail(MailDTO mailDto, int idx_employee);

	void saveAttachment(int idx_sending_email, String fileName,Timestamp upload_datetime);

	int saveMail(MailDTO mailDto);

	void saveAttachmentFile(int i, int idx_sending_email, String originalFileName, String newFileName);

	List<MailDTO> sendingMailList(int start, int pagePerCnt);

	Object sendingMailListCountPage(int pagePerCnt);

	MailDTO sendMailDetail(Integer idx_sending_email);

	MailDTO getSendMailDetail(Integer idx_sending_email);

	List <MailDTO> getFileById(Integer idx_sending_email);


}

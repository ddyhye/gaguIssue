package ko.gagu.issue.dao;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.MailDTO;

@Mapper
public interface MailDAO {

	void saveSendingMail(MailDTO mailDto, int idx_employee);

	void saveAttachment(int idx_sending_email, String fileName,Timestamp upload_datetime);

	int saveMail(MailDTO mailDto);

	void saveAttachmentFile(int i, int idx_sending_email, String originalFilename, String string);

	List<MailDTO> sendingMailList(int start, int pagePerCnt, int idx_sending_email);

	Object sendingMailListCountPage(int pagePerCnt, int idx_sending_email);

}

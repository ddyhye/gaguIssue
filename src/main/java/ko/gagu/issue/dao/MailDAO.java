package ko.gagu.issue.dao;

import java.sql.Timestamp;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.MailDTO;

@Mapper
public interface MailDAO {

	void saveSendingMail(MailDTO mailDto, int idx_employee);

	void saveAttachment(int idx_sending_email, String fileName,Timestamp upload_datetime);

	void saveMail(MailDTO mailDto, int idx_employee);

}

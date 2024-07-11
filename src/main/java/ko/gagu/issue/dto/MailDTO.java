package ko.gagu.issue.dto;

import java.sql.Timestamp;
import java.util.Arrays;
import java.util.List;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias(value="mail")
public class MailDTO {
	private int idx_sending_email;
	private int idx_employee;
	private String se_employee_name;
	private String from;
	private String[] address;
	private String[] ccAddress;
	private String db_address;
	private String db_ccAddress;
    private String title;
    private String content;
    private Timestamp upload_datetime;
    private List<MultipartFile> multipartFiles;
	public String[] getAddress() {
		return address;
	}
	public void setAddress(String[] address) {
		this.address = address;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public List<MultipartFile> getMultipartFiles() {
		return multipartFiles;
	}
	public void setMultipartFiles(List<MultipartFile> multipartFiles) {
		this.multipartFiles = multipartFiles;
	}
	public String[] getCcAddress() {
		return ccAddress;
	}
	public void setCcAddress(String[] ccAddress) {
		this.ccAddress = ccAddress;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public Timestamp getUpload_datetime() {
		return upload_datetime;
	}
	public void setUpload_datetime(Timestamp upload_datetime) {
		this.upload_datetime = upload_datetime;
	}
	public String getDb_address() {
		return db_address;
	}
	public void setDb_address(String db_address) {
		this.db_address = db_address;
	}
	public String getDb_ccAddress() {
		return db_ccAddress;
	}
	public void setDb_ccAddress(String db_ccAddress) {
		this.db_ccAddress = db_ccAddress;
	}
	@Override
	public String toString() {
		return "MailDTO [from=" + from + ", address=" + Arrays.toString(address) + ", ccAddress="
				+ Arrays.toString(ccAddress) + ", title=" + title + ", content=" + content + ", upload_datetime="
				+ upload_datetime + ", multipartFiles=" + multipartFiles + "]";
	}
	public int getIdx_sending_email() {
		return idx_sending_email;
	}
	public void setIdx_sending_email(int idx_sending_email) {
		this.idx_sending_email = idx_sending_email;
	}
	public int getIdx_employee() {
		return idx_employee;
	}
	public void setIdx_employee(int idx_employee) {
		this.idx_employee = idx_employee;
	}
	public String getSe_employee_name() {
		return se_employee_name;
	}
	public void setSe_employee_name(String se_employee_name) {
		this.se_employee_name = se_employee_name;
	}
	
}

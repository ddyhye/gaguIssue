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
	private String emp_name;
	private String from;
	private String[] address;
	private String[] ccAddress;
	private String db_address;
	private String db_ccAddress;
    private String title;
    private String content;
    private Timestamp upload_datetime;
    private List<MultipartFile> multipartFiles;
    private String originalFileName;
    private String newFileName;
    private int idx_filetype;
    private int idx_file;
    private String file_name;
    
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
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public String getNewFileName() {
		return newFileName;
	}
	public void setNewFileName(String newFileName) {
		this.newFileName = newFileName;
	}
	public int getIdx_file() {
		return idx_file;
	}
	public void setIdx_file(int idx_file) {
		this.idx_file = idx_file;
	}
	public int getIdx_filetype() {
		return idx_filetype;
	}
	public void setIdx_filetype(int idx_filetype) {
		this.idx_filetype = idx_filetype;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	
}

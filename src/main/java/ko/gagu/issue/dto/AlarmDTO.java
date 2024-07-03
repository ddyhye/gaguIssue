package ko.gagu.issue.dto;

import java.time.LocalDateTime;

import org.apache.ibatis.type.Alias;

@Alias(value="alarm")
public class AlarmDTO {
	private int idx_alarm;
	private int idx_employee;
	private String al_content;
	private String al_path;
	private int is_checked;
	private LocalDateTime create_datetime;
	public int getIdx_alarm() {
		return idx_alarm;
	}
	public int getIdx_employee() {
		return idx_employee;
	}
	public String getAl_content() {
		return al_content;
	}
	public String getAl_path() {
		return al_path;
	}
	public int getIs_checked() {
		return is_checked;
	}
	public LocalDateTime getCreate_datetime() {
		return create_datetime;
	}
	public void setIdx_alarm(int idx_alarm) {
		this.idx_alarm = idx_alarm;
	}
	public void setIdx_employee(int idx_employee) {
		this.idx_employee = idx_employee;
	}
	public void setAl_content(String al_content) {
		this.al_content = al_content;
	}
	public void setAl_path(String al_path) {
		this.al_path = al_path;
	}
	public void setIs_checked(int is_checked) {
		this.is_checked = is_checked;
	}
	public void setCreate_datetime(LocalDateTime create_datetime) {
		this.create_datetime = create_datetime;
	}
	
	
}

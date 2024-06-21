package ko.gagu.issue.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias(value="attendance_history")
public class Attendance_history_tbDTO {
	
	private int idx_attendance;
	private int idx_employee;
	private Date ah_date;
	private String ah_check_in;
	private String ah_check_out;
	private String ah_status;
	
	
	public int getIdx_attendance() {
		return idx_attendance;
	}
	public int getIdx_employee() {
		return idx_employee;
	}
	public Date getAh_date() {
		return ah_date;
	}
	public String getAh_check_in() {
		return ah_check_in;
	}
	public String getAh_check_out() {
		return ah_check_out;
	}
	public String getAh_status() {
		return ah_status;
	}
	public void setIdx_attendance(int idx_attendance) {
		this.idx_attendance = idx_attendance;
	}
	public void setIdx_employee(int idx_employee) {
		this.idx_employee = idx_employee;
	}
	public void setAh_date(Date ah_date) {
		this.ah_date = ah_date;
	}
	public void setAh_check_in(String ah_check_in) {
		this.ah_check_in = ah_check_in;
	}
	public void setAh_check_out(String ah_check_out) {
		this.ah_check_out = ah_check_out;
	}
	public void setAh_status(String ah_status) {
		this.ah_status = ah_status;
	}
}

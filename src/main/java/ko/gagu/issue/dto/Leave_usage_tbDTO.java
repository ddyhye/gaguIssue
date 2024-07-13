package ko.gagu.issue.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias(value="leave_usage")
public class Leave_usage_tbDTO {

	private int idx_employee;
	private Date lu_start_date;
	private Date lu_end_date;
	private int lu_usage_days;
	
	
	public int getIdx_employee() {
		return idx_employee;
	}
	public Date getLu_start_date() {
		return lu_start_date;
	}
	public Date getLu_end_date() {
		return lu_end_date;
	}
	public int getLu_usage_days() {
		return lu_usage_days;
	}
	public void setIdx_employee(int idx_employee) {
		this.idx_employee = idx_employee;
	}
	public void setLu_start_date(Date lu_start_date) {
		this.lu_start_date = lu_start_date;
	}
	public void setLu_end_date(Date lu_end_date) {
		this.lu_end_date = lu_end_date;
	}
	public void setLu_usage_days(int lu_usage_days) {
		this.lu_usage_days = lu_usage_days;
	}
	
	
	private String file_name;


	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	
	
}

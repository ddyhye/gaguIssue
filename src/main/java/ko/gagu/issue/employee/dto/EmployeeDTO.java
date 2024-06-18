package ko.gagu.issue.employee.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

@Alias(value="employee")
public class EmployeeDTO {
	private int idx_emp_calendar;
	private int idx_employee;
	private String ec_title;
	private String ec_description;
	private Timestamp ec_start_datetime;
	private Timestamp ec_end_datetime;
	private String ec_color;
	private int idx_company_calendar;
	private String cc_title;
	private String cc_description;
	private String cc_start_datetime;
	private String cc_end_datetime;
	private String cc_color;
	
	
	public int getIdx_emp_calendar() {
		return idx_emp_calendar;
	}
	public void setIdx_emp_calendar(int idx_emp_calendar) {
		this.idx_emp_calendar = idx_emp_calendar;
	}
	public int getIdx_employee() {
		return idx_employee;
	}
	public void setIdx_employee(int idx_employee) {
		this.idx_employee = idx_employee;
	}
	public String getEc_title() {
		return ec_title;
	}
	public void setEc_title(String ec_title) {
		this.ec_title = ec_title;
	}
	public String getEc_description() {
		return ec_description;
	}
	public void setEc_description(String ec_description) {
		this.ec_description = ec_description;
	}
	public Timestamp getEc_start_datetime() {
		return ec_start_datetime;
	}
	public void setEc_start_datetime(Timestamp ec_start_datetime) {
		this.ec_start_datetime = ec_start_datetime;
	}
	public Timestamp getEc_end_datetime() {
		return ec_end_datetime;
	}
	public void setEc_end_datetime(Timestamp ec_end_datetime) {
		this.ec_end_datetime = ec_end_datetime;
	}
	public String getEc_color() {
		return ec_color;
	}
	public void setEc_color(String ec_color) {
		this.ec_color = ec_color;
	}
	public int getIdx_company_calendar() {
		return idx_company_calendar;
	}
	public void setIdx_company_calendar(int idx_company_calendar) {
		this.idx_company_calendar = idx_company_calendar;
	}
	public String getCc_title() {
		return cc_title;
	}
	public void setCc_title(String cc_title) {
		this.cc_title = cc_title;
	}
	public String getCc_description() {
		return cc_description;
	}
	public void setCc_description(String cc_description) {
		this.cc_description = cc_description;
	}
	public String getCc_start_datetime() {
		return cc_start_datetime;
	}
	public void setCc_start_datetime(String cc_start_datetime) {
		this.cc_start_datetime = cc_start_datetime;
	}
	public String getCc_end_datetime() {
		return cc_end_datetime;
	}
	public void setCc_end_datetime(String cc_end_datetime) {
		this.cc_end_datetime = cc_end_datetime;
	}
	public String getCc_color() {
		return cc_color;
	}
	public void setCc_color(String cc_color) {
		this.cc_color = cc_color;
	}
}

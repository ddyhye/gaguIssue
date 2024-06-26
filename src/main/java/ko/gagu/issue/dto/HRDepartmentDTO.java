package ko.gagu.issue.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

@Alias(value="HRDept")
public class HRDepartmentDTO {
	private int idx_company_calendar;
	private String cc_title;
	private String cc_description;
	private Timestamp cc_start_datetime;
	private Timestamp cc_end_datetime;
	private String cc_color;
	private String cc_status;
	
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
	public Timestamp getCc_start_datetime() {
		return cc_start_datetime;
	}
	public void setCc_start_datetime(Timestamp cc_start_datetime) {
		this.cc_start_datetime = cc_start_datetime;
	}
	public Timestamp getCc_end_datetime() {
		return cc_end_datetime;
	}
	public void setCc_end_datetime(Timestamp cc_end_datetime) {
		this.cc_end_datetime = cc_end_datetime;
	}
	public String getCc_color() {
		return cc_color;
	}
	public void setCc_color(String cc_color) {
		this.cc_color = cc_color;
	}
	public String getCc_status() {
		return cc_status;
	}
	public void setCc_status(String cc_status) {
		this.cc_status = cc_status;
	}
	public String getCc_description() {
		return cc_description;
	}
	public void setCc_description(String cc_description) {
		this.cc_description = cc_description;
	}
	

}

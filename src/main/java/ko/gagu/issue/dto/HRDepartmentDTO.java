package ko.gagu.issue.dto;

import java.sql.Date;
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
	private int idx_employee;
	private int idx_department;
	private int idx_title;
	private String emp_id;
	private String emp_pw;
	private String emp_name;
	private String emp_status;
	private String emp_email;
	private String emp_email_pw;
	private String emp_phone_number;
	private Date emp_birth_date;
	private Timestamp emp_hire_date;
	private Timestamp emp_term_date;
	private String emp_address;
	private boolean first_login;
	private String de_char;
	private String de_name;
	
	
	
	
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
	public int getIdx_employee() {
		return idx_employee;
	}
	public void setIdx_employee(int idx_employee) {
		this.idx_employee = idx_employee;
	}
	public int getIdx_department() {
		return idx_department;
	}
	public void setIdx_department(int idx_department) {
		this.idx_department = idx_department;
	}
	public int getIdx_title() {
		return idx_title;
	}
	public void setIdx_title(int idx_title) {
		this.idx_title = idx_title;
	}
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	public String getEmp_pw() {
		return emp_pw;
	}
	public void setEmp_pw(String emp_pw) {
		this.emp_pw = emp_pw;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getEmp_status() {
		return emp_status;
	}
	public void setEmp_status(String emp_status) {
		this.emp_status = emp_status;
	}
	public String getEmp_email() {
		return emp_email;
	}
	public void setEmp_email(String emp_email) {
		this.emp_email = emp_email;
	}
	public String getEmp_email_pw() {
		return emp_email_pw;
	}
	public void setEmp_email_pw(String emp_email_pw) {
		this.emp_email_pw = emp_email_pw;
	}
	public String getEmp_phone_number() {
		return emp_phone_number;
	}
	public void setEmp_phone_number(String emp_phone_number) {
		this.emp_phone_number = emp_phone_number;
	}
	public Date getEmp_birth_date() {
		return emp_birth_date;
	}
	public void setEmp_birth_date(Date emp_birth_date) {
		this.emp_birth_date = emp_birth_date;
	}
	public Timestamp getEmp_hire_date() {
		return emp_hire_date;
	}
	public void setEmp_hire_date(Timestamp emp_hire_date) {
		this.emp_hire_date = emp_hire_date;
	}
	public Timestamp getEmp_term_date() {
		return emp_term_date;
	}
	public void setEmp_term_date(Timestamp emp_term_date) {
		this.emp_term_date = emp_term_date;
	}
	public String getEmp_address() {
		return emp_address;
	}
	public void setEmp_address(String emp_address) {
		this.emp_address = emp_address;
	}
	public boolean isFirst_login() {
		return first_login;
	}
	public void setFirst_login(boolean first_login) {
		this.first_login = first_login;
	}
	public String getDe_char() {
		return de_char;
	}
	public void setDe_char(String de_char) {
		this.de_char = de_char;
	}
	public String getDe_name() {
		return de_name;
	}
	public void setDe_name(String de_name) {
		this.de_name = de_name;
	}

	

}

package ko.gagu.issue.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias(value="leave_accruals")
public class Leave_accruals_tbDTO {
	
	// 직원 연차 정보 테이블
	
	private int idx_employee;
	private int leave_days;
	private int usage_days;
	private Date accrual_date;
	
	
	public int getIdx_employee() {
		return idx_employee;
	}
	public int getLeave_days() {
		return leave_days;
	}
	public int getUsage_days() {
		return usage_days;
	}
	public Date getAccrual_date() {
		return accrual_date;
	}
	public void setIdx_employee(int idx_employee) {
		this.idx_employee = idx_employee;
	}
	public void setLeave_days(int leave_days) {
		this.leave_days = leave_days;
	}
	public void setUsage_days(int usage_days) {
		this.usage_days = usage_days;
	}
	public void setAccrual_date(Date accrual_date) {
		this.accrual_date = accrual_date;
	}
}

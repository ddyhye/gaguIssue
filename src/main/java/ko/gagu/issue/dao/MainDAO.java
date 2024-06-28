package ko.gagu.issue.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.Attendance_history_tbDTO;
import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.Leave_accruals_tbDTO;
import ko.gagu.issue.dto.Leave_usage_tbDTO;
import ko.gagu.issue.dto.product_tbDTO;

@Mapper
public interface MainDAO {

	EmployeeDTO getEmpData(String empID);

	Attendance_history_tbDTO getTodayCheck(int idx_employee);

	int gotoWorkTimeCheck(int idx_employee, String gotoWorkTime);

	int finishWorkTimeCheck(int idx_employee, String finishWorkTime);

	Attendance_history_tbDTO getAttData(int idx_employee);

	void updateTodayCheck1(int i);

	void updateTodayCheck2(int idx_employee);

	void updateTodayCheck3(int idx_employee);

	void updateTodayCheck4(int idx_employee);

	Integer getAnnualLeave(int idx_employee);

	Leave_accruals_tbDTO getempLeaveData(int idx_employee);

	List<Leave_usage_tbDTO> getempLeaveHistory(int idx_employee);

	
	
	
	
	List<String> getProductList();

	List<product_tbDTO> getProducts();

	void updateBarcode(int i);

}

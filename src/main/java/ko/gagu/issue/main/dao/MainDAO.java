package ko.gagu.issue.main.dao;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.employee.dto.Attendance_history_tbDTO;
import ko.gagu.issue.employee.dto.EmployeeDTO;

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

}

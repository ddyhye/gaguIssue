package ko.gagu.issue.main.dao;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.employee.dto.Attendance_history_tbDTO;
import ko.gagu.issue.employee.dto.EmployeeDTO;

@Mapper
public interface MainDAO {

	EmployeeDTO getEmpData(String empID);

	Attendance_history_tbDTO getTodayCheck(int idx_employee);

}

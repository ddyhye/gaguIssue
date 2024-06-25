package ko.gagu.issue.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.EmployeeDTO;

@Mapper
public interface EmployeeDAO {


	List<EmployeeDTO> employeeGetAllEvents(Integer idx_employee);
	
	void employeeAddEvent(EmployeeDTO employee);

	String login(String emp_id);

	int join(Map<String, String> param);

	String findEmployeeNumber(String emp_name, String birthDate);


	String findPW(String emp_id, String emp_name, String birthDate);

	void employeeDeleteEvent(Integer idx_emp_calendar,Integer idx_employee);

	void employeeUpdateEvent(Integer idx_emp_calendar, Integer idx_employee, String ec_title, String ec_start_datetime,
			String ec_end_datetime, String ec_description, String ec_color);


}

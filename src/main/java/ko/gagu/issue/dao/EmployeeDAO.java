package ko.gagu.issue.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.EmployeeDTO;

@Mapper
public interface EmployeeDAO {


	List<EmployeeDTO> employeeGetAllEvents();
	
	void employeeAddEvent(EmployeeDTO employee);

	String login(String emp_id);

	int join(Map<String, String> param);

	String findEmployeeNumber(String emp_name, String birthDate);


	String findPW(String emp_id, String emp_name, String birthDate);

}

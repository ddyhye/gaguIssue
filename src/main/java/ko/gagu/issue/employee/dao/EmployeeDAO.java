package ko.gagu.issue.employee.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EmployeeDAO {

	String login(String emp_id);

	int join(Map<String, String> param);

	String findEmployeeNumber(String emp_name, String birthDate);

}

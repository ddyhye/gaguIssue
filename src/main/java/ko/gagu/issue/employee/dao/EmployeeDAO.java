package ko.gagu.issue.employee.dao;

<<<<<<< HEAD
import java.util.List;
=======
import java.util.Map;
>>>>>>> 5f3cc565ca22253d518d9b192727834cdc44b5b2

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.employee.dto.EmployeeDTO;

@Mapper
public interface EmployeeDAO {

<<<<<<< HEAD
	List<EmployeeDTO> getCalendarEvents();
=======
	String login(String emp_id);

	int join(Map<String, String> param);

	String findEmployeeNumber(String emp_name, String birthDate);
>>>>>>> 5f3cc565ca22253d518d9b192727834cdc44b5b2

}

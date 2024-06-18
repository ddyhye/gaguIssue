package ko.gagu.issue.employee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.employee.dto.EmployeeDTO;

@Mapper
public interface EmployeeDAO {

	List<EmployeeDTO> getCalendarEvents();

}

package ko.gagu.issue.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.HRDepartmentDTO;
import ko.gagu.issue.dto.PagingDTO;
import ko.gagu.issue.dto.SalesDataDTO;

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

	List<EmployeeDTO> getContact(int idx_emp, String contactSearch);

	List<HRDepartmentDTO> getAllCompanyEvents();

	EmployeeDTO employeeData(String emp_id);
	
	Map<String, Object> getempDetail(int idx_emp);

	int getEmpIdx(String emp_id);

	List<EmployeeDTO> getEmployeeAttendance(Integer idx_employee);

	int isAdmin(int idx_employee);

	List<SalesDataDTO> getSalesHistory(PagingDTO pagingDTO);

	int getSalesHistoryTotalPages(PagingDTO pagingDTO);

}

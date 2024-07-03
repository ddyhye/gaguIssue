package ko.gagu.issue.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.HRDepartmentDTO;

@Mapper
public interface HRDepartmentDAO {

	List<HRDepartmentDTO> getAllCompanyEvents();

	void companyAddEvent(HRDepartmentDTO company);

	void updateCompanyEvent(Integer idx_company_calendar, String cc_title, String cc_start_datetime,
			String cc_end_datetime, String cc_description, String cc_color);

	void deleteCompanyEvent(Integer idx_company_calendar);

	List<HRDepartmentDTO> getAllEmployees();


	void createEmployee(HRDepartmentDTO hRDepartment);

	void insertLeaveAccruals(HRDepartmentDTO hRDepartment);

	void saveProfileImagePath(String oriFileName, String newFileName, int idx_employee);

	String getnewIdx();

	HRDepartmentDTO getEmployeeById(String emp_id);

	

}

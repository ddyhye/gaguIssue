package ko.gagu.issue.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.HRDepartmentDTO;
import ko.gagu.issue.dto.Leave_usage_tbDTO;

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

	int isEmpty(String emp_id);

	HRDepartmentDTO getAnnualLeaveInfoById(String emp_id);

	List<EmployeeDTO> departmentAttendanceList(String formattedDate, int start, int pagePerCnt, String department);

	Object allCountPage(String department, String formattedDate, int pagePerCnt);

	List<HRDepartmentDTO> searchEmployee(String searchInput, String department);

	int updateEmployee(HRDepartmentDTO employee);

	List<Leave_usage_tbDTO> gethistory(int i);

	int checkProfile(int idx_employee);

	void updateProfileImagePath(String originalFilename, String fileName, int idx_file);

	int getIdxFile(int idx_employee);

	void updateAttendanceOfAllEmployees(Integer idx_employee, String ah_status,Integer idx_attendance);

	List<EmployeeDTO> wholeEmployeeAttendanceList(String formattedDate, int start, int pagePerCnt, String department);

	Object wholeAllCountPage(String department, String formattedDate, int pagePerCnt);


	

}

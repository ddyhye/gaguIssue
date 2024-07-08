package ko.gagu.issue.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

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


	int getEmployeeTitle(Integer idx_employee);

	int getDepartmentIdxByEmployee(int idx_employee);

	List<EmployeeDTO> departmentAttendanceList(int idx_employee, int idx_department, Date selectedDate, int start,
			int pagePerCnt);

	Object allCountPage(int idx_department, Date selectedDate, int pagePerCnt);

	List<SalesDataDTO> getSalesHistory(PagingDTO pagingDTO);

	int getSalesHistoryTotalPages(PagingDTO pagingDTO);

	EmployeeDTO getEmployeeInfo(int idxEmployee);

	void updateProfileInfo(int idxEmployee, String birthDate, String email, String phoneNumber);

	void saveProfileImage(int idxEmployee, String profileImageName);

	int isProfileImage(int idxEmployee);

	void updateProfileImage(int idxFile, int idxEmployee, String profileImageName);

	void insertProfileImage(int idxEmployee, String profileImageName);

	List<Map<String, String>> getOrganization();

	List<EmployeeDTO> getEmployeeList(int idxEmployee, int page);

	List<EmployeeDTO> getAJAXEmployeeList(String selectedDepartment, int page);

	int getGoTotalPages(int idxEmployee);

	int getTotalPages(String selectedDepartment);


}


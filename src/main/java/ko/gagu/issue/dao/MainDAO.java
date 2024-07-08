package ko.gagu.issue.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.AlarmDTO;
import ko.gagu.issue.dto.Attendance_history_tbDTO;
import ko.gagu.issue.dto.DocumentDTO;
import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.Leave_accruals_tbDTO;
import ko.gagu.issue.dto.Leave_usage_tbDTO;
import ko.gagu.issue.dto.PagingDTO;
import ko.gagu.issue.dto.ReservationDTO;
import ko.gagu.issue.dto.product_tbDTO;
import ko.gagu.issue.dto.salesPriceDTO;

@Mapper
public interface MainDAO {

	EmployeeDTO getEmpData(String empID);

	Attendance_history_tbDTO getTodayCheck(int idx_employee);

	int gotoWorkTimeCheck(int idx_employee, String gotoWorkTime);

	int finishWorkTimeCheck(int idx_employee, String finishWorkTime);

	Attendance_history_tbDTO getAttData(int idx_employee);

	void updateTodayCheck1(int i);

	void updateTodayCheck2(int idx_employee);

	void updateTodayCheck3(int idx_employee);

	void updateTodayCheck4(int idx_employee);

	Integer getAnnualLeave(int idx_employee);

	Leave_accruals_tbDTO getempLeaveData(int idx_employee);

	List<Leave_usage_tbDTO> getempLeaveHistory(int idx_employee);

	
	
	
	
	List<String> getProductList();

	List<product_tbDTO> getProducts();

	void updateBarcode(int i);

	List<AlarmDTO> getAlamList(int idx_employee);

	void alarmRead(int idx_alarm, int idx_employee);

	int getMyDocumentCnt(int idx_employee);

	int getMyApproveCnt(int idx_employee);

	int alarmCnt(int idx_employee);

	int getFilterTotalPages(PagingDTO paging, int idxEmployee);

	List<Leave_usage_tbDTO> fetchFilterList(PagingDTO paging, int idxEmployee);

	List<Leave_usage_tbDTO> getempLeaveHistory2(int idx_employee);
	
	int getFilterTotalPages2(int idxEmployee);

	List<ReservationDTO> getReservList(int idx_employee);

	salesPriceDTO getMonthSalesPrice(int year, int month);
}

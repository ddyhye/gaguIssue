package ko.gagu.issue.service;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import ko.gagu.issue.dao.LogiDepartmentDAO;
import ko.gagu.issue.dao.MainDAO;
import ko.gagu.issue.dto.EmployeeDTO;

@Service
public class LogiDepartmentService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	
	private final MainDAO mainDao;
	private final LogiDepartmentDAO logiDeptDao;
	
	public LogiDepartmentService(MainDAO mainDao, LogiDepartmentDAO logiDeptDao) {
		this.mainDao = mainDao;
		this.logiDeptDao = logiDeptDao;
	}
	
	

	public ModelAndView inventoryList(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		// 인벤토뤼,,
		
		mav.setViewName("/logisticsDepartment/inventoryList");
		
		return mav;
	}

	
	
	
	
	
	// [do] 로그인한 직원 정보 가져오기
	public EmployeeDTO getEmpData(HttpSession session) {
		// 로그인한 직원 정보 불러오기
		String empID = (String) session.getAttribute("emp_id");
		EmployeeDTO emp = mainDao.getEmpData(empID);
		
		return emp;
	}
}

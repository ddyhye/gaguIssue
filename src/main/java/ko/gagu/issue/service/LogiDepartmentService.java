package ko.gagu.issue.service;

import java.util.HashMap;import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import ko.gagu.issue.dao.LogiDepartmentDAO;
import ko.gagu.issue.dao.MainDAO;
import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.LogiDeptDTO;

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
		
		mav.setViewName("/logisticsDepartment/inventoryList");
		
		return mav;
	}
	public Map<String, Object> inventoryListDrow(Map<String, Object> map) {		
		List<LogiDeptDTO> list = logiDeptDao.inventoryListDrow();
		map.put("list",list);
		
		return map;
	}

	
	
	
	
	
	// [do] 로그인한 직원 정보 가져오기
	public EmployeeDTO getEmpData(HttpSession session) {
		// 로그인한 직원 정보 불러오기
		String empID = (String) session.getAttribute("emp_id");
		EmployeeDTO emp = mainDao.getEmpData(empID);
		
		return emp;
	}



	
}

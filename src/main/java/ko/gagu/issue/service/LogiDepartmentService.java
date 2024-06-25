package ko.gagu.issue.service;

import java.util.ArrayList;
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
import ko.gagu.issue.dto.client_tbDTO;

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
		
		List<String> categoryList = logiDeptDao.getCategoryList();
		mav.addObject("categoryList", categoryList);
		
		List<String> clientList = logiDeptDao.getClientList();
		mav.addObject("clientList", clientList);
		
		mav.setViewName("/logisticsDepartment/inventoryList");
		
		return mav;
	}
	public Map<String, Object> inventoryListDraw(Map<String, Object> map, String productSearch, String productCategory, String clientList) {		
		List<LogiDeptDTO> list = logiDeptDao.inventoryListDraw(productSearch, productCategory, clientList);
		map.put("list",list);
		
		return map;
	}
	
	
	public ModelAndView poWrite_go(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/logisticsDepartment/poWrite");
		
		return mav;
	}
	
	
	public Map<String, Object> poBasic(Map<String, Object> map, HttpSession session) {
		
		// 발주서 번호
		String no = logiDeptDao.getPONumber();
		int noInt = 1;	// 발주서가 없을 경우, 작성될 발주서의 번호는 1
		if (no != null || no == "") {
			noInt = Integer.parseInt(no);
			noInt++;
			
		}
		map.put("no", noInt);
		
		
		// 직원 정보 자동 입력
		EmployeeDTO emp = getEmpData(session);
		String dept = logiDeptDao.getEmpDept(emp.getIdx_employee());
		String level = logiDeptDao.getEmpLevel(emp.getIdx_employee());
		map.put("emp_idx", emp.getIdx_employee());
		map.put("emp_part", dept);
		map.put("emp_level", level);
		map.put("emp_name", emp.getEmp_name());
		map.put("emp_phone", emp.getEmp_phone_number());
		
		return map;
	}
	
	
	public Map<String, Object> lackProductList(Map<String, Object> map) {
		List<String> clientList = logiDeptDao.lackClient();
		map.put("clientList", clientList);
		
		return map;
	}
	
	
	public Map<String, Object> lackProductByClient(Map<String, Object> map, String client) {
		List<LogiDeptDTO> list = logiDeptDao.lackProductByClient(client);
		map.put("list", list);
		
		return map;
	}
	
	
	public Map<String, Object> autoWriteIframe(Map<String, Object> map, String client, List<String> selectedArr) {
		// 발주처 정보
		client_tbDTO clientDto = logiDeptDao.getClientData(client);
		map.put("client", clientDto);
		
		// 발주할 제품
		List<LogiDeptDTO> list = new ArrayList<LogiDeptDTO>();
		for (int i = 0; i < selectedArr.size(); i++) {
			int idx_product = Integer.parseInt(selectedArr.get(i));
			LogiDeptDTO dto = logiDeptDao.getPOProduct(idx_product);
			list.add(dto);
		}
		map.put("list", list);
		
		return map;
	}
	
	
	public ModelAndView poWriteFinish_go(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/logisticsDepartment/poWriteFinish");
		
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

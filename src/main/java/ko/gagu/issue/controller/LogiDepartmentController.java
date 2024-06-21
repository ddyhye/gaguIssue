package ko.gagu.issue.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import ko.gagu.issue.service.LogiDepartmentService;

@Controller
public class LogiDepartmentController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	private final LogiDepartmentService logiDeptService;
	
	public LogiDepartmentController(LogiDepartmentService logiDeptService) {
		this.logiDeptService = logiDeptService;
	}
	
	
	// [do] 물류관리부서 - 재고관리
	// 인벤토리 리스트
	@GetMapping(value="/logisticsDepartment/inventoryList.go")
	public ModelAndView inventoryList(HttpSession session) {
		return logiDeptService.inventoryList(session);
	}
	
	
}

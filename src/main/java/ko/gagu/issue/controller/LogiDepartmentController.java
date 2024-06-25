package ko.gagu.issue.controller;


import java.util.HashMap;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	// 인벤토리 리스트 그리기
	@PostMapping(value="/inventoryList.ajax")
	@ResponseBody
	Map<String, Object> inventoryListAjax(@RequestParam(value = "productSearch", required = false) String productSearch,
            								@RequestParam(value = "productCategory", required = false) String productCategory,
            								@RequestParam(value = "clientList", required = false) String clientList) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		return logiDeptService.inventoryListDraw(map, productSearch, productCategory, clientList);
	}
	
	
	
	// [do] 물류관리부서 - 발주 서류 작성
	// 발주 서류 작성 페이지
	@GetMapping(value="/logisticsDepartment/poWrite.go")
	public ModelAndView poWrite_go(HttpSession session) {
		return logiDeptService.poWrite_go(session);
	}
	// 발주 서류의 기본 정보 자동 삽입 (발주서 번호, 로그인 회원 정보)
	@GetMapping(value="/poBasic.ajax")
	@ResponseBody
	Map<String, Object> poBasic(HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		return logiDeptService.poBasic(map, session);
	}
	
	
}

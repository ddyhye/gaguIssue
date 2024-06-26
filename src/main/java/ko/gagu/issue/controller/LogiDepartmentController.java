package ko.gagu.issue.controller;


import java.util.HashMap;
import java.util.List;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
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
	// 발주 필요한 클라이언트 불러오기
	@PostMapping(value="/lackProduct.ajax")
	@ResponseBody
	Map<String, Object> lackProductList() {
		Map<String, Object> map = new HashMap<String, Object>();
		
		return logiDeptService.lackProductList(map);
	}
	// 발주 필요한 재고 불러오기
	@PostMapping(value="/lackProductByClient.ajax")
	@ResponseBody
	Map<String, Object> lackProductByClient(@RequestBody Map<String, Object> payload) {
		Map<String, Object> map = new HashMap<String, Object>();
		String client = (String) payload.get("client");
		
		return logiDeptService.lackProductByClient(map, client);
	}
	// 자동으로 발주주문서에 넣을 제품 정보 번환
	@PostMapping(value="/autoWriteIframe.ajax")
	@ResponseBody
	Map<String, Object> autoWriteIframe(@RequestBody Map<String, Object> payload) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		// 클라이언트명
		String client = (String) payload.get("client");
		// 발주할 제품
		List<String> selectedArr = (List<String>) payload.get("selectedArr");
		
		return logiDeptService.autoWriteIframe(map, client, selectedArr);
	}
	// 발주서 내용 디비에 저장
	@PostMapping("/savePOforDB.ajax")
    @ResponseBody
    public Map<String, Object> savePOforDB(@RequestBody Map<String, Object> payload) {
        Map<String, Object> map = new HashMap<String, Object>();
        
        int poNum = (int) payload.get("poNum");
        int idx_employee = (int) payload.get("idx_employee");
        int idx_business = (int) payload.get("idx_business");
        
        List<Map<String, Object>> productArr = (List<Map<String, Object>>) payload.get("productArr");

        for (Map<String, Object> product : productArr) {
			int idx_product = (int) product.get("idx_product");
			logiDeptService.insertPurchase(map, poNum, idx_employee, idx_business, idx_product);
		}
        
        return map;
    }
	// 발주서 파일 저장
	@PostMapping(value = "/savePO.ajax")
	@ResponseBody
	public Map<String, Object> savePO(@RequestParam("file") MultipartFile file) {
		Map<String, Object> map = new HashMap<>();

		return logiDeptService.savePO(map, file);
	} 
	
	
	// 발주 완료 페이지
	@GetMapping(value="/logisticsDepartment/poWriteFinish.go")
	public ModelAndView poWriteFinish_go(HttpSession session) {
		return logiDeptService.poWriteFinish_go(session);
	}
}

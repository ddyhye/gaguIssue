package ko.gagu.issue.controller;


import java.util.HashMap;
import java.util.List;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.core.io.Resource;

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
        
        String poNumStr = (String) payload.get("poNum");
        int poNum = Integer.parseInt(poNumStr);
        String idx_employeeStr = (String) payload.get("idx_employee");
        int idx_employee = Integer.parseInt(idx_employeeStr);
        String idx_businessStr = (String) payload.get("idx_business");
        int idx_business = Integer.parseInt(idx_businessStr);
        String total_priceStr = (String) payload.get("total_price");
        int total_price = Integer.parseInt(total_priceStr);
        
        List<Map<String, Object>> productArr = (List<Map<String, Object>>) payload.get("productArr");
        for (Map<String, Object> product : productArr) {
        	// 제품번호
        	String idx_productStr = (String) product.get("idx_product");
            int idx_product = Integer.parseInt(idx_productStr);
            // 주문수량
            String minimum_stockStr = (String) product.get("minimum_stock");
            int minimum_stock = Integer.parseInt(minimum_stockStr);
			logiDeptService.insertPurchase(map, poNum, idx_employee, idx_business, idx_product, minimum_stock, total_price);
		}
        
        return map;
    }
	// 발주서 파일 저장
	@PostMapping(value = "/savePO.ajax")
	@ResponseBody
	public Map<String, Object> savePO(@RequestParam("file") MultipartFile file, @RequestParam("poNum") int poNum) {
		Map<String, Object> map = new HashMap<>();

		return logiDeptService.savePO(map, file, poNum);
	} 
	
	
	
	
	// 발주 완료 페이지
	@GetMapping(value="/logisticsDepartment/poWriteFinish.go")
	public ModelAndView poWriteFinish_go(HttpSession session) {
		return logiDeptService.poWriteFinish_go(session);
	}
	
	
	
	
	// 입고 내역 페이지
	@GetMapping(value="/logisticsDepartment/receivingHistory.go")
	public ModelAndView receivingHistory_go() {
		return logiDeptService.receivingHistory_go();
	}
	// 입고 내역 리스트 그리기
	@PostMapping(value="/receivingHisList.ajax")
	@ResponseBody
	Map<String, Object> receivingHisList() {
		Map<String, Object> map = new HashMap<String, Object>();
		
		return logiDeptService.receivingHisListDraw(map);
	}
	// 발주서 불러오기
	@RequestMapping(value="/filestore/{fileName}")
	public ResponseEntity<Resource> htmlView(@PathVariable String fileName) {
		logger.info("fileName: "+fileName);
		return logiDeptService.htmlView(fileName);
	}
	
	
	
	// 주문 내역 페이지 (관리를 해야 출고내역으로 이동)
	@GetMapping(value="/logisticsDepartment/orderList.go")
	public ModelAndView orderList_go() {
		return logiDeptService.orderList_go();
	}
	// 주문 내역 리스트 그리기
	@PostMapping(value="/orderList.ajax")
	@ResponseBody
	Map<String, Object> orderList() {
		Map<String, Object> map = new HashMap<String, Object>();
		
		return logiDeptService.orderListDraw(map);
	}
	// 주문 상세 내역 팝업창 채우기
	@PostMapping(value="/clientPerOrder.ajax")
	@ResponseBody
	Map<String, Object> clientPerOrder(@RequestBody Map<String, Object> payload) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		String orderNoStr = (String) payload.get("orderNo");
		int orderNo = Integer.parseInt(orderNoStr);
		
		return logiDeptService.clientPerOrder(map, orderNo);
	}
	// 주문 출고하기
	@PostMapping(value="/orderDelivery.ajax")
	@ResponseBody
	Map<String, Object> orderDelivery(@RequestBody Map<String, Object> payload) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		String orderNoStr = (String) payload.get("orderNo");
		int orderNo = Integer.parseInt(orderNoStr);
		
		return logiDeptService.orderDelivery(map, orderNo);
	}
	
	
	
	// 출고 내역 페이지
	// 주문 내역 페이지 (관리를 해야 출고내역으로 이동)
	@GetMapping(value="/logisticsDepartment/deliveryHistory.go")
	public ModelAndView deliveryHistory_go() {
		return logiDeptService.deliveryHistory_go();
	}
	// 주문 내역 리스트 그리기
	@PostMapping(value="/deliveryHisList.ajax")
	@ResponseBody
	Map<String, Object> deliveryHisList() {
		Map<String, Object> map = new HashMap<String, Object>();
		
		return logiDeptService.deliveryHisListDraw(map);
	}
}

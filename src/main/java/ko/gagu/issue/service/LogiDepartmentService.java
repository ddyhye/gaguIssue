package ko.gagu.issue.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ko.gagu.issue.controller.WebSocketController;
import ko.gagu.issue.dao.LogiDepartmentDAO;
import ko.gagu.issue.dao.MainDAO;
import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.LogiDeptDTO;
import ko.gagu.issue.dto.PagingDTO;
import ko.gagu.issue.dto.client_tbDTO;
import ko.gagu.issue.dto.purchase_order_tbDTO;

@Service
public class LogiDepartmentService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Value("${spring.servlet.multipart.location}")
	private String root;
	
	
	private final MainDAO mainDao;
	private final LogiDepartmentDAO logiDeptDao;
	private final WebSocketController webSocketController;
	
	public LogiDepartmentService(MainDAO mainDao, LogiDepartmentDAO logiDeptDao, WebSocketController webSocketController) {
		this.mainDao = mainDao;
		this.logiDeptDao = logiDeptDao;
		this.webSocketController = webSocketController;
	}
	
	
	// 인벤토리 페이지 고
	public ModelAndView inventoryList(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		// 카테고리 출력
		List<String> categoryList = logiDeptDao.getCategoryList();
		mav.addObject("categoryList", categoryList);
		// 클라이언트 (발주처) 출력
		List<String> clientList = logiDeptDao.getClientList();
		mav.addObject("clientList", clientList);
		// 재고 페이지 수 출력
		int totalPages = logiDeptDao.getInventoryPage();
		mav.addObject("totalPages", totalPages);
		
		mav.setViewName("/logisticsDepartment/inventoryList");
		
		return mav;
	}
	// 인벤토리 리스트 그리기 (페이징)
	public Map<String, Object> InventorylistPaging(PagingDTO paging, int idxEmployee) {
		Map<String, Object> map = new HashMap<>();
		
		// 필터에 따른 리스트 페이지 개수
		int totalPages = logiDeptDao.getFilterTotalPagesInven(paging, idxEmployee);
		
		// 전체 페이지 수와 현재 페이지 지정
		if (totalPages == 0) {
			paging.setPage(0);
		} else if (totalPages <= paging.getPage()) {
			paging.setPage((totalPages - 1) * 13);
		} else {			
			paging.setPage(paging.getPage());
		}
		
		// 필터에 따른 리스트
		List<LogiDeptDTO> list = logiDeptDao.fetchFilterListInven(paging, idxEmployee);
		map.put("list",list);
		
		map.put("totalPages", totalPages);
		map.put("success", true);
		
		return map;
	}
	// 인벤토리 리스트 그리기
	public Map<String, Object> inventoryListDraw(Map<String, Object> map, String productSearch, String productCategory, String clientList) {		
		List<LogiDeptDTO> list = logiDeptDao.inventoryListDraw(productSearch, productCategory, clientList);
		map.put("list",list);
		
		return map;
	}
	
	// 인벤토리 상세보기
	public ModelAndView inventoryDetail(ModelAndView mav, int idx_product) {
		
		LogiDeptDTO dto = logiDeptDao.inventoryDetail(idx_product);
		mav.addObject("product_name", dto.getProduct_name());
		mav.addObject("client_name", dto.getClient_name());
		mav.addObject("category", dto.getCategory());
		mav.addObject("current_stock", dto.getCurrent_stock());
		mav.addObject("minimum_stock", dto.getMinimum_stock());
		mav.addObject("purchase_price", dto.getPurchase_price());
		mav.addObject("unit_price", dto.getUnit_price());
		mav.addObject("profit", dto.getProfit());
		mav.addObject("product_description", dto.getProduct_description());
		
		// 제품 사진
		List<String> photos = logiDeptDao.inventoryPhoto(idx_product);
		mav.addObject("photos", photos);
		
		mav.setViewName("/logisticsDepartment/inventoryDetail");
		
		return mav;
	}
	public ResponseEntity<Resource> productView(String file_name) {
		// 특정 경로에서 파일을 읽어와 Resource로 만든다.
	    Resource resource = new FileSystemResource(root+"/"+file_name);
	    HttpHeaders header = new HttpHeaders();
	      
	    // 보내질 파일의 형태를 지정해 준다. (헤더에)
	    // ex) image/gif, image/png, image/jpg, image/jpeg
	    try {
	       String type = Files.probeContentType(Paths.get(root+"/"+file_name));   //경로를 주면 해당 파일의 mime-type 을 알아낸다.
	       logger.info("mime-type: "+type);
	       header.add("content-type", type);
	    } catch (IOException e) {
	       e.printStackTrace();
	    }   
	      
	    // 보낼 내용, 헤더, 상태(200 또는 OK 는 정상이라는 뜻)
	    return new ResponseEntity<Resource>(resource, header, HttpStatus.OK); 
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
		//EmployeeDTO emp = getEmpData(session);
		EmployeeDTO emp = (EmployeeDTO) session.getAttribute("loginInfo");
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

	
	// 발주서 내용 디비에 저장
	public Map<String, Object> insertPurchase(Map<String, Object> map, int poNum, int idx_employee, int idx_business, int idx_product, int minimum_stock, int total_price) {
		// 발주 저장
		purchase_order_tbDTO dto = new purchase_order_tbDTO();
		dto.setIdx_purchasehtml(poNum);
		dto.setIdx_employee(idx_employee);
		dto.setIdx_business(idx_business);
		dto.setIdx_product(idx_product);
		dto.setTotal_price(total_price);
		logiDeptDao.insertPurchaseGetIdx(dto);
		int idx_purchase_order = dto.getIdx_purchase_order();
		
		// 입고내역 저장 (default 입고상태 = '입고예정')
		if (idx_purchase_order > 0) {
			logiDeptDao.insertReceiving(idx_purchase_order, idx_product, minimum_stock);
			
			// 인벤토리에서 제품이 현재 발주가 들어갔는지 업데이트 (발주넣으면 발주 작성에서 자동채우기 안됨)
			//logiDeptDao.updateInventoryPo(idx_purchase_order);
		}
		
		return null;
	}
	// 파일 단일 업로드
	public Map<String, Object> savePO(Map<String, Object> map, MultipartFile file, int poNum) {
		upload(file, poNum);
		
		return map;
	}
	public void upload(MultipartFile file, int poNum) {
		// 1. 파일명 추출
		//String fileName = file.getOriginalFilename();
		
		// 2. 새 파일명 생성
		//String ext = fileName.substring(fileName.lastIndexOf("."));
		String newFileName = System.currentTimeMillis()+".html";
		
		// 3. 파일저장
		try {
			byte[] bytes = file.getBytes();
			Path path = Paths.get(root+"/"+newFileName);
			Files.write(path, bytes);
			logiDeptDao.updatePurchase(newFileName, poNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public ModelAndView poWriteFinish_go(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/logisticsDepartment/poWriteFinish");
		
		return mav;
	}
	
	
	
	
	public ModelAndView receivingHistory_go() {
		ModelAndView mav = new ModelAndView();
		
		// 카테고리 출력
		List<String> categoryList = logiDeptDao.getCategoryList();
		mav.addObject("categoryList", categoryList);
		// 클라이언트 출력
		List<String> clientList = logiDeptDao.getClientList();
		mav.addObject("clientList", clientList);
		// 재고 페이지 수 출력
		int totalPages = logiDeptDao.getReceivingPage();
		mav.addObject("totalPages", totalPages);
		
		mav.setViewName("/logisticsDepartment/receivingHistory");
		
		return mav;
	}
	// ***입고 내역 페이징***
	public Map<String, Object> ReceivinglistPaging(PagingDTO paging, int idxEmployee) {
		Map<String, Object> map = new HashMap<>();
		
		// 필터에 따른 리스트 페이지 개수
		int totalPages = logiDeptDao.getFilterTotalPagesReceiving(paging, idxEmployee);
		
		// 전체 페이지 수와 현재 페이지 지정
		if (totalPages == 0) {
			paging.setPage(0);
		} else if (totalPages <= paging.getPage()) {
			paging.setPage((totalPages - 1) * 13);
		} else {			
			paging.setPage(paging.getPage());
		}
		
		// 필터에 따른 리스트
		List<LogiDeptDTO> list = logiDeptDao.fetchFilterListReceiving(paging, idxEmployee);
		map.put("list",list);
		
		map.put("totalPages", totalPages);
		map.put("success", true);
		
		return map;
	}
	public Map<String, Object> receivingHisListDraw(Map<String, Object> map, String productSearch, String productCategory, String clientList) {
		List<LogiDeptDTO> list = logiDeptDao.getReceivingHistory(productSearch, productCategory, clientList);
		map.put("list", list);
		
		return map;
	}
	public ResponseEntity<Resource> htmlView(String fileName) {
		// 특정 경로에서 파일을 읽어와 Resource 로 만든다.
		Resource resource = new FileSystemResource(root+"/"+fileName);
		HttpHeaders header = new HttpHeaders();
		
		// 해더에 보내질 파일의 형태 지정
		try {
			String type = Files.probeContentType(Paths.get(root+"/"+fileName));
			header.add("content-type", type);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return new ResponseEntity<Resource>(resource, header, HttpStatus.OK);
	}
	public Map<String, Object> updateInventoryPO(Map<String, Object> map, String barcodeData) {
		// barcodeDate 입고 수량 증가
		int idx_product = Integer.parseInt(barcodeData);
		logiDeptDao.updatePOQuantity(idx_product);
		
		// 주문 수량 = 입고 수량 시,
		// 	1) 입고 완료
		//	2) 인벤토리 재고에 주문수량만큼 증가
		int finish = logiDeptDao.isReceivingFinish(idx_product);
		if (finish == 1) {
			logiDeptDao.updateReceivingFinish(idx_product);
			logiDeptDao.updateInventoryReceive(idx_product);
		}
		
		
		return map;
	}
	
	
	
	
	public ModelAndView orderList_go() {
		ModelAndView mav = new ModelAndView();
		
		// 카테고리
		List<String> categoryList = logiDeptDao.getCategoryList();
		mav.addObject("categoryList", categoryList);
		// 클라이언트
		List<String> clientList = logiDeptDao.getClientList2();
		mav.addObject("clientList", clientList);
		// 재고 페이지 수 출력
		int totalPages = logiDeptDao.getOrderPage();
		mav.addObject("totalPages", totalPages);
		
		mav.setViewName("/logisticsDepartment/orderList");
		
		return mav;
	}
	// 주문 내역 그리기
	public Map<String, Object> OrderlistPaging(PagingDTO paging, int idxEmployee) {
		Map<String, Object> map = new HashMap<>();
		
		// 필터에 따른 리스트 페이지 개수
		int totalPages = logiDeptDao.getFilterTotalPagesOrder(paging, idxEmployee);
		
		// 전체 페이지 수와 현재 페이지 지정
		if (totalPages == 0) {
			paging.setPage(0);
		} else if (totalPages <= paging.getPage()) {
			paging.setPage((totalPages - 1) * 13);
		} else {			
			paging.setPage(paging.getPage());
		}
		
		// 필터에 따른 리스트
		List<LogiDeptDTO> list = logiDeptDao.fetchFilterListOrder(paging, idxEmployee);
		map.put("list",list);
		
		map.put("totalPages", totalPages);
		map.put("success", true);
		
		return map;
	}
	public Map<String, Object> orderListDraw(Map<String, Object> map, String productSearch, String productCategory, String clientList) {
		List<LogiDeptDTO> list = logiDeptDao.getOrderList(productSearch, productCategory, clientList);
		map.put("list", list);
		
		return map;
	}
	
	public Map<String, Object> clientPerOrder(Map<String, Object> map, int orderNo) {
		map.put("orderNo", orderNo);
		String order_datetime = logiDeptDao.getOrderTime(orderNo);
		map.put("order_datetime", order_datetime);
		String order_client = logiDeptDao.getOrderClient(orderNo);
		map.put("order_client", order_client);
		int order_total = logiDeptDao.getOrderTotal(orderNo);
		map.put("order_total", order_total);
		List<LogiDeptDTO> list = logiDeptDao.getOrderProductList(orderNo);
		map.put("list", list);
		
		// 출고 상태
		String accept = logiDeptDao.getOrderAccept(orderNo);
		map.put("accept", accept);
		
		// 토스트 테스트,,
		webSocketController.sendNotificationToUser(14, "※발주가 필요한 제품이 있습니다※");
		
		return map;
	}
	
	public Map<String, Object> orderDelivery(Map<String, Object> map, int orderNo, HttpSession session) {
		List<Integer> logiEmp = logiDeptDao.getLogiEmp();
		
		List<LogiDeptDTO> list = logiDeptDao.getOrderProductList(orderNo);
		
		for (LogiDeptDTO dto : list) {
			logiDeptDao.insertDelivery(dto.getIdx_order());
			logiDeptDao.updateOrderState(dto.getIdx_order());
			// 재고 인벤토리에서 감소하기
			// 이건 바코드로 하자. --> 아니지! 출고완료를 한 순간 빠져야지. 그래야 오버오더 막으니께
			logiDeptDao.updateInventory(dto.getIdx_order());
			
			// 재고 출고 후, 재고가 부족한 물품이 있다면 물류관리부서에게 알림 및 토스트 보내기.
			int lackCnt = logiDeptDao.lackCnt();
			if (lackCnt > 0) {
				// 물류관리부서 전원에게 알림 보내자.
				for (int emp : logiEmp) {
					// 토스트
					webSocketController.sendNotificationToUser(emp, "※ 발주가 필요한 제품이 있습니다 ※");
					// 알림
					logiDeptDao.insertAlarmLogiDept(emp);
				}
				logger.info("재고가 부족합니다... 관련 부서 직원에게 알림 보내기 >>");
			}
		}
		
		return map;
	}


	public ModelAndView deliveryHistory_go() {
		ModelAndView mav = new ModelAndView();
		
		// 카테고리
		List<String> categoryList = logiDeptDao.getCategoryList();
		mav.addObject("categoryList", categoryList);
		// 클라이언트
		List<String> clientList = logiDeptDao.getClientList2();
		mav.addObject("clientList", clientList);
		// 재고 페이지 수 출력
		int totalPages = logiDeptDao.getDeliveryPage();
		mav.addObject("totalPages", totalPages);
		
		mav.setViewName("/logisticsDepartment/deliveryHistory");
		
		return mav;
	}
	// 출고 내역 그리기
	public Map<String, Object> deliverylistPaging(PagingDTO paging, int idxEmployee) {
		Map<String, Object> map = new HashMap<>();
		
		// 필터에 따른 리스트 페이지 개수
		int totalPages = logiDeptDao.getFilterTotalPagesDelivery(paging, idxEmployee);
		
		// 전체 페이지 수와 현재 페이지 지정
		if (totalPages == 0) {
			paging.setPage(0);
		} else if (totalPages <= paging.getPage()) {
			paging.setPage((totalPages - 1) * 13);
		} else {			
			paging.setPage(paging.getPage());
		}
		
		// 필터에 따른 리스트
		List<LogiDeptDTO> list = logiDeptDao.fetchFilterListDelivery(paging, idxEmployee);
		map.put("list",list);
		
		map.put("totalPages", totalPages);
		map.put("success", true);
		
		return map;
	}
	public Map<String, Object> deliveryHisListDraw(Map<String, Object> map, String productSearch, String productCategory, String clientList) {
		List<LogiDeptDTO> list = logiDeptDao.getDeliveryList(productSearch, productCategory, clientList);
		map.put("list", list);
		
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

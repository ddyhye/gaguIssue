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

import ko.gagu.issue.dao.LogiDepartmentDAO;
import ko.gagu.issue.dao.MainDAO;
import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.LogiDeptDTO;
import ko.gagu.issue.dto.client_tbDTO;
import ko.gagu.issue.dto.purchase_order_tbDTO;

@Service
public class LogiDepartmentService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Value("${spring.servlet.multipart.location}")
	private String root;
	
	
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
		
//		List<LogiDeptDTO> list = logiDeptDao.getReceivingHistory();
//		mav.addObject("list", list);
		
		mav.setViewName("/logisticsDepartment/receivingHistory");
		
		return mav;
	}
	public Map<String, Object> receivingHisListDraw(Map<String, Object> map) {
		List<LogiDeptDTO> list = logiDeptDao.getReceivingHistory();
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
	
	
	
	
	
	// [do] 로그인한 직원 정보 가져오기
	public EmployeeDTO getEmpData(HttpSession session) {
		// 로그인한 직원 정보 불러오기
		String empID = (String) session.getAttribute("emp_id");
		EmployeeDTO emp = mainDao.getEmpData(empID);
		
		return emp;
	}



	







	
}

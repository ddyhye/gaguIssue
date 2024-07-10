package ko.gagu.issue.service;

import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;

import ko.gagu.issue.controller.WebSocketController;
import ko.gagu.issue.dao.MainDAO;
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

@Service
public class MainService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	
	@Value("${spring.servlet.multipart.location}")
	private String root;
	
	
	private final MainDAO mainDao;
	private final WebSocketController webSocketController;
	
	public MainService(MainDAO mainDao, WebSocketController webSocketController) {
		this.mainDao = mainDao;
		this.webSocketController = webSocketController;
	}

	
	
	// [do]
	public ModelAndView dashboard(HttpSession session, RedirectAttributes rAttr) {
		ModelAndView mav = new ModelAndView();
		
		// 로그인한 직원 정보 불러오기
		String empID = (String) session.getAttribute("emp_id");
		EmployeeDTO emp = mainDao.getEmpData(empID);
		
		
		
		// 조직도
		String de_name = mainDao.getDename(emp.getIdx_employee());
		List<EmployeeDTO> organization = mainDao.getOrganization(emp.getIdx_employee(), emp.getIdx_department());
		mav.addObject("or_de_name", de_name);
		mav.addObject("organization", organization);
		
		
		
		// 회의실 예약
		List<ReservationDTO> reservList = mainDao.getReservList(emp.getIdx_employee());
		for (ReservationDTO rdto : reservList) {
			String start_datetime = "";
			start_datetime += rdto.getStart_datetime();
			String startDate = start_datetime.split("T")[0];
			String startTime = start_datetime.split("T")[1];
			rdto.setStartDate(startDate);
			rdto.setStartTime(startTime);
		}
		mav.addObject("reservList", reservList);
		
		
		// 기안서
		// 내가 올린 것(승인대기중)
		int myDocument = mainDao.getMyDocumentCnt(emp.getIdx_employee());
		mav.addObject("myDocument", myDocument);
		// 내가 승인해야 하는 것(승인대기중)
		int myApprove = mainDao.getMyApproveCnt(emp.getIdx_employee());
		mav.addObject("myApprove", myApprove);
		
		
		
		
		// 직원의 출퇴근 확인
		Attendance_history_tbDTO empTodayCheck = mainDao.getTodayCheck(emp.getIdx_employee());		
		
		if (empTodayCheck != null) {
			if (empTodayCheck.getAh_check_in() != null) {
				mav.addObject("gotoWork", empTodayCheck.getAh_check_in());
				if (empTodayCheck.getAh_check_out() != null) {
					mav.addObject("finishWork", empTodayCheck.getAh_check_out());
				}
			}
		}
		
		
		
		// 직원의 연차 
		Integer empAnnual = mainDao.getAnnualLeave(emp.getIdx_employee());
		mav.addObject("empAnnualLeave", empAnnual);
		
		
		
		
		mav.setViewName("main/dashboard");
		
		return mav;
	}
	// 대시보드 - 오늘의 출근 히스토리
	// ** 연차 사용 시, 클릭 안되게 막아야 함.
	public Map<String, String> gotoWorkTimeCheck(Map<String, String> map, HttpSession session, String gotoWorkTime) {
		// 로그인한 직원 정보 불러오기
		String empID = (String) session.getAttribute("emp_id");
		EmployeeDTO emp = mainDao.getEmpData(empID);
		
		// 직원 출근 삽입
		int success = 0;
		success = mainDao.gotoWorkTimeCheck(emp.getIdx_employee(), gotoWorkTime);
		
		if (success > 0) {
			map.put("successMsg", gotoWorkTime+" 출근 완료");
		}
		
		return map;
	}
	public Map<String, String> finishWorkTimeCheck(Map<String, String> map, HttpSession session, String finishWorkTime) {
		// 로그인한 직원 정보 불러오기
		String empID = (String) session.getAttribute("emp_id");
		EmployeeDTO emp = mainDao.getEmpData(empID);
		
		// 직원 출근 삽입
		int success = 0;
		success = mainDao.finishWorkTimeCheck(emp.getIdx_employee(), finishWorkTime);
		
		if (success > 0) {
			map.put("successMsg", finishWorkTime+" 퇴근 완료");
		}
		
		// 출퇴근 상태 변경
		Attendance_history_tbDTO empTodayCheck = mainDao.getTodayCheck(emp.getIdx_employee());
		
		String checkIn[] = empTodayCheck.getAh_check_in().split(":");
		String checkOut[] = empTodayCheck.getAh_check_out().split(":");
		
		if (Integer.parseInt(checkIn[0]) < 9) {
			if (Integer.parseInt(checkIn[2]) < 59) {
				if (Integer.parseInt(checkIn[0]) > 18) {
					mainDao.updateTodayCheck1(emp.getIdx_employee());
				} else {
					mainDao.updateTodayCheck2(emp.getIdx_employee());
				}
			}
		} else if(Integer.parseInt(checkIn[0]) == 9) {
			if (Integer.parseInt(checkIn[1]) == 00) {
				if (Integer.parseInt(checkIn[0]) > 18) {
					mainDao.updateTodayCheck1(emp.getIdx_employee());
				} else {
					mainDao.updateTodayCheck2(emp.getIdx_employee());
				}
			}
		} else {	// 기본 지각, 결근
			if (Integer.parseInt(checkIn[0]) > 18) {
				mainDao.updateTodayCheck3(emp.getIdx_employee());
			} else {
				mainDao.updateTodayCheck4(emp.getIdx_employee());
			}
		}
		
		return map;
	}
	
	
	// 연차
	public ModelAndView annualLeaveHistory(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		EmployeeDTO emp = getEmpData(session);
		
		// 연차 정보
		Leave_accruals_tbDTO empLdto = mainDao.getempLeaveData(emp.getIdx_employee());
		mav.addObject("leave_days", empLdto.getLeave_days());
		mav.addObject("usage_days", empLdto.getUsage_days());
		
		// 리스트
		List<Leave_usage_tbDTO> empLhistory = mainDao.getempLeaveHistory2(emp.getIdx_employee());
		int totalPages = mainDao.getFilterTotalPages2(emp.getIdx_employee());
		
		mav.addObject("empLhistory", empLhistory);
		mav.addObject("totalPages", totalPages);
		
		mav.setViewName("common/annualList");
		
		return mav;
	}
	// 연차 히스토리
	public Map<String, Object> annualHistoryAjax(HttpSession session, Map<String, Object> map) {
		EmployeeDTO emp = getEmpData(session);
		
		List<Leave_usage_tbDTO> empLhistory = mainDao.getempLeaveHistory(emp.getIdx_employee());
		map.put("empLhistory", empLhistory);
		
		return map;
	}
	// 연차 페이징
	public Map<String, Object> paging(PagingDTO paging, int idxEmployee) {
		Map<String, Object> map = new HashMap<>();
		
		int totalPages = mainDao.getFilterTotalPages(paging, idxEmployee);
		
		// 전체 페이지 수와 현재 페이지 지정
		if (totalPages == 0) {
			paging.setPage(0);
		} else if (totalPages <= paging.getPage()) {
			paging.setPage((totalPages - 1) * 13);
		} else {			
			paging.setPage(paging.getPage());
		}
		
		List<Leave_usage_tbDTO> empLhistory = mainDao.fetchFilterList(paging, idxEmployee);
		map.put("empLhistory", empLhistory);
		
		map.put("totalPages", totalPages);
		map.put("success", true);
		
		return map;
	}
	
	
	
	
	// [do] 로그인한 직원 정보 가져오기
	public EmployeeDTO getEmpData(HttpSession session) {
		// 로그인한 직원 정보 불러오기
		String empID = (String) session.getAttribute("emp_id");
		EmployeeDTO emp = mainDao.getEmpData(empID);
		
		return emp;
	}
	
	
	
	
	// 바코드 생성할 제품명 불러오기
	public List<String> getProductList() {
		return mainDao.getProductList();
	}
	public List<product_tbDTO> getProducts() {
		return mainDao.getProducts();
	}
	// 바코드 생성
	public void createBarcode() {
		List<product_tbDTO> productList = mainDao.getProducts();
		String barcodePath = "";
		
		logger.info("바코드 생성 함수 실행 >> ");
		
		if (productList.size() != 0) {
			for (product_tbDTO product : productList) {
				logger.info("바코드 생성할 제품명 >> "+product.getProduct_name());
				
				// 제품명 중복이 있으면 안됨. 제품명을 기준으로 바코드 생성할거라서
				barcodePath = product.getIdx_product()+".png";
				
//				QRCodeWriter qrCodeWriter = new QRCodeWriter();
//				int width = 350;
//				int height = 350;
				
				String idxStr = "";
				idxStr += product.getIdx_product();
				
				try {
					// 제품 번호 저장
					BitMatrix bitMatrix = new MultiFormatWriter().encode(idxStr, BarcodeFormat.CODE_128, 300, 100);
                    // 경로는 dto.png
					Path path = FileSystems.getDefault().getPath(root + "/" + barcodePath);
                    MatrixToImageWriter.writeToPath(bitMatrix, "PNG", path);
                    mainDao.updateBarcode(product.getIdx_product());
                    logger.info("바코드 생성할 로직 마지막 >> ");
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	
	
	// 알림
	public Map<String, Object> alarmCntAjax(HttpSession session, Map<String, Object> map) {
		EmployeeDTO dto = (EmployeeDTO) session.getAttribute("loginInfo");
		
		int cnt = mainDao.alarmCnt(dto.getIdx_employee());
		map.put("alarmCnt", cnt);
		
		return map;
	}
	public Map<String, Object> alarmListAjax(HttpSession session, Map<String, Object> map) {
		EmployeeDTO dto = (EmployeeDTO) session.getAttribute("loginInfo");
		
		// 알람 리스트
		List<AlarmDTO> list = mainDao.getAlamList(dto.getIdx_employee());
		map.put("list", list);
		
		return map;
	}
	public Map<String, Object> alarmRead(Map<String, Object> map, int idx_alarm, int idx_employee) {
		mainDao.alarmRead(idx_alarm, idx_employee);
		
		return map;
	}
	
	
	
	
	
	// 매출 현황 그래프
	public Map<String, Object> salesGraph() {
		Map<String, Object> map = new HashMap<>();
		
		List<String> yearMonthList = new ArrayList<String>();
		List<Integer> poPriceList = new ArrayList<Integer>();
		List<Integer> salePriceList = new ArrayList<Integer>();
		List<Integer> profitPriceList = new ArrayList<Integer>();
		
		// 현재 날짜를 가져옴
        LocalDate currentDate = LocalDate.now();
        // DateTimeFormatter를 사용하여 년도와 월을 포맷팅
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM");
        // 지난 6개월 간의 년도와 월을 추출하여 리스트에 추가
        for (int i = 6; i > 0; i--) {
            LocalDate date = currentDate.minusMonths(i);
            String yearMonth = date.format(formatter);
            // 년
            String yearStr = yearMonth.split("-")[0];
            int year = Integer.parseInt(yearStr);
            // 월
            String monthStr = yearMonth.split("-")[1];
            int month = Integer.parseInt(monthStr);
            
            // 발주 금액과 판매 금액, 영업 이익 금액 dto를 만들어 매퍼로부터 한꺼번에 받아오자.
            salesPriceDTO dto = mainDao.getMonthSalesPrice(year, month);
            poPriceList.add(dto.getPoPriceList());
            salePriceList.add(dto.getSalePriceList());
            profitPriceList.add(dto.getProfitPriceList());
            
            // 년월
            String yearMonthStr = yearStr+"."+monthStr;
            yearMonthList.add(yearMonthStr);
        }
        
        map.put("yearMonthList", yearMonthList);
        map.put("poPriceList", poPriceList);
        map.put("salePriceList", salePriceList);
        map.put("profitPriceList", profitPriceList);
		
		return map;
	}



	public ResponseEntity<Resource> profileView(String file_name) {
		// 특정 경로에서 파일을 읽어와 Resource로 만든다.
	    Resource resource = new FileSystemResource(root+"/profilepicture/"+file_name);
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
	

}

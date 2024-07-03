package ko.gagu.issue.service;

import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;

import ko.gagu.issue.dao.MainDAO;
import ko.gagu.issue.dto.AlarmDTO;
import ko.gagu.issue.dto.Attendance_history_tbDTO;
import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.Leave_accruals_tbDTO;
import ko.gagu.issue.dto.Leave_usage_tbDTO;
import ko.gagu.issue.dto.product_tbDTO;

@Service
public class MainService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	
	@Value("${spring.servlet.multipart.location}")
	private String root;
	
	
	@Autowired MainDAO mainDao;

	
	
	// [do]
	public ModelAndView dashboard(HttpSession session, RedirectAttributes rAttr) {
		ModelAndView mav = new ModelAndView();
		
		// 로그인한 직원 정보 불러오기
		String empID = (String) session.getAttribute("emp_id");
		EmployeeDTO emp = mainDao.getEmpData(empID);
		
		
		
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

}

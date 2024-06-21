package ko.gagu.issue.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ko.gagu.issue.dao.MainDAO;
import ko.gagu.issue.dto.Attendance_history_tbDTO;
import ko.gagu.issue.dto.EmployeeDTO;

@Service
public class MainService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	
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

}

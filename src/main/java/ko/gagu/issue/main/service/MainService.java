package ko.gagu.issue.main.service;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ko.gagu.issue.employee.dto.Attendance_history_tbDTO;
import ko.gagu.issue.employee.dto.EmployeeDTO;
import ko.gagu.issue.main.dao.MainDAO;

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
		boolean isGotoWorkTime = false;
		boolean isFinishWorkTime = false;
		
		if (empTodayCheck != null) {
			if (empTodayCheck.getAh_check_in() != null) {
				
			}
		} 
		
		mav.addObject("isGotoWorkTime", isGotoWorkTime);
		mav.addObject("isFinishWorkTime", isFinishWorkTime);
		mav.setViewName("main/dashboard");
		
		return mav;
	}

}

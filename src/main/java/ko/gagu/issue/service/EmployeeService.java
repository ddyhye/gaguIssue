package ko.gagu.issue.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ko.gagu.issue.dao.EmployeeDAO;
import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.HRDepartmentDTO;

@Service
public class EmployeeService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	//@Autowired EmployeeDAO employeeDao;
	@Autowired EmployeeDAO dao;
	@Autowired PasswordEncoder encoder;

	public void employeeGetAllEvents(Map<String, Object> response,Integer idx_employee,Model model) {
		// [il] 개인일정 보여주기
		EmployeeDTO employeeDTO = new EmployeeDTO();
		model.addAttribute("employee",employeeDTO);
		logger.info("employeeDTO : {}",employeeDTO);
		List<EmployeeDTO> events = dao.employeeGetAllEvents(idx_employee);
		
		// [il] 회사일정 보여주기
		HRDepartmentDTO hrDepartmentDTO = new HRDepartmentDTO();
		model.addAttribute("company",hrDepartmentDTO);
		logger.info("hrDepartmentDTO : {}",hrDepartmentDTO);
		List<HRDepartmentDTO>eventss=dao.getAllCompanyEvents();
		
		
		response.put("calendarEvents", events);
		response.put("companyEvents",eventss);
	}
	
//	public void getAllCompanyEvents(Map<String, Object> response, Model model) {
//		// [il] 회사일정 보여주기
//		HRDepartmentDTO hrDepartmentDTO = new HRDepartmentDTO();
//		model.addAttribute("company",hrDepartmentDTO);
//		logger.info("hrDepartmentDTO : {}",hrDepartmentDTO);
//		
//		List<HRDepartmentDTO>eventss=dao.getAllCompanyEvents();
//		response.put("companyEvents", eventss);
//
//		
//	}
	

	public void employeeAddEvent(EmployeeDTO employee) {
		dao.employeeAddEvent(employee);
	}

	
	public void employeeDeleteEvent(Integer idx_emp_calendar,Integer idx_employee) {
		dao.employeeDeleteEvent(idx_emp_calendar,idx_employee);
	}
	
	public void employeeUpdateEvent(Integer idx_emp_calendar, Integer idx_employee, String ec_title, String ec_start_datetime, String ec_end_datetime, String ec_description, String ec_color) {
		dao.employeeUpdateEvent(idx_emp_calendar,idx_employee,ec_title,ec_start_datetime,ec_end_datetime,ec_description,ec_color);
	}
	
	
	
	
	// [do] 수정 - 인터셉터 및 로그인
	public ModelAndView login(String emp_id, String emp_pw, RedirectAttributes rAttr, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		logger.info("id :{}",emp_id);
		logger.info("pw : {}",emp_pw);
		
		String memPw = dao.login(emp_id);
		logger.info("mem_Pw = "+memPw);
		
		if(encoder.matches(emp_pw, memPw)) {
			mav.setViewName("redirect:/main/dashboard.go");
//			EmployeeDTO dto = dao.employeeData(emp_id);
//			session.setAttribute("loginInfo", dto);
			session.setAttribute("emp_id", emp_id);
			rAttr.addFlashAttribute("msg","환영합니다.");
		}else {
			mav.setViewName("redirect:/login.go");
			rAttr.addFlashAttribute("msg","사원번호 및 비밀번호를 확인해 주세요!");
		}
		
		return mav;
	}

	public ModelAndView join(Map<String, String> param) {
		ModelAndView mav = new ModelAndView();
		
		logger.info("param : {}", param);
		
		String emp_pw = encoder.encode(param.get("emp_pw"));
		param.put("emp_pw", emp_pw);
		logger.info("encoded password : {}", param.get("emp_pw"));
		
		int row = dao.join(param);
		
		if (row > 0) {
			mav.setViewName("redirect:/login.go");
		} else {
			mav.setViewName("redirect:/joinForm.go");
		}
	
		return mav;
	}

	public String findEmployeeNumber(String emp_name, String birthDate) {
		return dao.findEmployeeNumber(emp_name, birthDate);
	}

	public String findpw(String emp_id, String emp_name, String birthDate) {
		return dao.findPW(emp_id, emp_name, birthDate);
	}

	

	

	

	

}

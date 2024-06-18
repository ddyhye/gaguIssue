package ko.gagu.issue.employee.service;

<<<<<<< HEAD
import java.util.List;
=======
>>>>>>> 5f3cc565ca22253d518d9b192727834cdc44b5b2
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
<<<<<<< HEAD
=======
import org.springframework.security.crypto.password.PasswordEncoder;
>>>>>>> 5f3cc565ca22253d518d9b192727834cdc44b5b2
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ko.gagu.issue.employee.dao.EmployeeDAO;

import ko.gagu.issue.employee.dao.EmployeeDAO;
import ko.gagu.issue.employee.dto.EmployeeDTO;

@Service
public class EmployeeService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
<<<<<<< HEAD
	@Autowired EmployeeDAO employeeDao;

	public void getCalendarEvents(Map<String, Object> response) {
		List<EmployeeDTO> events = employeeDao.getCalendarEvents();
		response.put("calendarEvents", events);		
	}
=======
	@Autowired EmployeeDAO dao;
	@Autowired PasswordEncoder encoder;

	public ModelAndView login(String emp_id, String emp_pw, RedirectAttributes rAttr) {

		logger.info("id :{}",emp_id);
		logger.info("pw : {}",emp_pw);
		
		String memPw = dao.login(emp_id);
		logger.info("mem_Pw = "+memPw);
		
		ModelAndView mav = new ModelAndView();
		
		if(encoder.matches(emp_pw, memPw)) {
			mav.setViewName("redirect:/");
			rAttr.addFlashAttribute("msg","환영합니다.");
		}else {
			mav.setViewName("redirect:/login.go");
			rAttr.addFlashAttribute("msg","사원번호 및 비밀번호를 확인해 주세요!");
		}
		
		return mav;
	}

	public ModelAndView join(Map<String, String> param) {
		logger.info("param : {}", param);
		String emp_pw = encoder.encode(param.get("emp_pw"));
		
		param.put("emp_pw", emp_pw);
		logger.info("encoded password : {}", param.get("emp_pw"));
		
		ModelAndView mav = new ModelAndView();
		
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

	
>>>>>>> 5f3cc565ca22253d518d9b192727834cdc44b5b2

}

package ko.gagu.issue.employee.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ko.gagu.issue.employee.service.EmployeeService;

@Controller
public class EmployeeController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired EmployeeService service;
	@Autowired PasswordEncoder encoder;
	
	// 로그인페이지 이동 ><
	@GetMapping(value="/login.go")
	public String home() {
		return "login/login";
	}
	// 로그인
	@PostMapping(value="/login.do")
	public ModelAndView login(String emp_id, String emp_pw, RedirectAttributes rAttr) {
		return service.login(emp_id, emp_pw, rAttr);
	}
	
	@GetMapping(value = "/joinForm.go")
	public String joinForm() {
		return "login/joinForm";
	}
	
	@PostMapping(value = "/join.do")
	public ModelAndView join(@RequestParam Map<String, String> param) {
		return service.join(param);
	}
	
	@GetMapping(value = "/findNumber.go")
	public String findNumber() {
		return "login/findNumber";
	}
	
	@GetMapping(value = "/findPW.go")
	public String findPW() {
		return "login/findPW";
	}
	
	@PostMapping(value="/findNumber.do")
	public ModelAndView findEmployeeNumber(
	    @RequestParam("emp_name") String emp_name,
	    @RequestParam("year") String year,
	    @RequestParam("month") String month,
	    @RequestParam("day") String day,
	    RedirectAttributes rAttr) {
	    
	    // 생년월일을 YYYY-MM-DD 형식으로 조합
	    String birthDate = year + "-" + String.format("%02d", Integer.parseInt(month)) + "-" + String.format("%02d", Integer.parseInt(day));
	    
	    // 사원번호 조회
	    String employeeId = service.findEmployeeNumber(emp_name, birthDate);
	    
	    ModelAndView mav = new ModelAndView();
	    if (employeeId != null) {
	        rAttr.addFlashAttribute("employeeId", employeeId);
	        mav.setViewName("login/MemberNumber");
	    } else {
	        rAttr.addFlashAttribute("errorMessage", "올바른 정보를 입력해주세요.");
	        mav.setViewName("login/findNumber");
	    }
	    return mav;
	}
	
	
}

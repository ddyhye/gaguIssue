package ko.gagu.issue.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.service.EmployeeService;

@Controller
public class EmployeeController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired EmployeeService employeeService;
	@Autowired PasswordEncoder encoder;
	
	// 작성자 : 구일승 , 기능 : 캘린더
	@RequestMapping(value="/employee/calendar.go")
	public String calendar() {
		logger.info("calendar in");
		return "employee/calendar";
	}
	
	@RequestMapping(value="/employee/getAllEvents.ajax")
	@ResponseBody
	public Map<String, Object> employeeGetAllEvents(){
		Map<String, Object>response = new HashMap<String, Object>();
		employeeService.employeeGetAllEvents(response);
		logger.info("response : {}"+response);
		return response;
	}
	
	@RequestMapping(value="/employee/addEvent.ajax",method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object>employeeAddEvent(@RequestBody EmployeeDTO employee){
		Map<String, Object>response = new HashMap<String, Object>();
		logger.info("response : {}"+response);
		employeeService.employeeAddEvent(employee);
		return response;
	}
	
	
	
	// 로그인페이지 이동 ><
	@GetMapping(value="/login.go")
	public String home() {
		return "login/login";
	}
	// 로그인
	@PostMapping(value="/login.do")
	public ModelAndView login(String emp_id, String emp_pw, RedirectAttributes rAttr) {
		return employeeService.login(emp_id, emp_pw, rAttr);
	}
	
	@GetMapping(value = "/joinForm.go")
	public String joinForm() {
		return "login/joinForm";
	}
	
	@PostMapping(value = "/join.do")
	public ModelAndView join(@RequestParam Map<String, String> param) {
		return employeeService.join(param);
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
	    @RequestParam("day") String day) {
	    
	    // 생년월일을 YYYY-MM-DD 형식으로 조합
	    String birthDate = year + "-" + String.format("%02d", Integer.parseInt(month)) + "-" + String.format("%02d", Integer.parseInt(day));
	    
	    // 사원번호 조회
	    String employeeId = employeeService.findEmployeeNumber(emp_name, birthDate);
	    
	    ModelAndView mav = new ModelAndView();
	    if (employeeId != null) {
	        mav.addObject("emp_name", emp_name);  // 이름 전달
	        mav.addObject("emp_id", employeeId);  // 사원번호 전달
	        mav.setViewName("login/MemberNumber");  // 사원번호 확인 페이지로 이동
	    } else {
	        mav.addObject("errorMessage", "올바른 정보를 입력해주세요.");
	        mav.setViewName("login/findNumber");  // 사원번호 찾기 페이지로 다시 이동
	    }
	    return mav;
	}
	
	@PostMapping(value="/findPW.do")
	public ModelAndView findPW(
	        @RequestParam("emp_id") String emp_id,
	        @RequestParam("emp_name") String emp_name,
	        @RequestParam("year") String year,
	        @RequestParam("month") String month,
	        @RequestParam("day") String day) {

	    ModelAndView mav = new ModelAndView();
	    
	    // 생년월일 필드가 비어있을 경우
	    if (emp_id.isEmpty() || emp_name.isEmpty() || year.isEmpty() || month.isEmpty() || day.isEmpty()) {
	        mav.addObject("errorMessage", "모든 정보를 입력해주세요.");
	        mav.setViewName("login/findPW");
	        return mav;
	    }

	    // 생년월일을 YYYY-MM-DD 형식으로 조합
	    String birthDate = year + "-" + String.format("%02d", Integer.parseInt(month)) + "-" + String.format("%02d", Integer.parseInt(day));

	    String pw = employeeService.findpw(emp_id, emp_name, birthDate);

	    if (pw != null) {
	        mav.addObject("emp_name", emp_name);
	        mav.addObject("emp_pw", pw);
	        mav.setViewName("login/MemberPW");
	    } else {
	        mav.addObject("errorMessage", "일치하는 사원정보가 없습니다.");
	        mav.setViewName("login/findPW");
	    }
	    return mav;
	}

	@GetMapping(value = "/todo.go")
	public String todo() {
		return "employee/ToDo";
	}
	
	
}

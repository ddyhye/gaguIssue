package ko.gagu.issue.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	@GetMapping(value="/employee/calendar.go")
	public String calendar() {
		logger.info("calendar in");
		return "employee/calendar";
	}
	
	@GetMapping(value="/employee/getAllEvents.ajax")
	@ResponseBody
	public Map<String, Object> employeeGetAllEvents(Integer idx_employee,Model model){
		logger.info("getAllEvenets진입");
		logger.info("idx_employee:{}",idx_employee);
		Map<String, Object>response = new HashMap<String, Object>();
		employeeService.employeeGetAllEvents(response,idx_employee,model);
		logger.info("response : {}",response);
		return response;
	}
	

	// [il] 개인 근태관리
	@GetMapping(value="/employee/attendance.go")
	public String employeeAttendance() {
		logger.info("attendance calendar in");
		return "employee/attendance";
	}
	
	@GetMapping(value="/employee/getAttendance.ajax")
	@ResponseBody
	public Map<String, Object> getEmployeeAttendance(Integer idx_employee,Model model) {
		logger.info("getEmployeeAttendance in");
		logger.info("idx_employee : {}",idx_employee);
		Map<String, Object> response = new HashMap<String, Object>();
		employeeService.getEmployeeAttendance(response,idx_employee,model);
		logger.info("response : {}",response);
		return response;
	}
	

//	@GetMapping(value="/employee/getAllCompanyEvents.ajax")
//	@ResponseBody
//	public Map<String, Object> getAllCompanyEvents(Model model){
//		logger.info("getAllCompanyEvents 진입");
//		Map<String, Object>response=new HashMap<String, Object>();
//		employeeService.getAllCompanyEvents(response,model);
//		logger.info("response : {}",response);
//		return response;
//	}
	
	@PostMapping(value="/employee/addEvent.ajax")
	@ResponseBody
	public Map<String, Object>employeeAddEvent(@RequestBody EmployeeDTO employee){
		logger.info("addevent에 진입했습니다.");
		Map<String, Object>response = new HashMap<String, Object>();		
		employeeService.employeeAddEvent(employee);
		logger.info("response : {}",response);
		return response;
	}
	
	@PostMapping(value="/employee/updateEvent.ajax")
	@ResponseBody
	public Map<String, Object>employeeUpdateEvent(@RequestBody Map<String, Object> requestBody){
		Integer idx_emp_calendar = Integer.valueOf(requestBody.get("idx_emp_calendar").toString());
        Integer idx_employee = Integer.valueOf(requestBody.get("idx_employee").toString());

        logger.info("idx_emp_calendar : {}", idx_emp_calendar);
        logger.info("idx_employee :{}", idx_employee);
        
        Map<String, Object> updatedEvent = (Map<String, Object>) requestBody.get("updatedEvent");
        String ec_title = (String) updatedEvent.get("ec_title");
        String ec_start_datetime = (String) updatedEvent.get("ec_start_datetime");
        String ec_end_datetime = (String) updatedEvent.get("ec_end_datetime");
        String ec_description = (String) updatedEvent.get("ec_description");
        String ec_color = (String) updatedEvent.get("ec_color");
        
        employeeService.employeeUpdateEvent(idx_emp_calendar, idx_employee, ec_title, ec_start_datetime, ec_end_datetime, ec_description, ec_color);
        
        Map<String, Object> response = new HashMap<>();
        response.put("status", "success");
        response.put("message", "이벤트 수정이 완료되었습니다.");
		
		
		return response;
	}
	
	@PostMapping(value = "/employee/deleteEvent.ajax")
	@ResponseBody
	public Map<String, String> employeeDeleteEvent(@RequestBody Map<String, Object> requestBody) {
	    try {
	        Integer idx_emp_calendar = Integer.valueOf(requestBody.get("idx_emp_calendar").toString());
	        Integer idx_employee = Integer.valueOf(requestBody.get("idx_employee").toString());

	        logger.info("idx_emp_calendar : {}", idx_emp_calendar);
	        logger.info("idx_employee :{}", idx_employee);

	        employeeService.employeeDeleteEvent(idx_emp_calendar, idx_employee);

	        Map<String, String> response = new HashMap<>();
	        response.put("status", "success");
	        response.put("message", "이벤트 삭제가 완료되었습니다.");
	        return response;
	    } catch (Exception e) {
	        logger.error("Error processing deleteEvent request", e);

	        Map<String, String> errorResponse = new HashMap<>();
	        errorResponse.put("status", "error");
	        errorResponse.put("message", "이벤트 삭제에 실패했습니다.");
	        return errorResponse;
	    }
	}
	
	

	
	
	
	// 로그인페이지 이동 ><
	@GetMapping(value="/login.go")
	public String home() {
		logger.info("로그인 페이지 요청...");
		return "login/login";
	}
	// 로그인
	@PostMapping(value="/login.do")
	public ModelAndView login(String emp_id, String emp_pw, RedirectAttributes rAttr, HttpSession session) {
		return employeeService.login(emp_id, emp_pw, rAttr, session);
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
	
	
	
	
	
	// [do] 로그아웃
	@GetMapping(value="/logout.go")
	public ModelAndView logout(HttpSession session, RedirectAttributes rAttr) {
		ModelAndView mav = new ModelAndView();
		
		session.removeAttribute("loginInfo");
		session.removeAttribute("emp_id");
		
		rAttr.addFlashAttribute("msg","로그아웃 성공, 로그인 페이지로 돌아갑니다...");
		
		mav.setViewName("redirect:/login.go");
		
		return mav;
	}
	
}

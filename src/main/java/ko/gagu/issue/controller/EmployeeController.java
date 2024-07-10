package ko.gagu.issue.controller;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.PagingDTO;
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
	
		// [il] 개인 근태관리
		@GetMapping(value="/employee/attendance.go")
		public String employeeAttendance(Integer idx_employee,Model model) {
			logger.info("idx_employee : {}",idx_employee);
			logger.info("attendance calendar in");
			model.addAttribute("idx_employee",idx_employee);
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
		
		@GetMapping(value="/employee/getIdxTitle.ajax")
		@ResponseBody
		public Map<String, Object>employeeGetIdxTitle(Integer idx_employee){
			logger.info("idx_employee: {}", idx_employee);
		    
		    Map<String, Object> response = employeeService.employeeGetIdxTitle(idx_employee);
		    logger.info("response : {}", response);
		    
		    return response; 
		}
		
		
		@GetMapping(value="/employee/departmentAttendance.go")
		public String departmentAttendance() {
			return "employee/attendanceDepartment";
		}
		
		@PostMapping(value="/employee/departmentAttendanceList.ajax")
		@ResponseBody
		public Map<String, Object>attendanceDepartment(HttpSession session,String date,String page, String cnt){
			
		    logger.info("페이지 당 보여줄 갯수 : "+cnt);
			logger.info("요청 페이지 : " +page);
			int idx_employee= (int) session.getAttribute("idxEmployee");
			logger.info("idxEmployee : {}",idx_employee);
			String formattedDate =null;
			
			java.util.Date selectedDate=null;
			SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
			try {
				selectedDate=dateFormat.parse(date);
				formattedDate = dateFormat.format(selectedDate);
				logger.info("formattedDate : {}",formattedDate);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
			
			int currentPage = Integer.parseInt(page);
			int pagePerCnt = Integer.parseInt(cnt);
			
			Map<String, Object>map = employeeService.departmentAttendanceList(idx_employee,formattedDate,currentPage,pagePerCnt);
			logger.info("map : {}",map);
			
			return map;
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
		logger.info("사원번호 찾기==============");
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
	        mav.addObject("msg", "올바른 정보를 입력해주세요.");
	        mav.setViewName("login/findNumber");  // 사원번호 찾기 페이지로 다시 이동
	    }
	    return mav;
	}
	
	@PostMapping(value="/findPW.do")
	public ModelAndView findPW(
	        @RequestParam("emp_id") String emp_id,
	        @RequestParam("emp_name") String emp_name,
	        @RequestParam("current_password") String currentPassword,
	        @RequestParam("new_password") String newPassword,
	        @RequestParam("confirm_password") String confirmPassword,
	        RedirectAttributes rAttr,
	        HttpSession session) {
		logger.info("======================");

	    ModelAndView mav = new ModelAndView();
	    EmployeeDTO employee = employeeService.findEmployee(emp_id, emp_name);
	    logger.info(employee+"");
	    logger.info(currentPassword);
	    if (employee == null) {
	    	
	        mav.addObject("errorMessage", "올바른 정보를 입력해주세요.");
	        mav.setViewName("login/findPW");
	        return mav;
	    }

	    // 현재 비밀번호 확인
	    if (!encoder.matches(currentPassword, employee.getEmp_pw())) {
	        mav.addObject("errorMessage", "현재 비밀번호가 일치하지 않습니다.");
	        mav.setViewName("login/findPW");
	        
	        return mav;
	    }

	    // 새 비밀번호와 비밀번호 확인이 일치하는지 확인
	    if (!newPassword.equals(confirmPassword)) {
	        mav.addObject("errorMessage", "새 비밀번호가 일치하지 않습니다.");
	        mav.setViewName("login/findPW");
	        return mav;
	    }

	    // 비밀번호 변경
	    employee.setEmp_pw(encoder.encode(newPassword));
	    employeeService.updateEmployeePassword(employee.getEmp_id(), newPassword);
	    
	    employeeService.updateFirstLoginStatus(employee.getEmp_id(), 1);
	    
	    mav.setViewName("login/login");
	    mav.addObject("msg", "비밀번호가 성공적으로 변경되었읍니다.");
	    if (employee.getFirst_login() == 1) {
	        mav.addObject("msg", "첫 로그인입니다. 비밀번호를 변경해주세요.");
	    } else {
	        mav.addObject("msg", "비밀번호가 성공적으로 변경되었습니다.");
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
	
	/* [jeong] 매출 관리 페이지로 이동 */
	@GetMapping(value = "/common/salesHistory.go")
	public ModelAndView salesHistoryGo(HttpSession session) {
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return employeeService.getSalesHistory(idxEmployee);	
	}
	
	/* [jeong] 필터링, 검색, 정렬, 페이지 번호를 입력 받고 페이징 처리된 매출 내역을 응답 */
	@PostMapping(value = "/common/salesHistoryPaging.do")
	@ResponseBody
	public Map<String, Object> papingDo(HttpSession session, @RequestBody PagingDTO pagingDTO) {
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return employeeService.getPaingSalesHistory(idxEmployee, pagingDTO);
	}
	
	/* [jeong] 프로필 페이지로 이동 */
	@GetMapping(value = "/employee/profile.go")
	public ModelAndView profileGo(HttpSession session) {
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return employeeService.getProfile(idxEmployee);	
	}
	
	/* [jeong] 프로필 페이지로 이동 */
	@PostMapping(value = "/employee/updateProfileInfo.do")
	@ResponseBody
	public Map<String,Object> updateProfileInfoDo(
			@RequestParam String birthDate
			,@RequestParam String email
			,@RequestParam String phoneNumber
 			,HttpSession session) {
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return employeeService.updateProfileInfo(idxEmployee, birthDate, email, phoneNumber);	
	}
	
	/* [jeong] 프로필 페이지로 이동 */
	@PostMapping(value = "/employee/uploadProfileImage.do")
	@ResponseBody
	public Map<String,Object> uploadProfileImageDo(MultipartFile uploadProfileFile
			,HttpSession session) {
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return employeeService.uploadProfileImage(idxEmployee, uploadProfileFile);	
	}
	
	/* [jeong] 조직도 페이지로 이동 */
	@GetMapping(value = "/employee/group.go")
	public ModelAndView groupGo(HttpSession session) {
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return employeeService.getGroup(idxEmployee);	
	}
	
	/* [jeong] 조직도 데이터 요청 */
	@PostMapping(value = "/employee/group.do")
	@ResponseBody
	public Map<String,Object> groupDo(HttpSession session
			,@RequestParam String selectedDepartment
			,@RequestParam int page) {
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return employeeService.getGroupList(idxEmployee, selectedDepartment, page);	
	}
	
	/* [jeong] 프로필 정보 요청 */
	@PostMapping(value = "/employee/profile.do")
	@ResponseBody
	public Map<String,Object> profileDo(HttpSession session
			,@RequestParam int selectedIdxEmployee) {
		return employeeService.getProfileInfo(selectedIdxEmployee);	
	}	
	
}

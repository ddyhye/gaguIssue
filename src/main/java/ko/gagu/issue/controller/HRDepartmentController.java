package ko.gagu.issue.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.HRDepartmentDTO;
import ko.gagu.issue.service.HRDepartmentService;
import ko.gagu.issue.service.LogiDepartmentService;

@Controller
public class HRDepartmentController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	private final HRDepartmentService hrDepartmentService;
	
	public HRDepartmentController(HRDepartmentService hrDepartmentService) {
		this.hrDepartmentService=hrDepartmentService;
	}
	
	@GetMapping(value="/hrdepartment/CompanyCalendar.go")
	public String CompanyCalendar() {
		logger.info("CompanyCalendar in");
		return "HRDepartment/companyCalendar";
	}
	
	@GetMapping(value="/hrdepartment/getAllCompanyEvents.ajax")
	@ResponseBody
	public Map<String, Object> getAllCompanyEvents(Model model){
		logger.info("getAllCompanyEvents 진입");
		Map<String, Object>response=new HashMap<String, Object>();
		hrDepartmentService.getAllCompanyEvents(response,model);
		logger.info("response : {}",response);
		return response;
	}
	
	@PostMapping(value="/hrdepartment/addCompanyEvent.ajax")
	@ResponseBody
	public Map<String, Object>companyAddEvent(@RequestBody HRDepartmentDTO company){
		logger.info("companyAddEvent에 진입");
		Map<String, Object>response=new HashMap<String, Object>();
		logger.info("response : {}",response);
		hrDepartmentService.companyAddEvent(company);
		return response;		
	}
	
	@PostMapping(value="/hrdepartment/updateCompanyEvent.ajax")
	@ResponseBody
	public Map<String, Object>updateCompanyEvent(@RequestBody Map<String, Object>requestBody){
		Integer idx_company_calendar = Integer.valueOf(requestBody.get("idx_company_calendar").toString());
		logger.info("idx_company_calendar: {}",idx_company_calendar);
		
		Map<String, Object> updatedEvent = (Map<String, Object>) requestBody.get("updatedEvent");
        String cc_title = (String) updatedEvent.get("cc_title");
        String cc_start_datetime = (String) updatedEvent.get("cc_start_datetime");
        String cc_end_datetime = (String) updatedEvent.get("cc_end_datetime");
        String cc_description = (String) updatedEvent.get("cc_description");
        String cc_color = (String) updatedEvent.get("cc_color");
        
        hrDepartmentService.updateCompanyEvent(idx_company_calendar,cc_title,cc_start_datetime,cc_end_datetime,cc_description,cc_color);
        
        Map<String, Object> response = new HashMap<>();
        response.put("status", "success");
        response.put("message", "이벤트 수정이 완료되었습니다.");
		
		
		return response;
	}
	
	// [il] 근태관리 : 구일승
	@GetMapping(value="hrdepartment/employeeAttendance.go")
	public String attendance() {
		logger.info("attendance in");
		return "Hrdepartment/employeeAttendance";
	}
	
	@PostMapping(value="/hrdepartment/deleteCompanyEvent.ajax")
	@ResponseBody
	public Map<String, String>deleteCompanyEvent(@RequestBody Map<String, Object> requestBody){
		try {
	        Integer idx_company_calendar = Integer.valueOf(requestBody.get("idx_company_calendar").toString());
	        logger.info("idx_emp_calendar : {}", idx_company_calendar);	        

	        hrDepartmentService.deleteCompanyEvent(idx_company_calendar);
	        
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
	
	@GetMapping(value="/employeeManage.go")
	public ModelAndView employeeManage() {
		ModelAndView mav = new ModelAndView("HRDepartment/employeeManage");
        
		List<HRDepartmentDTO> employees = hrDepartmentService.getAllEmployees();
        logger.info("emp : "+employees);
        mav.addObject("employees", employees);
        
        return mav;
    }
	
	@PostMapping(value="/employeeInsert")
	@ResponseBody
	public Map<String, Object> createEmployee(MultipartFile profileImage,HRDepartmentDTO HRDepartment) {
	    Map<String, Object> response = new HashMap<>();
	    logger.info("employeeInsert");
	    logger.info("image : {}", profileImage);
	    logger.info("프로필 이미지 origin name >> "+profileImage.getOriginalFilename());
	    
	    try {
	        // 퇴사일을 9999-12-31로 고정
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	        Date fixedDate = sdf.parse("9999-12-31");
	        HRDepartment.setEmp_term_date(new java.sql.Date(fixedDate.getTime()));
	        
	        // 사원 등록 서비스 호출
	        hrDepartmentService.createEmployee(profileImage, HRDepartment);

	        // 성공 응답
	        response.put("status", "success");
	        response.put("message", "사원 등록 성공");
	        logger.info("사원 등록 성공");
	    } catch (Exception e) {
	        e.printStackTrace();
	        // 실패 응답
	        response.put("status", "error");
	        response.put("message", "사원 등록 실패: " + e.getMessage());
	        logger.error("사원 등록 실패: " + e.getMessage());
	    }
		return response;
	}
	
	@GetMapping("/getnewIdx")
	@ResponseBody
	public String getnewIdx() {
		String idx = hrDepartmentService.getnewIdx();

		return idx;
	}
			

}

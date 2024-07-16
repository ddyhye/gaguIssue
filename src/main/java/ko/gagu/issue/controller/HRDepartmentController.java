package ko.gagu.issue.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
//	
//	// [il] 근태관리 : 구일승
//	@GetMapping(value="hrdepartment/employeeAttendance.go")
//	public String attendance() {
//		logger.info("attendance in");
//		return "Hrdepartment/employeeAttendance";
//	}
	
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
	
	// [il] 근태 내역확인
	@GetMapping(value="/hrdepartment/attendanceOfAllEmployees.go")
	public String attendanceOfAllEmployees() {
		return "HRDepartment/employeeAttendance";
	}
	
	@PostMapping(value="/hrdepartment/attendanceOfAllEmployees.ajax")
	@ResponseBody
	public Map<String, Object>getAttendanceOfAllEmployees(String department,String date,String page, String cnt){
		logger.info("페이지 당 보여줄 갯수 : "+cnt);
		logger.info("요청 페이지 : " +page);
		logger.info("선택된 부서 : {}",department);
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
		
		Map<String, Object>map = hrDepartmentService.departmentAttendanceList(formattedDate,currentPage,pagePerCnt,department);
		logger.info("map : {}",map);
		
		return map;
	}
	
	@PostMapping(value="/hrdepartment/updateAttendanceOfAllEmployees.ajax")
	@ResponseBody
	public void updateAttendanceOfAllEmployees(Integer idx_employee, String ah_status, Integer idx_attendance){
		logger.info("idx_employee : {}",idx_employee);
		logger.info("ah_status : {}",ah_status);
		logger.info("idx_attendance, {}",idx_attendance);
		hrDepartmentService.updateAttendanceOfAllEmployees(idx_employee,ah_status,idx_attendance);
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
	    Map<String, Object> map = new HashMap<>();
	    logger.info("employeeInsert");
	    logger.info("image : {}", profileImage);
	    logger.info("프로필 이미지 origin name >> "+profileImage.getOriginalFilename());
	    
	    try {
	        // 퇴사일을 9999-12-31로 고정
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	        Date fixedDate = sdf.parse("9999-12-31");
	        HRDepartment.setEmp_term_date(new java.sql.Date(fixedDate.getTime()));
	        
	        // 사원 등록 서비스 호출
	        String msg = hrDepartmentService.createEmployee(profileImage, HRDepartment);

	        // 성공 응답
	        map.put("status", "success");
	        map.put("message", msg);
	        logger.info(msg);
	    } catch (Exception e) {
	        e.printStackTrace();
	        // 실패 응답
	        map.put("status", "error");
	        map.put("message", "사원 등록 실패: " + e.getMessage());
	        logger.error("사원 등록 실패: " + e.getMessage());
	    }
		return map;
	}
	
	@GetMapping("/getnewIdx")
	@ResponseBody
	public String getnewIdx() {
		String idx = hrDepartmentService.getnewIdx();
		logger.info("idx :{}",idx);
		return idx;
	}
	
	
	
	
	// 직원 상세보기 
	@PostMapping(value="/employeeDetail.ajax")
	@ResponseBody
	public Map<String, Object> employeeDetail(String emp_id) {
	    Map<String, Object> map = new HashMap<>();
	    
		return hrDepartmentService.getEmpDetail(map, emp_id);
	}
	// 직원 상세보기 - 프로필 사진 경로 
	@RequestMapping(value="/photo/{fileName}")
	public ResponseEntity<Resource> profileView(@PathVariable String fileName) {
		//logger.info("fileName: "+fileName);
		return hrDepartmentService.profileView(fileName);
	}
	   
	@PostMapping(value="/annualDetail.ajax")
	@ResponseBody
	public Map<String, Object> annualDetail(String emp_id) {
	    Map<String, Object> map = new HashMap<>();
	    
		return hrDepartmentService.getannualDetail(map, emp_id);
	}
	
	@RequestMapping(value = "/searchEmployee", method = RequestMethod.POST)
	@ResponseBody
	public List<HRDepartmentDTO> searchEmployee(@RequestParam("searchInput") String searchInput, @RequestParam("department") String department) {
	    return hrDepartmentService.searchEmployee(searchInput, department);
	}
	
	 @PostMapping(value = "/updateEmployeeDetails")
	    @ResponseBody
	    public Map<String, Object> updateEmployeeDetails(HRDepartmentDTO employee) {
	        Map<String, Object> response = new HashMap<>();
	        logger.info("이메일 : " + employee.getEmp_email());
	        logger.info("이미지 : " +employee.getProfileImage().getOriginalFilename());
	        logger.info("사원번호 : " +employee.getEmp_id());
	        logger.info("주소 : "+employee.getEmp_address());
	        logger.info("원래 이미지 이름 : " +employee.getOriginImage());
	        
	        
	        try {
	            String msg = hrDepartmentService.updateEmployee(employee, employee.getProfileImage());
	            response.put("success", true);
	            response.put("message", msg);
	            logger.info("Employee updated: " + msg);
	        } catch (Exception e) {
	            e.printStackTrace();
	            response.put("success", false);
	            response.put("message", "사원 정보 업데이트 실패: " + e.getMessage());
	            logger.error("사원 정보 업데이트 실패: " + e.getMessage());
	        }
	        return response;
	    }
	

			

}

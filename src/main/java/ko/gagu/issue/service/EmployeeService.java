package ko.gagu.issue.service;


import java.util.Date;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;

import ko.gagu.issue.dao.EmployeeDAO;
import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.HRDepartmentDTO;
import ko.gagu.issue.dto.PagingDTO;
import ko.gagu.issue.util.FileManagerUtil;
import ko.gagu.issue.util.SessionUtil;

@Service
public class EmployeeService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	//@Autowired EmployeeDAO employeeDao;
	private final EmployeeDAO dao;
	private final PasswordEncoder encoder;
    private final FileManagerUtil fm;
    private final SessionUtil su;
    
    public EmployeeService (FileManagerUtil fm, EmployeeDAO dao, PasswordEncoder encoder, SessionUtil su) {
    	this.dao = dao;
    	this.encoder = encoder;
    	this.fm = fm;
    	this.su = su;
    }

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
	
	public void getEmployeeAttendance(Map<String, Object> response, Integer idx_employee, Model model) {

		
		List<EmployeeDTO> events=dao.getEmployeeAttendance(idx_employee);
		logger.info("events: {}",events);
		
		response.put("employeeAttendance", events);
	}


	

	

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
	// [tae] - first_login 여부에 따라 상태변경
    public ModelAndView login(HttpServletRequest request, String emp_id, String emp_pw, RedirectAttributes rAttr, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		logger.info("id :{}", emp_id);
		logger.info("pw : {}", emp_pw);
		
		String memPw = dao.login(emp_id);
		logger.info("mem_Pw = " + memPw);
		if (su.isSessionExpired(session)) {
			// 세션이 만료되었거나 새로운 세션이 필요한 경우
			logger.info("세션 새로 만들기");
			session.invalidate();
			session = request.getSession(true);
			session.setMaxInactiveInterval(3600); // 세션 타임아웃 설정 (30분)
		}
		if (encoder.matches(emp_pw, memPw)) {
			EmployeeDTO dto = dao.employeeData(emp_id);

			// 첫 로그인 체크 및 업데이트 하기
			if (dto.getFirst_login() == 0) {
				mav.setViewName("redirect:/findPW.go");  // 비밀번호 변경 페이지로 이동
				session.setAttribute("loginInfo", dto);
				session.setAttribute("emp_id", emp_id);
				session.setAttribute("idxEmployee", dto.getIdx_employee());
				session.setAttribute("employeeDTO", dto);
				session.setAttribute("idxTitle", dto.getIdx_title());
				mav.addObject("msg", "첫 로그인입니다. 비밀번호를 변경해주세요.");
				rAttr.addFlashAttribute("msg","첫 로그인입니다. 비밀번호를 변경해주세요.");
			} else {
				mav.setViewName("redirect:/main/dashboard.go");
				session.setAttribute("loginInfo", dto);
				session.setAttribute("emp_id", emp_id);
				session.setAttribute("idxEmployee", dto.getIdx_employee());
				session.setAttribute("employeeDTO", dto);
				session.setAttribute("idxTitle", dto.getIdx_title());
				mav.addObject("msg", "환영합니다.");
			}
		} else {
			mav.setViewName("redirect:/login.go");
			rAttr.addFlashAttribute("msg", "사원번호 및 비밀번호를 확인해 주세요!");
		}
		
		return mav;
	}
	
	public void updateFirstLoginStatus(String emp_id, int first_login) {
		dao.updateFirstLoginStatus(emp_id, first_login);
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


	public Map<String, Object> employeeGetIdxTitle(Integer idx_employee) {
		Map<String, Object> response = new HashMap<>();
	    
	    int idx_title = dao.getEmployeeTitle(idx_employee);
	    response.put("title", idx_title);
	    logger.info("title : {}", idx_title);
	    
	    return response; 
	}

	public Map<String, Object> departmentAttendanceList(int idx_employee, String formattedDate, int currentPage,
			int pagePerCnt) {
		// [il] 부서번호 가져오기
		// [il] 현재 보여지는 페이지 : currentPage
		// [il] 페이지당 보여줄 개수 : pagePerCnt
		int idx_department = dao.getDepartmentIdxByEmployee(idx_employee);
		int start = (currentPage - 1) * pagePerCnt;
		Map<String, Object>map=new HashMap<String, Object>();
		List<EmployeeDTO>attendanceList=dao.departmentAttendanceList(idx_employee,idx_department,formattedDate,start,pagePerCnt);
		logger.info("attendanceList : {}",attendanceList);
		map.put("attendanceList", attendanceList);
		map.put("currentPage", currentPage);
		map.put("totalPages",dao.allCountPage(idx_department,formattedDate,pagePerCnt));
		
		return map;
	}



	
	/* [jeong] 매출 관리 페이지로 이동 */
	public ModelAndView getSalesHistory(int idxEmployee) {
		ModelAndView mav = new ModelAndView("common/salesHistory");
        // 현재 날짜 가져오기
        LocalDate currentDate = LocalDate.now();
        
        // 원하는 날짜 형식 지정
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        
        // 현재 날짜를 지정한 형식으로 포맷팅
        String now = currentDate.format(formatter);
		PagingDTO pagingDTO = new PagingDTO();
		pagingDTO.setPage(1);
		pagingDTO.setEndDate(now);
		var salesDataList = dao.getSalesHistory(pagingDTO);
		int totalPages = dao.getSalesHistoryTotalPages(pagingDTO);
		
		mav.addObject("salesDataList", salesDataList);
		mav.addObject("success", totalPages > 0 ? true : false);
		mav.addObject("totalPages", totalPages);
		return mav;
	}

	/* [jeong] 매출 관리 페이징 처리후 매출 데이터를 응답 */
	public Map<String, Object> getPaingSalesHistory(int idxEmployee, PagingDTO pagingDTO) {
		var response = new HashMap<String, Object>();
		int totalPages = dao.getSalesHistoryTotalPages(pagingDTO);
		int page = pagingDTO.getPage();
		page = page > totalPages ? totalPages == 0 ? 1 : totalPages : page;
		pagingDTO.setPage(page);
		
		var salesDataList = dao.getSalesHistory(pagingDTO);
		
		response.put("salesDataList", salesDataList);
		response.put("success", totalPages > 0 ? true : false);
		response.put("totalPages", totalPages);
		response.put("page", page);
		return response;
	}

	/* [jeong] 프로필 페이지로 이동 */
	public ModelAndView getProfile(int idxEmployee) {
		ModelAndView mav = new ModelAndView("employee/profile");
		EmployeeDTO employeeInfo = dao.getEmployeeInfo(idxEmployee);
		mav.addObject("employeeInfo", employeeInfo);
		return mav;
	}

	/* [jeong] 프로필 정보 수정 */
	public Map<String, Object> updateProfileInfo(int idxEmployee, String birthDate
			,String email, String phoneNumber) {
		var response = new HashMap<String, Object>();
		dao.updateProfileInfo(idxEmployee, birthDate, email, phoneNumber);
		return response;
	}

	/* [jeong] 프로필 사진 변경 */
	public Map<String, Object> uploadProfileImage(int idxEmployee, MultipartFile uploadProfileFile) {
		var response = new HashMap<String, Object>();
		String profileImageName = fm.saveFile(uploadProfileFile, "profile_picture");
		int idxFile = dao.isProfileImage(idxEmployee);
		if (idxFile != 0) {
			dao.updateProfileImage(idxFile, idxEmployee, profileImageName);
		} else {
			dao.insertProfileImage(idxEmployee, profileImageName);
		}		
		response.put("profileImageName", profileImageName);
		return response;
	}

	/* [jeong] 조직도 페이지로 이동 */
	public ModelAndView getGroup(int idxEmployee) {
		ModelAndView mav = new ModelAndView("employee/group");
		List<Map<String, String>> temp = dao.getOrganization();
		int totalPages = dao.getGoTotalPages(idxEmployee);
		int page = 1; 
		page = page > totalPages ? totalPages == 0 ? 1 : totalPages : page; 
		List<EmployeeDTO> employeeList = dao.getEmployeeList(idxEmployee, page);
        Map<String, String> rootNode = new HashMap<String, String>();
        rootNode.put("type", "company");
        rootNode.put("id", "gaguissue");
        rootNode.put("parent", "#");
        rootNode.put("text", "가구있수");
        temp.add(rootNode);
		ObjectMapper mapper = new ObjectMapper();
		String organization = "";
        try {
            organization = mapper.writeValueAsString(temp);
        } catch (Exception e) {
            e.printStackTrace();
        }
        mav.addObject("organization", organization);
        mav.addObject("employeeList", employeeList);
        mav.addObject("totalPages", totalPages);
		return mav;
	}

	/* [jeong] 조직도 데이터 반환 */
	public Map<String,Object> getGroupList(int idxEmployee, String selectedDepartment, int page) {
		var response = new HashMap<String, Object>();
		int totalPages = dao.getTotalPages(selectedDepartment);  
		page = page > totalPages ? totalPages == 0 ? 1 : totalPages : page; 
		List<EmployeeDTO> employeeList = dao.getAJAXEmployeeList(selectedDepartment, page);
		response.put("employeeList", employeeList);
		response.put("totalPages", totalPages);
		response.put("page", page);
		return response;
	}

	/* [jeong] 프로필 상세보기 정보 불러오기 */
	public Map<String, Object> getProfileInfo(int selectedIdxEmployee) {
		var response = new HashMap<String, Object>();
		EmployeeDTO employeeProfile = dao.getEmployeeProfile(selectedIdxEmployee);
		response.put("employeeProfile", employeeProfile);
		return response;
	}

	public EmployeeDTO findEmployee(String emp_id, String emp_name) {
        return dao.findEmployeeByIdAndName(emp_id, emp_name);
    }
	
	public void updateEmployeePassword(String emp_id, String newPassword) {
        // 직원 정보를 emp_id를 통해 조회
        EmployeeDTO employee = dao.findEmployeeById(emp_id);

        if (employee != null) {
            // 새 비밀번호를 암호화하여 설정
            String encodedPassword = encoder.encode(newPassword);
            employee.setEmp_pw(encodedPassword);

            // DAO를 통해 비밀번호 업데이트
            dao.updateEmployeePassword(employee);
        }
    }

	
	

}

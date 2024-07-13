package ko.gagu.issue.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import ko.gagu.issue.dao.HRDepartmentDAO;
import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.HRDepartmentDTO;
import ko.gagu.issue.dto.Leave_usage_tbDTO;

@Service
public class HRDepartmentService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	private final HRDepartmentDAO hrDepartmentDao;
	private final PasswordEncoder passwordEncoder;
	
	public HRDepartmentService(HRDepartmentDAO hrDepartmentDao, PasswordEncoder passwordEncoder) {
        this.hrDepartmentDao = hrDepartmentDao;
        this.passwordEncoder = passwordEncoder;
    }
	
	@Value("${spring.servlet.multipart.location}")
    private String uploadDir;
	
	public void getAllCompanyEvents(Map<String, Object> response, Model model) {
		HRDepartmentDTO hrDepartmentDTO= new HRDepartmentDTO();
		model.addAttribute("company",hrDepartmentDTO);
		logger.info("hrDepartmentDTO : {}",hrDepartmentDTO);
		List<HRDepartmentDTO>events=hrDepartmentDao.getAllCompanyEvents();
		response.put("CompanyEvents", events);
	}

	public void companyAddEvent(HRDepartmentDTO company) {
		hrDepartmentDao.companyAddEvent(company);
	}

	public void updateCompanyEvent(Integer idx_company_calendar, String cc_title, String cc_start_datetime,
			String cc_end_datetime, String cc_description, String cc_color) {
		hrDepartmentDao.updateCompanyEvent(idx_company_calendar,cc_title,cc_start_datetime,cc_end_datetime,cc_description,cc_color);
	}

	public void deleteCompanyEvent(Integer idx_company_calendar) {
		hrDepartmentDao.deleteCompanyEvent(idx_company_calendar);
	}

	public List<HRDepartmentDTO> getAllEmployees() {
        return hrDepartmentDao.getAllEmployees();
    }

	@Transactional
	public String createEmployee(MultipartFile profileImage, HRDepartmentDTO hRDepartment) {
		
		String hashedPassword = passwordEncoder.encode(hRDepartment.getEmp_pw());
		hRDepartment.setEmp_pw(hashedPassword);
        
		// 내가 등록하려는 사원 번호를 디비에 전송해서, 
		// 디비에 사원 번호가 존재한다면 isEmpty의 값이 0 보다 크다.
		// 쿼리문 : select count(*) from employee_tb where emp_id = #{param1}
		int isEmpty = hrDepartmentDao.isEmpty(hRDepartment.getEmp_id());
		if (isEmpty > 0) {
			return "이미 등록된 사원번호입니다...";
		} else {
			// 누군가 먼저 등록한 emp_id가 아닐 때 사원 등록할 수 있음. 즉, 동시 사원 생성 막음
			hrDepartmentDao.createEmployee(hRDepartment);
		}
		
	    if (profileImage != null && !profileImage.isEmpty()) {
            try {
				uploadProfileImage(profileImage, hRDepartment.getIdx_employee());
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}	        
        // 휴가 관련 정보 저장
        hrDepartmentDao.insertLeaveAccruals(hRDepartment);
        
        return "사원 등록에 성공하였습니다.";
    } 
	


	public void uploadProfileImage(MultipartFile profileImage, int idx_employee) throws Exception {
        // 파일 이름 생성
        String fileName = UUID.randomUUID().toString() + "_" + profileImage.getOriginalFilename();
        
		Path filePath = Paths.get(uploadDir+"/profile_picture", fileName);

        // 파일 저장
        Files.createDirectories(filePath.getParent());
        Files.copy(profileImage.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

        // 파일의 URL 생성
        //String imageUrl = "/images/profile/" + fileName;

        // 데이터베이스에 파일 경로 저장 (DAO 호출)
        if(hrDepartmentDao.checkProfile(idx_employee)>0) {
        	hrDepartmentDao.updateProfileImagePath(profileImage.getOriginalFilename(), fileName, hrDepartmentDao.getIdxFile(idx_employee));
        }else {
        	hrDepartmentDao.saveProfileImagePath(profileImage.getOriginalFilename(), fileName, idx_employee);
        }

        //return imageUrl;
    }

	public String getnewIdx() {
		return hrDepartmentDao.getnewIdx();
	}

	
	
	
	// 직원 상세보기
	public Map<String, Object> getEmpDetail(Map<String, Object> map, String emp_id) {
		
		HRDepartmentDTO employee = hrDepartmentDao.getEmployeeById(emp_id);
		
		// emp_id를 통해 직원의 모든 정보를 불러오자.\
		map.put("idx_employee", employee.getIdx_employee());
		map.put("emp_id", employee.getEmp_id());
        map.put("emp_name", employee.getEmp_name());
        map.put("emp_phone_number", employee.getEmp_phone_number());
        map.put("emp_birth_date", employee.getEmp_birth_date());
        map.put("emp_email", employee.getEmp_email());
        map.put("emp_hire_date", employee.getEmp_hire_date());
        map.put("emp_term_date", employee.getEmp_term_date());
        map.put("emp_status", employee.getEmp_status());
        map.put("de_name", employee.getDe_name());
        map.put("title_name", employee.getTitle_name());
        map.put("leave_days", employee.getLeave_days());
        map.put("emp_address", employee.getEmp_address());
        map.put("photo_url", employee.getPhoto_url());
        
		
		return map;
	}

	
	public ResponseEntity<Resource> profileView(String fileName) {
	      // 특정 경로에서 파일을 읽어와 Resource로 만든다.
	      Resource resource = new FileSystemResource(uploadDir+"/profile_picture/"+fileName);
	      HttpHeaders header = new HttpHeaders();
	      
	      // 보내질 파일의 형태를 지정해 준다. (헤더에)
	      // ex) image/gif, image/png, image/jpg, image/jpeg
	      try {
	         String type = Files.probeContentType(Paths.get(uploadDir+"/profile_picture/"+fileName));   //경로를 주면 해당 파일의 mime-type 을 알아낸다.
	         logger.info("mime-type: "+type);
	         header.add("content-type", type);
	      } catch (IOException e) {
	         e.printStackTrace();
	      }   
	      
	      // 보낼 내용, 헤더, 상태(200 또는 OK 는 정상이라는 뜻)
	      return new ResponseEntity<Resource>(resource, header, HttpStatus.OK);      //HttpStatus.OK는 200과 같음 (정상)
	   }

	public Map<String, Object> getannualDetail(Map<String, Object> map, String emp_id) {
	    Map<String, Object> resultMap = new HashMap<>();

	    // HRDepartmentDTO 객체를 생성하고 데이터를 설정합니다.
	    HRDepartmentDTO annual = hrDepartmentDao.getAnnualLeaveInfoById(emp_id);
	    annual.setAnnual_leave_usage_history(hrDepartmentDao.gethistory(annual.getIdx_employee()));
	    resultMap.put("DTO", annual);
//	    if (annual != null) {
//	        resultMap.put("annual_emp_id", annual.getEmp_id());
//	        resultMap.put("annual_emp_name", annual.getEmp_name());
//	        resultMap.put("annual_emp_phone_number", annual.getEmp_phone_number());
//	        resultMap.put("annual_emp_birth_date", annual.getEmp_birth_date());
//	        resultMap.put("annual_emp_email", annual.getEmp_email());
//	        resultMap.put("annual_emp_address", annual.getEmp_address());
//	        resultMap.put("annual_leave_days", annual.getLeave_days());
//	        resultMap.put("annual_usage_days", annual.getUsage_days());
//	        
//	        // 연차 사용 내역을 리스트로 변환하여 resultMap에 추가합니다.
//	        List<Map<String, Object>> leaveUsageHistory = new ArrayList<>();
//	        if (annual.getAnnual_leave_usage_history() != null) {
//	            logger.info("Annual leave usage history found for employee ID: {}", emp_id);
//	            
//
//	            for (Leave_usage_tbDTO usage : annual.getAnnual_leave_usage_history()) {
//	                Map<String, Object> historyMap = new HashMap<>();
//	                historyMap.put("lu_start_date", usage.getLu_start_date());
//	                historyMap.put("lu_end_date", usage.getLu_end_date());
//	                historyMap.put("lu_usage_days", usage.getLu_usage_days());
//	                leaveUsageHistory.add(historyMap);
//	                logger.info(""+usage.getLu_usage_days());
//	            }
//	        }
//	        
//	        resultMap.put("annual_leave_usage_history", leaveUsageHistory);
//	    }

	    return resultMap;
	}


	
	public Map<String, Object> departmentAttendanceList(String formattedDate, int currentPage, int pagePerCnt,String department) {
		
		// [il] 현재 보여지는 페이지 : currentPage
		// [il] 페이지당 보여줄 개수 : pagePerCnt
		int start = (currentPage - 1) * pagePerCnt;
		Map<String, Object>map=new HashMap<String, Object>();
		List<EmployeeDTO>attendanceList=hrDepartmentDao.departmentAttendanceList(formattedDate,start,pagePerCnt,department);
		logger.info("attendanceList : {}",attendanceList);
		map.put("attendanceList", attendanceList);
		map.put("currentPage", currentPage);
		map.put("totalPages",hrDepartmentDao.allCountPage(department,formattedDate,pagePerCnt));
		
		return map;
	}

	
	public List<HRDepartmentDTO> searchEmployee(String searchInput, String department) {
	    return hrDepartmentDao.searchEmployee(searchInput, department);
	}
	
	

		@Transactional
		public String updateEmployee(HRDepartmentDTO employee, MultipartFile profileImage) {
		    try {
		        // 프로필 이미지 업데이트 처리
		        if (profileImage != null && !profileImage.isEmpty()) {
		        	if(!employee.getOriginImage().equals("user.jpg")) {
		        		deleteProfileImage(employee.getOriginImage());
		        	}
		        	
		            uploadProfileImage(profileImage, employee.getIdx_employee());
		        }
	
		        // 직원 정보 업데이트
		        int rowsUpdated = hrDepartmentDao.updateEmployee(employee);
		        logger.info(rowsUpdated+"");
		        if (rowsUpdated > 0) {
		            return "사원 정보가 성공적으로 업데이트되었습니다.";
		        } else {
		            return "사원 정보를 업데이트하는데 실패했습니다. 사원 번호를 확인하세요.";
		        }
		    } catch (Exception e) {
		        logger.error("사원 정보 업데이트 실패: " + e.getMessage(), e);
		        return "사원 정보 업데이트 중 오류가 발생했습니다.";
		    }
		}

		private void deleteProfileImage(String originImage) {
			File file = new File(uploadDir+"/profile_picture", originImage);
			if(file.exists()) {
				logger.info(originImage+"삭제");
				file.delete();
			}
			
		}

		public void updateAttendanceOfAllEmployees(Integer idx_employee, String ah_status,Integer idx_attendance) {
			hrDepartmentDao.updateAttendanceOfAllEmployees(idx_employee,ah_status,idx_attendance);
		}
	
	
	
}


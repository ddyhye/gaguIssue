package ko.gagu.issue.service;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import ko.gagu.issue.dao.HRDepartmentDAO;
import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.HRDepartmentDTO;

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
	public void createEmployee(MultipartFile profileImage, HRDepartmentDTO hRDepartment) {
		
		String hashedPassword = passwordEncoder.encode(hRDepartment.getEmp_pw());
		hRDepartment.setEmp_pw(hashedPassword);
        
	    hrDepartmentDao.createEmployee(hRDepartment);
	    if (profileImage != null && !profileImage.isEmpty()) {
            try {
				uploadProfileImage(profileImage, hRDepartment.getIdx_employee());
			} catch (Exception e) {
				e.printStackTrace();
			}
	        }	        
	        // 휴가 관련 정보 저장
	        hrDepartmentDao.insertLeaveAccruals(hRDepartment);
	    } 


	public String uploadProfileImage(MultipartFile profileImage, int idx_employee) throws Exception {
        // 파일 이름 생성
        String fileName = UUID.randomUUID().toString() + "_" + profileImage.getOriginalFilename();
        
		Path filePath = Paths.get(uploadDir, fileName);

        // 파일 저장
        Files.createDirectories(filePath.getParent());
        Files.copy(profileImage.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

        // 파일의 URL 생성
        String imageUrl = "/images/profile/" + fileName;

        // 데이터베이스에 파일 경로 저장 (DAO 호출)
        hrDepartmentDao.saveProfileImagePath(profileImage.getOriginalFilename(), fileName, idx_employee);

        return imageUrl;
    }

	public String getnewIdx() {
		return hrDepartmentDao.getnewIdx();
	}

	
	
	
	// 직원 상세보기
	public Map<String, Object> getEmpDetail(Map<String, Object> map, String emp_id) {
		
		HRDepartmentDTO employee = hrDepartmentDao.getEmployeeById(emp_id);
		
		// emp_id를 통해 직원의 모든 정보를 불러오자.
		map.put("emp_id", employee.getEmp_id());
        map.put("emp_name", employee.getEmp_name());
        map.put("emp_phone_number", employee.getEmp_phone_number());
        map.put("emp_birth_date", employee.getEmp_birth_date());
        map.put("emp_email", employee.getEmp_email());
        map.put("de_name", employee.getDe_name());
        map.put("title_name", employee.getTitle_name());
        map.put("leave_days", employee.getLeave_days());
        map.put("emp_address", employee.getEmp_address());
        map.put("photo_url", employee.getPhoto_url());
		
		return map;
	}
	
	
}


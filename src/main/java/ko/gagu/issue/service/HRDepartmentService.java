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
	
	public HRDepartmentService(HRDepartmentDAO hrDepartmentDao) {
		this.hrDepartmentDao=hrDepartmentDao;
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
	    hrDepartmentDao.createEmployee(hRDepartment);
	    // if문, 기본 이미지 등록 시 파일 업로드를안 해도 됨.
//	    if (condition) {
//			
//		} else {
//			
//		}
	    try {
	    	uploadProfileImage(profileImage, hRDepartment.getIdx_employee());
	    } catch (Exception e) {
	    	e.printStackTrace();
	    }
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
}


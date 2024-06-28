package ko.gagu.issue.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

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

	public void createEmployee(EmployeeDTO employee) {
		hrDepartmentDao.createEmployee(employee);
		
	}

	

	

	


}

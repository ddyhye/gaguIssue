package ko.gagu.issue.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.HRDepartmentDTO;

@Mapper
public interface HRDepartmentDAO {

	List<HRDepartmentDTO> getAllCompanyEvents();

	void companyAddEvent(HRDepartmentDTO company);

	void updateCompanyEvent(Integer idx_company_calendar, String cc_title, String cc_start_datetime,
			String cc_end_datetime, String cc_description, String cc_color);

	void deleteCompanyEvent(Integer idx_company_calendar);

}

package ko.gagu.issue.service;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import ko.gagu.issue.dao.SupportDepartmentDAO;
import ko.gagu.issue.dto.PagingDTO;

@Service
public class SupportDepartmentService {
	
	private final Logger logger = LoggerFactory.getLogger(SupportDepartmentService.class);
	private final SupportDepartmentDAO dao;
	
	public SupportDepartmentService(SupportDepartmentDAO dao) {
		this.dao = dao;
	}



}

package ko.gagu.issue.employee.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ko.gagu.issue.employee.dao.EmployeeDAO;
import ko.gagu.issue.employee.dto.EmployeeDTO;

@Service
public class EmployeeService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired EmployeeDAO employeeDao;

	public void getCalendarEvents(Map<String, Object> response) {
		List<EmployeeDTO> events = employeeDao.getCalendarEvents();
		response.put("calendarEvents", events);		
	}

}

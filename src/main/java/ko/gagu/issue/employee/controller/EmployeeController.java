package ko.gagu.issue.employee.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ko.gagu.issue.employee.service.EmployeeService;

@Controller
public class EmployeeController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired EmployeeService employeeService;
	
	@RequestMapping(value="/employee/calendar.go")
	public String calendar() {
		logger.info("calendar in");
		return "employee/calendar";
	}
	
	@RequestMapping(value="/employee/getAllEvents.ajax")
	@ResponseBody
	public Map<String, Object> getAllEvents(){
		Map<String, Object>response = new HashMap<String, Object>();
		employeeService.getCalendarEvents(response);
		logger.info("response : {}"+response);
		return response;
	}

}

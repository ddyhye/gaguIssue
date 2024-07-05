package ko.gagu.issue.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ko.gagu.issue.dto.PagingDTO;
import ko.gagu.issue.service.SupportDepartmentService;

@Controller
public class SupportDepartmentController {
	
	private final Logger logger = LoggerFactory.getLogger(SupportDepartmentController.class);
	
	private final SupportDepartmentService service;
	
	public SupportDepartmentController(SupportDepartmentService service) {
		this.service = service;
	}

}

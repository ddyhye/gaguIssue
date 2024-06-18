package ko.gagu.issue.document.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DocumentController {
	
	Logger logger = LoggerFactory.getLogger(getClass());

	@GetMapping(value = "/document/formSelect.go")
	public ModelAndView documentFormSelectGo() {
		ModelAndView mav = new ModelAndView("common/documentFormSelect");
		return mav;
	}	
	
	@GetMapping(value = "/document/write.go")
	public ModelAndView documentWriteGo() {
		ModelAndView mav = new ModelAndView("common/documentWrite");
		return mav;
	}
}

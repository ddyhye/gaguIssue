package ko.gagu.issue.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.service.DocumentService;


@Controller
public class DocumentController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired DocumentService document_service;

	@GetMapping(value = "/document/formSelect.go")
	public ModelAndView documentFormSelectGo(String msg) {
		ModelAndView mav = new ModelAndView("common/documentFormSelect");
		mav.addObject("msg", msg);
		return mav;
	}

	@GetMapping(value = "/document/{form_name}/write.go")
	public ModelAndView documentWriteGo(@PathVariable String form_name
			,HttpSession session) {
		logger.info("form_name : {}", form_name);
		// int idxEmployee = session.getAttribute("???");
		int idxEmployee = 2;
		return document_service.fetchFormTemplate(form_name, idxEmployee);
	}
	
	@PostMapping(value = "/document/write.do")
	@ResponseBody
	public Map<String, Object> documentWriteDo(@RequestParam("file") MultipartFile file, 
			@RequestParam("json") String json, HttpSession session) {
		logger.info("작성한 문서의 내용 json : {}", json);
		logger.info("작성한 문서의 파일 객체 : {}", file);
		Map<String, Object> response = new HashMap<>();
		if (file == null || file.isEmpty() ||  !StringUtils.hasText(json)) {
			logger.info("문서 작성 중 오류 발생");
			response.put("success", false);
		} else {
			// int idxEmployee = session.getAttribute("???");
			int idxEmployee = 2;
			document_service.documentWrite(file, json, idxEmployee, response);
		}	
		return response;
	} 
	
}

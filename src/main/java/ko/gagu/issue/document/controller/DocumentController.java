package ko.gagu.issue.document.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import ko.gagu.issue.document.service.DocumentService;


@Controller
public class DocumentController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired DocumentService document_service;

	@GetMapping(value = "/document/formSelect.go")
	public ModelAndView documentFormSelectGo() {
		ModelAndView mav = new ModelAndView("common/documentFormSelect");
		return mav;
	}

	@GetMapping(value = "/document/{form_name}/write.go")
	public ModelAndView documentWriteGo(@PathVariable String form_name) {
		logger.info("form_name : {}", form_name);
		return document_service.getFormSrc(form_name);
	}
	
	@PostMapping(value = "/document/write.do")
	public ModelAndView documentWriteDo(@RequestParam("file") MultipartFile file, 
			@RequestParam("json") MultipartFile json, HttpSession session) {
		logger.info("json : {}", json);
		logger.info("file : {}", file);
		/*
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> jsonData;
		try {
			jsonData = objectMapper.readValue(json.getInputStream(), Map.class);
			document_service.documentWrite(file, jsonData, session);
			return "문서 저장에 성공했습니다";
		} catch (IOException e) {
			e.printStackTrace();
		}
		*/
		
		return document_service.documentWrite(file, json, session);
	} 
	
}

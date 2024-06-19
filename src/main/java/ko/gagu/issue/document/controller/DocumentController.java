package ko.gagu.issue.document.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.ResponseEntity;
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
	
	@Autowired DocumentService service;

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

	@PostMapping(value = "/document/write.do")
	@ResponseBody
	public String documentWriteDo(@RequestParam("file") MultipartFile file, @RequestParam("json") MultipartFile json) {
		logger.info("json : {}", json);
		logger.info("file : {}", file);
		
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> jsonData;
		try {
			jsonData = objectMapper.readValue(json.getInputStream(), Map.class);
			service.documentWrite(file, jsonData);
			return "문서 저장에 성공했습니다";
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "문서 저장에 실패했습니다";
	}		
	
}

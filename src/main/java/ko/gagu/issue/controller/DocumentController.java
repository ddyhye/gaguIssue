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
	
	@Autowired DocumentService ds;

	@GetMapping(value = "/document/formSelect.go")
	public ModelAndView documentFormSelectGo(String msg) {
		ModelAndView mav = new ModelAndView("common/documentFormSelect");
		mav.addObject("msg", msg);
		return mav;
	}

	@GetMapping(value = "/document/{idxDc}/write.go")
	public ModelAndView documentWriteGo(@PathVariable String idxDc
			,HttpSession session) {
		logger.info("form_name : {}", idxDc);
		// int idxEmployee = session.getAttribute("???");
		int idxEmployee = 1;
		return ds.fetchFormTemplate(idxDc, idxEmployee);
	}
	
	@GetMapping(value = "/document/{idxApproval}/detail.go")
	public ModelAndView documentDetailGo(@PathVariable String idxApproval, HttpSession session) {
		logger.info("idxApproval : {}", idxApproval);

		
		// int idxEmployee = session.getAttribute("???");
		int accessIdxEmployee = 1;
		return ds.fetchDocumentPage(accessIdxEmployee, idxApproval);
	}
	
	@PostMapping(value = "/document/write.do")
	@ResponseBody
	public Map<String, Object> documentWriteDo(@RequestParam("attachmentFiles") MultipartFile[] attachmentFiles
			,@RequestParam("documentFile") MultipartFile documentFile 
			,@RequestParam("documentData") String documentData
			,@RequestParam("approvalLine") String approvalLine
			,HttpSession session
			 ) {
		logger.info("작성한 문서의 내용 attachmentFiles : {}", attachmentFiles);
		logger.info("작성한 문서의 파일 객체 documentfile : {}", documentFile);
		Map<String, Object> response = new HashMap<>();
		if (documentFile == null || documentFile.isEmpty()
				|| !StringUtils.hasText(documentData) 
				|| !StringUtils.hasText(approvalLine)) {
			logger.info("문서 작성 중 오류 발생");
			response.put("success", false);
		} else {
			// int idxEmployee = session.getAttribute("???");
			int idxEmployee = 1;
			ds.documentWrite(attachmentFiles, documentFile, documentData, approvalLine, idxEmployee, response);
		}	
		return response;
	} 
	
}

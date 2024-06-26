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
	
	private final DocumentService ds;
	
	public DocumentController(DocumentService ds) {
		this.ds = ds;
	}
	
	/* [jeong] 양식 선택 페이지로 이동 */
	@GetMapping(value = "/document/formSelect.go")
	public ModelAndView documentFormSelectGo(String msg) {
		ModelAndView mav = new ModelAndView("common/documentFormSelect");
		mav.addObject("msg", msg);
		return mav;
	}

	/* [jeong] 문서 양식 번호를 입력 받고 해당 양식 문서 파일을 불러와 작성 페이지로 이동 */
	@GetMapping(value = "/document/{idxDc}/write.go")
	public ModelAndView documentWriteGo(@PathVariable String idxDc
			,HttpSession session) {
		logger.info("form_name : {}", idxDc);
		// int idxEmployee = session.getAttribute("???");
		int idxEmployee = 1;
		return ds.fetchFormTemplate(idxDc, idxEmployee);
	}
	
	/* [jeong] 결재(문서) 번호를 입력 받고 해당 문서 파일, 첨부파일, 결재 라인들을 불러오고 상세보기 페이지로 이동 */
	@GetMapping(value = "/document/{idxApproval}/{empId}/detail.go")
	public ModelAndView documentDetailGo(@PathVariable String idxApproval, 
			@PathVariable int empId, HttpSession session) {
		logger.info("idxApproval : {}", idxApproval);
		// 임시로 empId 설정했으므로 꼭 지워줘야함 자바스크립트 강제 스크립트도 당연히!!!!!!!
		// 임시로 empId 설정했으므로 꼭 지워줘야함 자바스크립트 강제 스크립트도 당연히!!!!!!!
		// 임시로 empId 설정했으므로 꼭 지워줘야함 자바스크립트 강제 스크립트도 당연히!!!!!!!
		// 임시로 empId 설정했으므로 꼭 지워줘야함 자바스크립트 강제 스크립트도 당연히!!!!!!!
		
		// int idxEmployee = session.getAttribute("???");
		int accessIdxEmployee = empId;
		return ds.fetchDocumentPage(accessIdxEmployee, idxApproval);
	}
	
	/* [jeong] 문서 파일, 첨부파일 결재라인들을 요청 받고 데이터베이스와 서버에 파일을 저장함 */
	@PostMapping(value = "/document/write.do")
	@ResponseBody
	public Map<String, Object> documentWriteDo(@RequestParam(value = "attachmentFiles", required = false) MultipartFile[] attachmentFiles
			,@RequestParam("documentFile") MultipartFile documentFile 
			,@RequestParam("documentData") String documentData
			,@RequestParam("approvalLine") String approvalLine
			,HttpSession session
			 ) {
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
	
	@PostMapping(value = "document/{idxApproval}/approval.do")
	@ResponseBody
	public Map<String, Object> documentApprovalDo(@RequestParam("signatureImage") MultipartFile signatureImage
			,@PathVariable String idxApproval, @RequestParam("idxApprovalLine") String idxApprovalLine
			,@RequestParam("apStep") String apStep) {
		Map<String, Object> response = new HashMap<>();
		ds.approval(signatureImage, idxApproval, apStep, idxApprovalLine);
		logger.info("idxApprovalLine : {}", idxApprovalLine);
		response.put("success", true);
		return response;
	}
}

package ko.gagu.issue.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ko.gagu.issue.dto.PagingDTO;
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

	@GetMapping(value = "/document/list.go")
	public ModelAndView documentListGo(HttpSession session) {
		
		// 1. 부서번호 가져와야함
		// 2. 
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return ds.fetchDocumentList(idxEmployee);
	}	
	
	/* [jeong] 문서 양식 번호를 입력 받고 해당 양식 문서 파일을 불러와 작성 페이지로 이동 */
	@GetMapping(value = "/document/{idxDc}/write.go")
	public ModelAndView documentWriteGo(@PathVariable String idxDc
			,HttpSession session) {
		logger.info("form_name : {}", idxDc);
		// int idxEmployee = session.getAttribute("???");
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return ds.fetchFormTemplate(idxDc, idxEmployee);
	}
	
	/* [jeong] 결재(문서) 번호를 입력 받고 해당 문서 파일, 첨부파일, 결재 라인들을 불러오고 상세보기 페이지로 이동 */
	@GetMapping(value = "/document/{idxApproval}/detail.go")
	public ModelAndView documentDetailGo(@PathVariable String idxApproval, HttpSession session) {
		logger.info("idxApproval : {}", idxApproval);
		int accessIdxEmployee = (int) session.getAttribute("idxEmployee");
		return ds.fetchDocumentPage(accessIdxEmployee, idxApproval, session);
	}
	
	/* [jeong] 문서 파일, 첨부파일 결재라인들을 요청 받고 데이터베이스와 서버에 파일을 저장함 */
	@PostMapping(value = "/document/write.do")
	@ResponseBody
	public Map<String, Object> documentWriteDo(@RequestParam(value = "attachmentFiles", required = false) MultipartFile[] attachmentFiles
			,@RequestParam("documentFile") MultipartFile documentFile 
			,@RequestParam("documentData") String documentData
			,@RequestParam("approvalLine") String approvalLine
			,@RequestParam("documentTtile") String documentTtile
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
			int idxEmployee = (int) session.getAttribute("idxEmployee");
			ds.write(attachmentFiles, documentFile, documentData, approvalLine, documentTtile, idxEmployee, response);
		}	
		return response;
	} 
	
	@PostMapping(value = "/document/approval.do")
	@ResponseBody
	public Map<String, Object> documentApprovalDo(@RequestParam("signatureImage") MultipartFile signatureImage
			,HttpSession session) {
		Map<String, Object> response = new HashMap<>();
		int idxApproval = (Integer) session.getAttribute("idxApproval");
		int idxApprovalLine = (Integer) session.getAttribute("idxApprovalLine");
		int apStep = (Integer) session.getAttribute("apStep");
		
		ds.approval(signatureImage, idxApproval, apStep, idxApprovalLine);
		response.put("success", true);
		return response;
	}
	
	@PostMapping(value = "/document/reject.do")
	@ResponseBody
	public Map<String, Object> documentRejectDo(HttpSession session
			,@RequestParam("apComment") String apComment) {
		Map<String, Object> response = new HashMap<>();
		int idxApproval = (Integer) session.getAttribute("idxApproval");
		int idxApprovalLine = (Integer) session.getAttribute("idxApprovalLine");
		int apStep = (Integer) session.getAttribute("apStep");
		
		ds.reject(idxApproval, apStep, idxApprovalLine, apComment);
		response.put("success", true);
		return response;
	}	

	@PostMapping(value = "/document/retract.do")
	@ResponseBody
	public Map<String, Object> documentRetractDo(HttpSession session) {
		Map<String, Object> response = new HashMap<>();
		int idxApproval = (Integer) session.getAttribute("idxApproval");
		
		ds.retract(idxApproval);
		response.put("success", true);
		return response;
	}
	
	
	@PostMapping(value = "/document/list.do")
	@ResponseBody	
	public Map<String, Object> documentListDo(@RequestBody PagingDTO pagingDTO
			,HttpSession session) {
		logger.info("pagingDTO : {}", pagingDTO);
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		
		return ds.fetchFilterDocumentList(pagingDTO, idxEmployee);		
	}

	
}

package ko.gagu.issue.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import ko.gagu.issue.dao.DocumentDAO;
import ko.gagu.issue.dto.ApprovalDTO;
import ko.gagu.issue.dto.ApprovalLineDTO;
import ko.gagu.issue.dto.DocumentDTO;
import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.FileDTO;
import ko.gagu.issue.dto.PagingDTO;
import ko.gagu.issue.util.DateUtil;
import ko.gagu.issue.util.FileManagerUtil;

@Service
public class DocumentService {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Value("${spring.servlet.multipart.location}")
	private String root;
	
    private final DocumentDAO dao;
    private final FileManagerUtil fm;
    private final DateUtil du;
     
    public DocumentService(DocumentDAO dao, FileManagerUtil fm, DateUtil du) {
        this.dao = dao;
        this.fm = fm;
        this.du = du;
    }
	
	// [jeong] 직원이 작성한 문서를 파일로 filestore/document 에 저장하고 파일의 이름을 데이터베이스에 저장한다.
	@Transactional(rollbackFor = Exception.class)
	public void write(MultipartFile[] attachmentFiles, MultipartFile documentFile, 
			String documentData, String approvalLine, 
			String documentTtile, int idxEmployee ,Map<String, Object> response) {
		ObjectMapper objectMapper = new ObjectMapper();

		// 1. 데이터베이스에 저장할 문서의 정보를 DTO 에 담는다.
		DocumentDTO documentDTO = new DocumentDTO();
		
		// 2. 클라이언트가 JSON 형태로 보내온것을 objectmapper 통해 변환한다.
		Map<String, Object> documentMap = null;
		List<Integer> employeeList = null;
		try {
			documentMap = objectMapper.readValue(documentData, Map.class);
			employeeList = objectMapper.readValue(approvalLine, List.class);
			documentDTO.setIdx_employee(idxEmployee);
			documentDTO.setIdx_dc((int) documentMap.get("idxDc"));
			documentDTO.setAp_content(documentData);
			documentDTO.setAp_title(documentTtile);
		} catch (JsonProcessingException e) {
			response.put("success", false);
			return;
		}
		logger.info("approvalLine : {}", approvalLine);
		// 3. 데이터베이스에 문서 정보를 등록한다.
		// 등록한 후 결재 문서 번호를 document_dto 필드에 저장한다.
		logger.info("문서의 내용 documentDTO : {}", documentDTO);
		dao.saveDocument(documentDTO); 
		int idxApproval = documentDTO.getIdx_approval();
		// 지정한 결재자 라인을 approval_line_tb 테이블에 저장한다
		for (int sequence = 0; sequence < employeeList.size(); sequence++) {
			dao.saveApprovalLine(idxApproval, employeeList.get(sequence), sequence);
		}
		
		// 4. 파일을 저장하고 데이터베이스에 저장한 문서의 경로(이름)을 저장한다.
		// 파일을 실제로 서버에 저장한다. 그리고 그 파일의 이름을 file_name 에 저장한다.
		if (attachmentFiles != null) {
			String[] attachmentFileNames = new String[attachmentFiles.length];
			for (int index = 0; index < attachmentFileNames.length; index++) {
				attachmentFileNames[index] = fm.saveFile(attachmentFiles[index], "document/attachment");
				logger.info("attachmentFiles[index].getOriginalFilename() : {}", attachmentFiles[index].getOriginalFilename());
				dao.saveAttachmentFile(8, idxApproval, attachmentFiles[index].getOriginalFilename(), attachmentFileNames[index]);
			}
		}
		String documentFileName = fm.saveFile(documentFile, "document");
		
		// 5. 저장한 파일의 유형, 파일의 참조 번호, 저장한 파일의 경로(이름) 를 데이터베이스에 저장한다.
		dao.saveDocumentFile(4, idxApproval, documentFileName);
		response.put("success", true);
		response.put("idxApproval", idxApproval);
	} 

	// [jeong] 문서 양식을 가져오고 사용자의 정보를 불러와 JSON으로 변환한 후 모델을 통해 페이지에 전송한다.
	public ModelAndView fetchFormTemplate(String idxDc, int idxEmployee) {
		ModelAndView mav = new ModelAndView("common/documentWrite");
		String formSrc = dao.getFormSrc(idxDc);
		
		// [jeong] 세션에서 로그인한 직원의 번호를 가져와야하지만 임시로 2로 설정하였음.
		EmployeeDTO employeeDTO = dao.getEmployeeInfo(idxEmployee); 
		Map<String,Object> employee = new HashMap<String, Object>();
		employee.put("emp_name", employeeDTO.getEmp_name());
		employee.put("title", employeeDTO.getTitle_name());
		employee.put("department", employeeDTO.getDe_name());
		employee.put("idx_employee", employeeDTO.getIdx_employee());
		employee.put("year", du.getCurrentYear());
		employee.put("month", du.getCurrentMonth());
		employee.put("day", du.getCurrentDay());
		
        List<Map<String, String>> jstree = dao.getOrganization();
        Map<String, String> rootNode = new HashMap<String, String>();
        rootNode.put("type", "department");
        rootNode.put("id", "gaguissue");
        rootNode.put("parent", "#");
        rootNode.put("text", "가구있수");
        jstree.add(rootNode);
        
		logger.info("jstree : {}", jstree);
		// JSON 변환 및 예외 처리
        ObjectMapper mapper = new ObjectMapper();
        String employeeInfo = "";
        String organization = "";
        try {
        	employeeInfo = mapper.writeValueAsString(employee);
            organization = mapper.writeValueAsString(jstree);
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		mav.addObject("formSrc", formSrc);
		mav.addObject("idxDc", idxDc);
		mav.addObject("employeeInfo", employeeInfo);
		mav.addObject("employeeDTO", employeeDTO);
		mav.addObject("organization", organization);
		return mav;
	}

	/* [jeong] 결재(문서) 번호로 접근 권한을 확인하고, 문서 파일, 첨부파일, 결재라인을 뿌려준다 */
	public ModelAndView fetchDocumentPage(int accessIdxEmployee, String approvalId, HttpSession session) {
	    ModelAndView mav = new ModelAndView("common/documentDetail");
	    // 1. 현재 세션이 결재자인지 작성자인지 제 3자인지 확인하기

	    // 1-1. 여기서 제3자는 기안자(문서 작성자)의 같은 부서 사람들을 말한다 직원번호 1, 결재자, 작성자, 제3자도 아니라면 문서에 접근할 수 없어야한다
	    // 1번과 1-1을 합쳐서 쿼리문을 짜자
	    ApprovalDTO approvalDetails = dao.getApprovalPermission(accessIdxEmployee, approvalId);
	    if (approvalDetails == null) {
	        mav.addObject("errorMsg", "문서를 불러오는 도중에 오류가 발생하여 목록 페이지로 이동합니다.");
	        return mav;
	    }
	    if (approvalDetails.getAccessPermission().equals("접근불가")) {
	        mav.addObject("errorMsg", "해당 문서를 열람할 권한이 없습니다.");
	        return mav;
	    }
	    // 2. 회수 상태인지 확인하기(결재자라면 안보이게, 작성자라면 보이게, 제3자는 안보이게)
	    List<String> elementsToShow = new ArrayList<String>();
	    if (approvalDetails.getFinalApStatus().equals("회수")) {
	        if (approvalDetails.getAccessPermission().equals("결재권자") || approvalDetails.getAccessPermission().equals("같은부서원")) {
	            mav.addObject("errorMsg", "해당 문서는 기안자가 회수하여 열람할 수 없습니다.");
	            return mav;
	        }
	    }
	    List<ApprovalLineDTO> approvalSteps = dao.getApprovalLineList(approvalDetails.getIdxApproval());
	    
	    // 3. 첨부 파일과 파일을 FileDTO 형태로 리스트 형태로 가져오기 0번 인덱스는 문서 파일로~
	    List<FileDTO> documentFiles = dao.getDocumentFiles(approvalDetails.getIdxApproval());
	    String documentFilePath = "";
	    // 결재 문서 파일의 경로만 따로 저장한 후 documentFiles 에서 지워준다
	    // 그러면 첨부 파일들만 남게 된다
	    for (int idx = 0; idx < documentFiles.size(); idx++) {
	        if (documentFiles.get(idx).getIdxFiletype() == 4) {
	        	documentFilePath = documentFiles.get(idx).getFileName();
	            documentFiles.remove(idx);
	        }
	    }
	    for (int idx = 0; idx < documentFiles.size(); idx++) {
	        String filename = documentFiles.get(idx).getFileName();
	        String[] imageExt = { "jpeg", "png", "gif", "bmp", "webp" };
	        documentFiles.get(idx).setIsImage(0);
	        for (String ext : imageExt) {
	        	if (ext.equals(filename.substring(filename.indexOf(".") + 1))) {
	        		documentFiles.get(idx).setIsImage(1);
		        }
	        	// logger.info("{}", filename.substring(filename.indexOf(".") + 1));
	        }	    	
	    }
	    session.setAttribute("idxApproval", approvalDetails.getIdxApproval());
	    session.setAttribute("idxApprovalLine", approvalSteps.get(approvalDetails.getApprovalStep()).getIdxApprovalLine());
	    session.setAttribute("apStep", approvalDetails.getApprovalStep());
	    
	    // 3-1. 문서 권한, 상태, 첨부 파일, 결재 현황 뿌려주기
	    mav.addObject("documentFilePath", documentFilePath);
	    mav.addObject("attachmentFiles", documentFiles);
	    mav.addObject("approvalSteps", approvalSteps);
	    mav.addObject("approvalId", approvalId);
	    mav.addObject("approvalDetails", approvalDetails);
	    mav.addObject("employeeId", accessIdxEmployee);
	    return mav;
	}

	/* [jeong] 서명이미지와 결재를 저장하고 연가 및 휴가 신청이 최종승인되면 연차 차감 및 히스토리에 저장된다 */
	@Transactional(rollbackFor = Exception.class)
	public void approval(MultipartFile signatureImage, int idxApproval, int apStep, int idxApprovalLine) {
		String signImageName = fm.saveFile(signatureImage, "document/signature");
		// 서명 이미지를 예약번호로 묶어서 저장
		dao.saveSignImage(9, idxApprovalLine, signImageName);
		dao.approvalLine(idxApproval, idxApprovalLine, apStep);
		ApprovalDTO approvalDto = dao.getApproval(idxApproval);
		List<ApprovalLineDTO> approvalLineList = dao.getApprovalLineList(idxApproval);
		// 최종 승인시 
		if (approvalLineList.get(approvalLineList.size() - 1).getIsApproval() == 1) {
			dao.approval(idxApproval);
			
			// 연가인지
			if(approvalDto.getIdxDc() == 1) {
				ObjectMapper objectMapper = new ObjectMapper();
				Map<String, Object> documentMap = null;
				try {
					documentMap = objectMapper.readValue(approvalDto.getApContent(), Map.class);
				} catch (JsonProcessingException e) {
					return;
				}
				String alarmMsg = "연가가 최종승인 되었습니다!";
				String alarmPath = "/document/list.go";
				dao.insertAlarm(approvalDto.getIdxEmployee(), alarmMsg, alarmPath);
				dao.insertLeave(approvalDto.getIdxEmployee(), documentMap.get("days"), documentMap.get("start-date"), documentMap.get("end-date"));
				if (dao.isLeaveAccruals(approvalDto.getIdxEmployee()) == 0) {
					dao.insertLeaveAccruals(approvalDto.getIdxEmployee());
				}
				dao.updateLeaveAccruals(approvalDto.getIdxEmployee(), documentMap.get("days"));				
			}
			
		}
	}

	/* [jeong] 반려처리 */
	@Transactional(rollbackFor = Exception.class)
	public void reject(int idxApproval, int apStep, int idxApprovalLine, String apComment) {
		dao.rejectLine(idxApproval, idxApprovalLine, apStep, apComment);
		dao.reject(idxApproval);
	}

	/* [jeong] 문서의 상태를 회수로 변경 */
	public void retract(int idxApproval) {
		dao.retract(idxApproval);
	}

	/* [jeong] 페이징만 처리된 문서 리스트를 응답 */
	public ModelAndView fetchDocumentList(int idxEmployee) {
		ModelAndView mav = new ModelAndView("common/documentList");
		List<DocumentDTO> documentList = dao.fetchDocumentList(idxEmployee);
		int totalPages = dao.getAllTotalPages(idxEmployee);
		if (documentList.size() == 0) {
			mav.addObject("documentList", "none");
		} else {
			mav.addObject("documentList", documentList);
		}
		mav.addObject("totalPages", totalPages);
		mav.addObject("idxEmployee", idxEmployee);
		return mav;
	}
	
	/* [jeong] 필터링 및 페이징 처리된 문서 리스트를 응답 */
	public Map<String, Object> fetchFilterDocumentList(PagingDTO pagingDTO, int idxEmployee) {
		Map<String, Object> response = new HashMap<>();
		int totalPages = dao.getFilterTotalPages(pagingDTO, idxEmployee);
		/*
		 * if (totalPages == 0) { pagingDTO.setPage(0); } else if (totalPages <=
		 * pagingDTO.getPage()) { pagingDTO.setPage((totalPages - 1) * 13);
		 * 
		 * } else { pagingDTO.setPage(0); }
		 */
		int page = pagingDTO.getPage();
		logger.info("totalPages : {}", totalPages);
		logger.info("pagingDTO : {}", pagingDTO);
		List<DocumentDTO> documentFilterList = dao.fetchFilterDocumentList(pagingDTO, idxEmployee);
		page = page > totalPages ? totalPages == 0 ? 1 : totalPages : page;
		if (documentFilterList.size() == 0) {
			response.put("documentFilterList", "none");
		} else {
			response.put("documentFilterList", documentFilterList);
		}
		response.put("totalPages", totalPages);
		response.put("page", page);
		response.put("success", true);
		return response;
	}



}







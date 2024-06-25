package ko.gagu.issue.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public void documentWrite(MultipartFile[] attachmentFiles, MultipartFile documentFile, 
			String documentData, String approvalLine, 
			int idxEmployee ,Map<String, Object> response) {
		ObjectMapper objectMapper = new ObjectMapper();

		// 1. 데이터베이스에 저장할 문서의 정보를 DTO 에 담는다.
		DocumentDTO documentDTO = new DocumentDTO();
		
		// 2. 클라이언트가 JSON 형태로 보내온것을 objectmapper 통해 변환한다.
		Map<String, Object> documentMap = null;
		List<Integer> approvalLineList = null;
		try {
			documentMap = objectMapper.readValue(documentData, Map.class);
			approvalLineList = objectMapper.readValue(approvalLine, List.class);
			documentDTO.setIdx_employee(idxEmployee);
			documentDTO.setIdx_dc((int) documentMap.get("idxDc"));
			documentDTO.setAp_content(documentData);
			logger.info("approvalLineList : {}", approvalLineList);
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
		for (int sequence = 0; sequence < approvalLineList.size(); sequence++) {
			dao.saveApprovalLine(idxApproval, approvalLineList.get(sequence), sequence);
		}
		
		// 4. 파일을 저장하고 데이터베이스에 저장한 문서의 경로(이름)을 저장한다.
		// 파일을 실제로 서버에 저장한다. 그리고 그 파일의 이름을 file_name 에 저장한다.
		
		String[] attachmentFileNames = new String[attachmentFiles.length];
		for (int index = 0; index < attachmentFileNames.length; index++) {
			attachmentFileNames[index] = fm.saveFile(attachmentFiles[index], "document/attachment");
			dao.saveAttachmentFile(8, idxApproval, attachmentFiles[index].getOriginalFilename(), attachmentFileNames[index]);
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

	public ModelAndView fetchDocumentPage(int accessIdxEmployee, String idxApproval) {
		ModelAndView mav = new ModelAndView("common/documentDetail");
		// 1. 현재 세션이 결재자인지 작성자인지 제 3자인지 확인하기
		
		// 1-1. 여기서 제3자는 기안자(문서 작성자)의 같은 부서 사람들을 말한다 직원번호 1, 결재자, 작성자, 제3자도 아니라면 문서에 접근할 수 없어야한다
		// 1번과 1-1을 합쳐서 쿼리문을 짜자
		ApprovalDTO approval = dao.getApproval(accessIdxEmployee, idxApproval);
		 if (approval.getAccessPermission() == "접근불가"){
				mav.addObject("msg", "해당 문서를 열람할 권한이 없습니다.");
				mav.setViewName("common/documentList");
				return mav;
		}
		// 2. 회수 상태인지 확인하기(결재자라면 안보이게, 작성자라면 보이게, 제3자는 안보이게)
		List<String> additionalElements = new ArrayList<String>();
		if (approval.getFinalApStatus() == "회수") {
			if (approval.getAccessPermission() == "결재권자" || approval.getAccessPermission() == "같은부서원") {
				mav.addObject("msg", "해당 문서는 기안자가 회수하여 열람할 수 없습니다.");
				mav.setViewName("common/documentList");
				return mav;
			}
		}

		// 2-1. 회수 상태가 아닌 진행중, 최종승인, 반려 문서는 접근 권한에 따라서
		// 요소가 달라진다
		if (approval.getAccessPermission() == "결재권자") {
			// 승인, 반려 버튼
			additionalElements.add("approval");
			
		} else if (approval.getAccessPermission() == "작성자") {
			// 회수
			additionalElements.add("retrieved");
		}
		// 3. 첨부 파일과 파일을 FileDTO 형태로 리스트 형태로 가져오기 0번 인덱스는 문서 파일로~
		List<FileDTO> documentFiles = dao.getDocumentFiles(approval.getIdxApproval());
		String documentFileSrc = "";
		// 결재 문서 파일의 경로만 따로 저장한 후 documentFiles 에서 지워준다
		// 그러면 첨부 파일들만 남게 된다
		for (int idx = 0; idx < documentFiles.size(); idx++) {
			if (documentFiles.get(idx).getIdxFiletype() == 4) {
				documentFileSrc = documentFiles.get(idx).getFileName();
				documentFiles.remove(idx);
				break;
			}
		}
		mav.addObject("documentFileSrc", documentFileSrc);
		mav.addObject("attachmentFiles", documentFiles);
		
		// 3-1. 문서 권한, 상태, 첨부 파일, 결재 현황 뿌려주기
		List<ApprovalLineDTO> approvalLine = dao.getApprovalLineList(approval.getIdxApproval());
		mav.addObject("approvalLine", approvalLine);
		return mav;
	}

}





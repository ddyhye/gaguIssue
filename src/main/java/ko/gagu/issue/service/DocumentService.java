package ko.gagu.issue.service;

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
import ko.gagu.issue.dto.DocumentDTO;
import ko.gagu.issue.dto.EmployeeDTO;
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
	public void documentWrite(MultipartFile documentFile, String documentData, String approvalLine, 
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
		String fileName = fm.saveFile(documentFile, "document");
		
		// 5. 저장한 파일의 유형, 파일의 참조 번호, 저장한 파일의 경로(이름) 를 데이터베이스에 저장한다.
		dao.saveDocumentFile(4, idxApproval, fileName);
		response.put("success", true);
	} 

	// [jeong] 문서 양식을 가져오고 사용자의 정보를 불러와 JSON으로 변환한 후 모델을 통해 페이지에 전송한다.
	public ModelAndView fetchFormTemplate(String formName, int idxEmployee) {
		ModelAndView mav = new ModelAndView("common/documentWrite");
		String formSrc = dao.getFormSrc(formName);
		
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
		mav.addObject("idxDc", formName);
		mav.addObject("employeeInfo", employeeInfo);
		mav.addObject("employeeDTO", employeeDTO);
		mav.addObject("organization", organization);
		return mav;
	}

}





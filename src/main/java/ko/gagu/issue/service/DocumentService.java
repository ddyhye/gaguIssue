package ko.gagu.issue.service;

import java.io.IOException;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
	public void documentWrite(MultipartFile file, String json, int idxEmployee
			, Map<String, Object> response) {
		ObjectMapper objectMapper = new ObjectMapper();

		// 1. 데이터베이스에 저장할 문서의 정보를 DTO 에 담는다.
		DocumentDTO documentDTO = new DocumentDTO();
		
		// 2. 클라이언트가 JSON 형태로 보내온것을 objectmapper 통해 변환한다.
		Map<String, Object> jsonData = null;
		
		try {
			jsonData = objectMapper.readValue(json, Map.class);
			documentDTO.setIdx_employee(idxEmployee);
			documentDTO.setIdx_dc((int) jsonData.get("idxDc"));
			documentDTO.setAp_content(json);
		} catch (JsonProcessingException e) {
			response.put("success", false);
			return;
		}
		
		// 3. 데이터베이스에 문서 정보를 등록한다.
		// 등록한 후 결재 문서 번호를 document_dto 필드에 저장한다.
		logger.info("문서의 내용 documentDTO : {}", documentDTO);
		dao.saveDocument(documentDTO);
		int idxApproval = documentDTO.getIdx_approval();
		
		// 4. 파일을 저장하고 데이터베이스에 저장한 문서의 경로(이름)을 저장한다.
		// 파일을 실제로 서버에 저장한다. 그리고 그 파일의 이름을 file_name 에 저장한다.
		String fileName = fm.saveFile(file, "document");
		
		// 5. 저장한 파일의 유형, 파일의 참조 번호, 저장한 파일의 경로(이름) 를 데이터베이스에 저장한다.
		dao.saveDocumentFile(4, idxApproval, fileName);
		response.put("success", true);
	} 

	// [jeong] 문서 양식을 가져오고 사용자의 정보를 불러와 JSON으로 변환한 후 모델을 통해 페이지에 전송한다.
	public ModelAndView fetchFormTemplate(String formName, int idxEmployee) {
		ModelAndView mav = new ModelAndView("common/documentWrite");
		String formSrc = dao.getFormSrc(formName);
		
		// [jeong] 세션에서 로그인한 직원의 번호를 가져와야하지만 임시로 2로 설정하였음.
		EmployeeDTO employee = dao.getEmployeeInfo(idxEmployee); 
		Map<String,Object> temp = new HashMap<String, Object>();
		temp.put("emp_name", employee.getEmp_name());
		temp.put("title", employee.getTitle_name());
		temp.put("department", employee.getDe_name());
		temp.put("idx_employee", employee.getIdx_employee());
		temp.put("year", du.getCurrentYear());
		temp.put("month", du.getCurrentMonth());
		temp.put("day", du.getCurrentDay());
        // JSON 변환 및 예외 처리
        ObjectMapper mapper = new ObjectMapper();
        String json = "";
        try {
            json = mapper.writeValueAsString(temp);
        } catch (Exception e) {
            e.printStackTrace();
        }
		logger.info("employee : {}", employee.toString());
		
		mav.addObject("formSrc", formSrc);
		mav.addObject("idxDc", formName);
		mav.addObject("employeeInfo", json);
		return mav;
	}

}




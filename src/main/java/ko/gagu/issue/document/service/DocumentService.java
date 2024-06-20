package ko.gagu.issue.document.service;

import java.io.IOException;
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

import ko.gagu.issue.document.dao.DocumentDAO;
import ko.gagu.issue.document.dto.DocumentDTO;
import ko.gagu.issue.employee.dto.EmployeeDTO;
import ko.gagu.issue.util.FileManagerUtil;

@Service
public class DocumentService {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Value("${spring.servlet.multipart.location}")
	private String root;
	
	@Autowired DocumentDAO dao;
	@Autowired FileManagerUtil fm;
	
	// 트랜잭션 걸기
	// [jeong] 직원이 작성한 문서를 파일로 filestore/document 에 저장하고 파일의 이름을 데이터베이스에 저장한다.
	@Transactional(rollbackFor = Exception.class)
	public ModelAndView documentWrite(MultipartFile file, MultipartFile json, HttpSession session) {
		ModelAndView mav = new ModelAndView("common/documentAttachment");
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> jsonData = null;
		try {
			jsonData = objectMapper.readValue(json.getInputStream(), Map.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		// 1. 데이터베이스에 저장할 문서의 정보를 DTO 에 담는다.
		DocumentDTO document_dto = new DocumentDTO();
		logger.info("jsonData : {}", jsonData);
		EmployeeDTO employee = dao.getEmployeeInfo(); // 임시!!
		document_dto.setIdx_dc((int) jsonData.get("idx_dc"));
		
		// 1-1. 세션에서 현재 로그인 중인 직원의 아이디를 불러온다.
		// MemberDTO member_dto = session.getAttribute("????? 로그인 세션 완료 후 진행 가능");
		// int idx_employee = member_dto.getIdx_employee();
		document_dto.setIdx_employee(employee.getIdx_employee());

		try {
			document_dto.setAp_content(objectMapper.writeValueAsString(jsonData));
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		// 2. 데이터베이스에 문서 정보를 등록한다.
		// 등록한 후 결재 문서 번호를 document_dto 필드에 저장한다.
		logger.info("document_dto : {}", document_dto);
		dao.saveDocument(document_dto);
		int idx_approval = document_dto.getIdx_approval();
		
		// 3. 파일을 저장하고 데이터베이스에 저장한 문서의 경로(이름)을 저장한다.
		// 파일을 실제로 서버에 저장한다. 그리고 그 파일의 이름을 file_name 에 저장한다.
		String file_name = fm.saveFile(file, "document");
		// 저장한 파일의 유형, 파일의 참조 번호, 저장한 파일의 경로(이름) 를 데이터베이스에 저장한다.
		dao.saveDocumentFile(4, idx_approval, file_name);
		return mav;
	} 

	public ModelAndView getFormSrc(String form_name) {
		ModelAndView mav = new ModelAndView("common/documentWrite");
		String form_src = dao.getFormSrc(form_name);
		mav.addObject("form_src", form_src);
		mav.addObject("idx_dc", form_name);
		return mav;
	}

}

package ko.gagu.issue.document.service;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import ko.gagu.issue.document.dao.DocumentDAO;
import ko.gagu.issue.document.dto.DocumentDTO;
import ko.gagu.issue.util.FileManagerUtil;

@Service
public class DocumentService {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Value("${spring.servlet.multipart.location}")
	private String root;
	
	@Autowired DocumentDAO dao;
	@Autowired FileManagerUtil fm;

	public void documentWrite(MultipartFile file, Map<String, Object> jsonData, HttpSession session) {
		logger.info("jsonData : {}", jsonData);
		ObjectMapper objectMapper = new ObjectMapper();
		// 1. 데이터베이스에 저장할 문서의 정보를 DTO 에 담는다.
		DocumentDTO document_dto = new DocumentDTO();
		document_dto.setIdx_dc(Integer.parseInt((String) jsonData.get("idx_dc")));
		
		// 1-1. 세션에서 현재 로그인 중인 직원의 아이디를 불러온다.
		// MemberDTO member_dto = session.getAttribute("????? 로그인 세션 완료 후 진행 가능");
		// int idx_employee = member_dto.getIdx_employee();
		// document_dto.setIdx_employee();
		// document_dto.setIdx_approver1();
		// document_dto.setIdx_approver2();
		// document_dto.setIdx_approver3();
		String file_name = fm.fileUpload(file, "document"); 
	}

	public ModelAndView getFormSrc(String form_name) {
		ModelAndView mav = new ModelAndView("common/documentWrite");
		String form_src = dao.getFormSrc(form_name);
		mav.addObject("form_src", form_src);
		mav.addObject("idx_dc", form_name);
		return mav;
	}

}

package ko.gagu.issue.document.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;

import ko.gagu.issue.document.dao.DocumentDAO;
import ko.gagu.issue.document.dto.DocumentDTO;

@Service
public class DocumentService {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Value("${spring.servlet.multipart.location}")
	private String root;
	
	@Autowired DocumentDAO dao;

	public void documentWrite(MultipartFile file, Map<String, Object> jsonData) {
		ObjectMapper objectMapper = new ObjectMapper();
		// 1. 파일명 추출하기.
		String fileName = file.getOriginalFilename();

		// 2. 새 파일명 생성하기.
		String ext = fileName.substring(fileName.lastIndexOf("."));
		String new_filename = System.currentTimeMillis() + ext;
		
		jsonData.put("new_filename", new_filename);
		
		// 3. 데이터베이스에 문서 정보 담고 저장하기.
		DocumentDTO dto = new DocumentDTO();
		try {
			dto.setAp_content(objectMapper.writeValueAsString(jsonData.get("values")));
			// dao.documentWrite(dto);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

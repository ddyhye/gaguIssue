package ko.gagu.issue;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;
import java.util.Map;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import ko.gagu.issue.dao.DocumentDAO;
import ko.gagu.issue.dto.ApprovalDTO;

@SpringBootTest
class GaguIssueApplicationTests {

	@Autowired
	private DocumentDAO dao;
	
	@Test
	void contextLoads() {
	}
	
	@Test
	@DisplayName("연차 자동 등록")
	void jsonToString() {
		System.out.println(dao);
		ApprovalDTO approval = dao.getApproval(54);
		assertNotNull(approval);
		if (approval.getIdxDc() == 1) {
			ObjectMapper objectMapper = new ObjectMapper();
			Map<String, Object> documentMap = null;
			try {
				documentMap = objectMapper.readValue(approval.getApContent(), Map.class);
			} catch (JsonProcessingException e) {
				return;
			}
			System.out.println(documentMap);
		}			
	}
}

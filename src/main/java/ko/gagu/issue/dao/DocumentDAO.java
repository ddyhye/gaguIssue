package ko.gagu.issue.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.DocumentDTO;
import ko.gagu.issue.dto.EmployeeDTO;

@Mapper
public interface DocumentDAO {

	String getFormSrc(String form_name);

	EmployeeDTO getEmployeeInfo(int idx_employee);

	int saveDocument(DocumentDTO document_dto);

	int saveDocumentFile(int idx_filetype, int idx_ref, String file_name);

	List<Map<String, String>> getOrganization();

}

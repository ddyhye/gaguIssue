package ko.gagu.issue.document.dao;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.document.dto.DocumentDTO;
import ko.gagu.issue.employee.dto.EmployeeDTO;

@Mapper
public interface DocumentDAO {

	String getFormSrc(String form_name);

	EmployeeDTO getEmployeeInfo();

	int saveDocument(DocumentDTO document_dto);

	int saveDocumentFile(int idx_filetype, int idx_ref, String file_name);

}

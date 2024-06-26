package ko.gagu.issue.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.ApprovalDTO;
import ko.gagu.issue.dto.ApprovalLineDTO;
import ko.gagu.issue.dto.DocumentDTO;
import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.FileDTO;

@Mapper
public interface DocumentDAO {

	String getFormSrc(String form_name);

	EmployeeDTO getEmployeeInfo(int idx_employee);

	int saveDocument(DocumentDTO document_dto);

	int saveDocumentFile(int idx_filetype, int idx_ref, String file_name);

	List<Map<String, String>> getOrganization();

	void saveApprovalLine(int idx_approval, Integer idx_employee, int ap_step);

	void saveAttachmentFile(int idx_filetype, int idx_ref, String origin_name, String file_name);

	ApprovalDTO getApproval(int accessIdxEmployee, String idxApproval);

	List<FileDTO> getDocumentFiles(int idxApproval);

	List<ApprovalLineDTO> getApprovalLineList(int idxApproval);

	void saveSignImage(int idxFiletype, String idxApprovalLine, String signImageName);

	int getEmpApprovalStep(int employeeId);

	void updateApproval(String idxApproval, String idxApprovalLine, String apStep, int isApproval);

}

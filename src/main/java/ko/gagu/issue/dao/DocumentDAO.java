package ko.gagu.issue.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.ApprovalDTO;
import ko.gagu.issue.dto.ApprovalLineDTO;
import ko.gagu.issue.dto.DocumentDTO;
import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.FileDTO;
import ko.gagu.issue.dto.PagingDTO;

@Mapper
public interface DocumentDAO {

	String getFormSrc(String form_name);

	EmployeeDTO getEmployeeInfo(int idxEmployee);

	int saveDocument(DocumentDTO document_dto);

	int saveDocumentFile(int idx_filetype, int idx_ref, String file_name);

	List<Map<String, String>> getOrganization();

	void saveApprovalLine(int idx_approval, Integer idx_employee, int ap_step);

	void saveAttachmentFile(int idx_filetype, int idx_ref, String origin_name, String file_name);

	ApprovalDTO getApprovalPermission(int accessIdxEmployee, String idxApproval);

	List<FileDTO> getDocumentFiles(int idxApproval);

	List<ApprovalLineDTO> getApprovalLineList(int idxApproval);

	void saveSignImage(int idxFiletype, int idxApprovalLine, String signImageName);

	int getEmpApprovalStep(int employeeId);

	void rejectLine(int idxApproval, int idxApprovalLine, int apStep, String apComment);

	void approvalLine(int idxApproval, int idxApprovalLine, int apStep);

	void retract(int idxApproval);

	List<DocumentDTO> fetchFilterDocumentList(PagingDTO paging, int idxEmployee);

	List<DocumentDTO> fetchDocumentList(int idxEmployee);

	void reject(int idxApproval);

	ApprovalDTO getApproval(int idxApproval);

	void approval(int idxApproval);

	void insertLeave(int idxEmployee, Object days, Object startDate, Object endDate);

	int isLeaveAccruals(int idxEmployee);

	void insertLeaveAccruals(int idxEmployee);

	void updateLeaveAccruals(int idxEmployee, Object days);

	int getAllTotalPages(int idxEmployee);

	int getFilterTotalPages(PagingDTO paging, int idxEmployee);

	void insertAlarm(int idxEmployee, String alarmMsg, String alarmPath);

}

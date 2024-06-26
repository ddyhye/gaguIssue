package ko.gagu.issue.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

@Alias(value="approvalLine")
public class ApprovalLineDTO {
	private int idxApprovalLine;
    private int idxApproval;
    private int idxEmployee;
    private int apStep;
    private int isApproval;
    private String apComment;
    private Timestamp approvalDatetime;

	// [jeong] 결재권자 직위
    private String titleName;
    
    // [jeong] 결재권자 이름
    private String departmentName;
    
    // [jeong] 문서의 현재 결재 순서
    private int currentApprovalStep;
    
    // [jeong] 결재의 서명 이미지 파일의 경로
    private String signatureFilePath;
    
    public Timestamp getApprovalDatetime() {
		return approvalDatetime;
	}
	public void setApprovalDatetime(Timestamp approvalDatetime) {
		this.approvalDatetime = approvalDatetime;
	}
	public int getIdxApproval() {
		return idxApproval;
	}
	public void setIdxApproval(int idxApproval) {
		this.idxApproval = idxApproval;
	}
	public int getIdxEmployee() {
		return idxEmployee;
	}
	public void setIdxEmployee(int idxEmployee) {
		this.idxEmployee = idxEmployee;
	}
	public int getApStep() {
		return apStep;
	}
	public void setApStep(int apStep) {
		this.apStep = apStep;
	}
	public int getCurrentApprovalStep() {
		return currentApprovalStep;
	}
	public void setCurrentApprovalStep(int currentApprovalStep) {
		this.currentApprovalStep = currentApprovalStep;
	}
	public int getIsApproval() {
		return isApproval;
	}
	public void setIsApproval(int isApproval) {
		this.isApproval = isApproval;
	}
	public String getApComment() {
		return apComment;
	}
	public void setApComment(String apComment) {
		this.apComment = apComment;
	}
	public String getSignatureFilePath() {
		return signatureFilePath;
	}
	public void setSignatureFilePath(String signatureFilePath) {
		this.signatureFilePath = signatureFilePath;
	}
	public String getTitleName() {
		return titleName;
	}
	public void setTitleName(String titleName) {
		this.titleName = titleName;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	
	public int getIdxApprovalLine() {
		return idxApprovalLine;
	}
	public void setIdxApprovalLine(int idxApprovalLine) {
		this.idxApprovalLine = idxApprovalLine;
	}
	@Override
	public String toString() {
		return "ApprovalLineDTO [idxApprovalLine=" + idxApprovalLine + ", idxApproval=" + idxApproval + ", idxEmployee="
				+ idxEmployee + ", apStep=" + apStep + ", isApproval=" + isApproval + ", apComment=" + apComment
				+ ", approvalDatetime=" + approvalDatetime + ", titleName=" + titleName + ", departmentName="
				+ departmentName + ", currentApprovalStep=" + currentApprovalStep + ", signatureFilePath="
				+ signatureFilePath + "]";
	}
    
}

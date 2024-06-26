package ko.gagu.issue.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

@Alias(value="approval")
public class ApprovalDTO {
    private int idxApproval;
    private int idxEmployee;
    private int idxDc;
    private String finalApStatus;
    private Timestamp writtenDatetime;
    private String apContent;
    
	/* [jeong] 기안자 이름 */
    private String empName;
    
	/* [jeong] 문서에 접근하려는 직원의 번호 */
    private int accessIdxEmployee;
    
	/* [jeong] 접근하려는 직원의 권한 [결재권자, 작성자, 제3자] */
    private String accessPermission;
    
	private int approvalStep;
	
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
	public int getIdxDc() {
		return idxDc;
	}
	public void setIdxDc(int idxDc) {
		this.idxDc = idxDc;
	}
	public String getFinalApStatus() {
		return finalApStatus;
	}
	public void setFinalApStatus(String finalApStatus) {
		this.finalApStatus = finalApStatus;
	}
	public Timestamp getWrittenDatetime() {
		return writtenDatetime;
	}
	public void setWrittenDatetime(Timestamp writtenDatetime) {
		this.writtenDatetime = writtenDatetime;
	}
	public String getApContent() {
		return apContent;
	}
	public void setApContent(String apContent) {
		this.apContent = apContent;
	}
	public int getAccessIdxEmployee() {
		return accessIdxEmployee;
	}
	public void setAccessIdxEmployee(int accessIdxEmployee) {
		this.accessIdxEmployee = accessIdxEmployee;
	}
	public String getAccessPermission() {
		return accessPermission;
	}
	public void setAccessPermission(String accessPermission) {
		this.accessPermission = accessPermission;
	}
	public int getApprovalStep() {
		return approvalStep;
	}
	public void setApprovalStep(int approvalStep) {
		this.approvalStep = approvalStep;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	@Override
	public String toString() {
		return "ApprovalDTO [idxApproval=" + idxApproval + ", idxEmployee=" + idxEmployee + ", idxDc=" + idxDc
				+ ", finalApStatus=" + finalApStatus + ", writtenDatetime=" + writtenDatetime + ", apContent="
				+ apContent + ", empName=" + empName + ", accessIdxEmployee=" + accessIdxEmployee
				+ ", accessPermission=" + accessPermission + ", approvalStep=" + approvalStep + "]";
	}
 
	
}

package ko.gagu.issue.dto;

public class ApprovalLineDTO {
    private int idxApproval;
    private int idxEmployee;
    private int sequence;
    private boolean isApproval;
    private String apComment;
    
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
	public int getSequence() {
		return sequence;
	}
	public void setSequence(int sequence) {
		this.sequence = sequence;
	}
	public boolean isApproval() {
		return isApproval;
	}
	public void setApproval(boolean isApproval) {
		this.isApproval = isApproval;
	}
	public String getApComment() {
		return apComment;
	}
	public void setApComment(String apComment) {
		this.apComment = apComment;
	}
    
    
}

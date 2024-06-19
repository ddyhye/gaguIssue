package ko.gagu.issue.document.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

// 정원 0618, approval_tb 테이블인데 보기 편하게 document 로 쓰고 있음
@Alias(value="document")
public class DocumentDTO {
    private int idx_approval;
    private int idx_employee;
    private int idx_dc;
    private int idx_approver1;
    private int idx_approver2;
    private int idx_approver3;
    
    private boolean is_retrieval;
    private boolean is_approval1;
    private boolean is_approval2;
    private boolean is_approval3;
    
    private String final_ap_status;
    private String ap_content;
    private String ap_comment;
    
    private Date written_datetime;

	public int getIdx_approval() {
		return idx_approval;
	}

	public void setIdx_approval(int idx_approval) {
		this.idx_approval = idx_approval;
	}

	public int getIdx_employee() {
		return idx_employee;
	}

	public void setIdx_employee(int idx_employee) {
		this.idx_employee = idx_employee;
	}

	public int getIdx_dc() {
		return idx_dc;
	}

	public void setIdx_dc(int idx_dc) {
		this.idx_dc = idx_dc;
	}

	public int getIdx_approver1() {
		return idx_approver1;
	}

	public void setIdx_approver1(int idx_approver1) {
		this.idx_approver1 = idx_approver1;
	}

	public int getIdx_approver2() {
		return idx_approver2;
	}

	public void setIdx_approver2(int idx_approver2) {
		this.idx_approver2 = idx_approver2;
	}

	public int getIdx_approver3() {
		return idx_approver3;
	}

	public void setIdx_approver3(int idx_approver3) {
		this.idx_approver3 = idx_approver3;
	}

	public boolean isIs_retrieval() {
		return is_retrieval;
	}

	public void setIs_retrieval(boolean is_retrieval) {
		this.is_retrieval = is_retrieval;
	}

	public boolean isIs_approval1() {
		return is_approval1;
	}

	public void setIs_approval1(boolean is_approval1) {
		this.is_approval1 = is_approval1;
	}

	public boolean isIs_approval2() {
		return is_approval2;
	}

	public void setIs_approval2(boolean is_approval2) {
		this.is_approval2 = is_approval2;
	}

	public boolean isIs_approval3() {
		return is_approval3;
	}

	public void setIs_approval3(boolean is_approval3) {
		this.is_approval3 = is_approval3;
	}

	public String getFinal_ap_status() {
		return final_ap_status;
	}

	public void setFinal_ap_status(String final_ap_status) {
		this.final_ap_status = final_ap_status;
	}

	public String getAp_content() {
		return ap_content;
	}

	public void setAp_content(String ap_content) {
		this.ap_content = ap_content;
	}

	public String getAp_comment() {
		return ap_comment;
	}

	public void setAp_comment(String ap_comment) {
		this.ap_comment = ap_comment;
	}

	public Date getWritten_datetime() {
		return written_datetime;
	}

	public void setWritten_datetime(Date written_datetime) {
		this.written_datetime = written_datetime;
	}

	@Override
	public String toString() {
		return "DocumentDTO [idx_approval=" + idx_approval + ", idx_employee=" + idx_employee + ", idx_dc=" + idx_dc
				+ ", idx_approver1=" + idx_approver1 + ", idx_approver2=" + idx_approver2 + ", idx_approver3="
				+ idx_approver3 + ", is_retrieval=" + is_retrieval + ", is_approval1=" + is_approval1
				+ ", is_approval2=" + is_approval2 + ", is_approval3=" + is_approval3 + ", final_ap_status="
				+ final_ap_status + ", ap_content=" + ap_content + ", ap_comment=" + ap_comment + ", written_datetime="
				+ written_datetime + "]";
	}
	
}

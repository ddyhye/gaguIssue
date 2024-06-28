package ko.gagu.issue.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

// 정원 0618, approval_tb 테이블인데 보기 편하게 document 로 쓰고 있음
@Alias(value="document")
public class DocumentDTO {
    private int idx_approval;
    private String ap_title;


	private int idx_employee;
    private int idx_dc;
    
    private String final_ap_status;
    private String ap_content;
    private String ap_comment;
    
    private Date written_datetime;

    public String getAp_title() {
		return ap_title;
	}

	public void setAp_title(String ap_title) {
		this.ap_title = ap_title;
	}    
    
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
	
}

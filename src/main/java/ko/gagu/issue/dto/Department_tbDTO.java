package ko.gagu.issue.dto;

import org.apache.ibatis.type.Alias;

@Alias(value="department")
public class Department_tbDTO {
	
	private int idx_department;
	private String de_char;
	private String de_name;
	private int cnt;
	
	
	public int getIdx_department() {
		return idx_department;
	}
	public String getDe_char() {
		return de_char;
	}
	public String getDe_name() {
		return de_name;
	}
	public int getCnt() {
		return cnt;
	}
	public void setIdx_department(int idx_department) {
		this.idx_department = idx_department;
	}
	public void setDe_char(String de_char) {
		this.de_char = de_char;
	}
	public void setDe_name(String de_name) {
		this.de_name = de_name;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
}

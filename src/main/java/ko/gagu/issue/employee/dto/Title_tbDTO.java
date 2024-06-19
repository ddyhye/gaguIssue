package ko.gagu.issue.employee.dto;

import org.apache.ibatis.type.Alias;

@Alias(value="title")
public class Title_tbDTO {
	
	private int idx_title;
	private String title_name;
	
	
	public int getIdx_title() {
		return idx_title;
	}
	public String getTitle_name() {
		return title_name;
	}
	public void setIdx_title(int idx_title) {
		this.idx_title = idx_title;
	}
	public void setTitle_name(String title_name) {
		this.title_name = title_name;
	}
}

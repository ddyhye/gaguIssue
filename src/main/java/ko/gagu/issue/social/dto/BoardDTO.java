package ko.gagu.issue.social.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

@Alias(value="board")
public class BoardDTO {
	
	private int post_id;
	private int writer;
	private String po_title;
	private String po_content;
	private int po_view_count;
	private boolean is_notice;
	private Timestamp written_datetime;
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	public int getWriter() {
		return writer;
	}
	public void setWriter(int writer) {
		this.writer = writer;
	}
	public String getPo_title() {
		return po_title;
	}
	public void setPo_title(String po_title) {
		this.po_title = po_title;
	}
	public String getPo_content() {
		return po_content;
	}
	public void setPo_content(String po_content) {
		this.po_content = po_content;
	}
	public int getPo_view_count() {
		return po_view_count;
	}
	public void setPo_view_count(int po_view_count) {
		this.po_view_count = po_view_count;
	}
	public boolean isIs_notice() {
		return is_notice;
	}
	public void setIs_notice(boolean is_notice) {
		this.is_notice = is_notice;
	}
	public Timestamp getWritten_datetime() {
		return written_datetime;
	}
	public void setWritten_datetime(Timestamp written_datetime) {
		this.written_datetime = written_datetime;
	}
	
	

}

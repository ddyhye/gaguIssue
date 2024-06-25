package ko.gagu.issue.dto;

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
	private Integer idx_file;
	 private String origin_name;
	 private String file_name;
	
	
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
	
	public Integer getIdx_file() {
		return idx_file;
	}
	public void setIdx_file(Integer idx_file) {
		this.idx_file = idx_file;
	}
	public String getOrigin_name() {
		return origin_name;
	}
	public void setOrigin_name(String origin_name) {
		this.origin_name = origin_name;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	@Override
	public String toString() {
		return "BoardDTO [post_id=" + post_id + ", writer=" + writer + ", po_title=" + po_title + ", po_content="
				+ po_content + ", po_view_count=" + po_view_count + ", is_notice=" + is_notice + ", written_datetime="
				+ written_datetime + ", idx_file=" + idx_file + ", origin_name=" + origin_name + ", file_name="
				+ file_name + "]";
	}
	
	
	

}

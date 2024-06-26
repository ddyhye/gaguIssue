package ko.gagu.issue.dto;

import org.apache.ibatis.type.Alias;

@Alias("paging")
public class PagingDTO {
	private String filter;
	private int page;
	private int totalPage;
	private String startDate;
	private String endDate;
	
	public String getFilter() {
		return filter;
	}
	public void setFilter(String filter) {
		this.filter = filter;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	@Override
	public String toString() {
		return "PagingDTO [filter=" + filter + ", page=" + page + ", totalPage=" + totalPage + ", startDate="
				+ startDate + ", endDate=" + endDate + "]";
	}
	
}

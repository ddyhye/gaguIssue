package ko.gagu.issue.dto;

import org.apache.ibatis.type.Alias;

@Alias("paging")
public class PagingDTO {
	private String filter;
	private int page;
	private int totalPage;
	private String startDate;
	private String endDate;
	private String searchKeyword;
	private String searchOption;
	private String sortOption;
	
	
	
	public String getSearchOption() {
		return searchOption;
	}
	public void setSearchOption(String searchOption) {
		this.searchOption = searchOption;
	}
	public String getSortOption() {
		return sortOption;
	}
	public void setSortOption(String sortOption) {
		this.sortOption = sortOption;
	}
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
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	@Override
	public String toString() {
		return "PagingDTO [filter=" + filter + ", page=" + page + ", totalPage=" + totalPage + ", startDate="
				+ startDate + ", endDate=" + endDate + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	// [do] 페이징 처리 ,,, 사용할게요 ㅎㅎ
	private int year;
	private String doProductSearch;
	private String doProductCategory;
	private String doClientList;
	// warn의 경우, 위의 3가지 값 중, 아무 곳에나 warn인지 확인하면 됨.
	
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getDoProductSearch() {
		return doProductSearch;
	}
	public String getDoProductCategory() {
		return doProductCategory;
	}
	public String getDoClientList() {
		return doClientList;
	}
	public void setDoProductSearch(String doProductSearch) {
		this.doProductSearch = doProductSearch;
	}
	public void setDoProductCategory(String doProductCategory) {
		this.doProductCategory = doProductCategory;
	}
	public void setDoClientList(String doClientList) {
		this.doClientList = doClientList;
	}
	
	
}

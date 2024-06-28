package ko.gagu.issue.dto;

import java.time.LocalDateTime;

import org.apache.ibatis.type.Alias;

@Alias(value="purchase_order")
public class purchase_order_tbDTO {
	
	
	private int idx_purchase_order;
	private int idx_purchasehtml;
	private int idx_employee;
	private int idx_business;
	private int idx_product;
	private LocalDateTime written_datetime;
	private String html_filename;
	private int total_price;
	
	
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	
	
	public int getIdx_purchase_order() {
		return idx_purchase_order;
	}
	public int getIdx_employee() {
		return idx_employee;
	}
	public int getIdx_business() {
		return idx_business;
	}
	public int getIdx_purchasehtml() {
		return idx_purchasehtml;
	}
	public int getIdx_product() {
		return idx_product;
	}
	public LocalDateTime getWritten_datetime() {
		return written_datetime;
	}
	public void setIdx_purchase_order(int idx_purchase_order) {
		this.idx_purchase_order = idx_purchase_order;
	}
	public void setIdx_employee(int idx_employee) {
		this.idx_employee = idx_employee;
	}
	public void setIdx_business(int idx_business) {
		this.idx_business = idx_business;
	}
	public void setIdx_purchasehtml(int idx_purchasehtml) {
		this.idx_purchasehtml = idx_purchasehtml;
	}
	public void setIdx_product(int idx_product) {
		this.idx_product = idx_product;
	}
	public void setWritten_datetime(LocalDateTime written_datetime) {
		this.written_datetime = written_datetime;
	}
	public String getHtml_filename() {
		return html_filename;
	}
	public void setHtml_filename(String html_filename) {
		this.html_filename = html_filename;
	}
	
}

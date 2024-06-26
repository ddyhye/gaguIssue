package ko.gagu.issue.dto;

import java.time.LocalDateTime;

public class stockentries_tbDTO {
	
	private int idx;
	private int idx_purchase_order;
	private int idx_product;
	private int order_quantity;
	private int stock_quantity;
	private String stock_status;
	private LocalDateTime stock_datetime;
	public int getIdx() {
		return idx;
	}
	public int getIdx_purchase_order() {
		return idx_purchase_order;
	}
	public int getIdx_product() {
		return idx_product;
	}
	public int getOrder_quantity() {
		return order_quantity;
	}
	public int getStock_quantity() {
		return stock_quantity;
	}
	public String getStock_status() {
		return stock_status;
	}
	public LocalDateTime getStock_datetime() {
		return stock_datetime;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public void setIdx_purchase_order(int idx_purchase_order) {
		this.idx_purchase_order = idx_purchase_order;
	}
	public void setIdx_product(int idx_product) {
		this.idx_product = idx_product;
	}
	public void setOrder_quantity(int order_quantity) {
		this.order_quantity = order_quantity;
	}
	public void setStock_quantity(int stock_quantity) {
		this.stock_quantity = stock_quantity;
	}
	public void setStock_status(String stock_status) {
		this.stock_status = stock_status;
	}
	public void setStock_datetime(LocalDateTime stock_datetime) {
		this.stock_datetime = stock_datetime;
	}
}

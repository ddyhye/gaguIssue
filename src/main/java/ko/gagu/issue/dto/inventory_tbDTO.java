package ko.gagu.issue.dto;

import org.apache.ibatis.type.Alias;

@Alias(value="inventory")
public class inventory_tbDTO {
	private int idx_inventory;
	private int idx_product;
	private int current_stock;
	private boolean is_stock_lack;
	
	
	public int getIdx_inventory() {
		return idx_inventory;
	}
	public int getIdx_product() {
		return idx_product;
	}
	public int getCurrent_stock() {
		return current_stock;
	}
	public boolean isIs_stock_lack() {
		return is_stock_lack;
	}
	public void setIdx_inventory(int idx_inventory) {
		this.idx_inventory = idx_inventory;
	}
	public void setIdx_product(int idx_product) {
		this.idx_product = idx_product;
	}
	public void setCurrent_stock(int current_stock) {
		this.current_stock = current_stock;
	}
	public void setIs_stock_lack(boolean is_stock_lack) {
		this.is_stock_lack = is_stock_lack;
	}
}

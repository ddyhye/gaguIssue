package ko.gagu.issue.dto;

import org.apache.ibatis.type.Alias;

@Alias(value="warehouse")
public class warehouse_tbDTO {
	private int idx_storage;
	private String section_name;
	private int current_stock;
	private int capacity;
	
	public int getIdx_storage() {
		return idx_storage;
	}
	public String getSection_name() {
		return section_name;
	}
	public int getCurrent_stock() {
		return current_stock;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setIdx_storage(int idx_storage) {
		this.idx_storage = idx_storage;
	}
	public void setSection_name(String section_name) {
		this.section_name = section_name;
	}
	public void setCurrent_stock(int current_stock) {
		this.current_stock = current_stock;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	
}

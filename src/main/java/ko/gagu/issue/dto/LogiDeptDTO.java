package ko.gagu.issue.dto;

import java.time.LocalDateTime;

import org.apache.ibatis.type.Alias;

@Alias(value="logi")
public class LogiDeptDTO {
	
	
	// 거래처
	private int idx_business;
	private String client_name;
	private String ceo_name;
	private String address;
	private String etc;
	private LocalDateTime contract_date;
	private String client_type;
	
	
	public int getIdx_business() {
		return idx_business;
	}
	public String getClient_name() {
		return client_name;
	}
	public String getCeo_name() {
		return ceo_name;
	}
	public String getAddress() {
		return address;
	}
	public String getEtc() {
		return etc;
	}
	public LocalDateTime getContract_date() {
		return contract_date;
	}
	public String getClient_type() {
		return client_type;
	}
	public void setIdx_business(int idx_business) {
		this.idx_business = idx_business;
	}
	public void setClient_name(String client_name) {
		this.client_name = client_name;
	}
	public void setCeo_name(String ceo_name) {
		this.ceo_name = ceo_name;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	public void setContract_date(LocalDateTime contract_date) {
		this.contract_date = contract_date;
	}
	public void setClient_type(String client_type) {
		this.client_type = client_type;
	}
	
	
	
	// 제품 카테고리
	private int idx_product_category;
	private String category;
	
	
	public int getIdx_product_category() {
		return idx_product_category;
	}
	public String getCategory() {
		return category;
	}
	public void setIdx_product_category(int idx_product_category) {
		this.idx_product_category = idx_product_category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	
	
	// 웨어하우스
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
	
	
	
	
	// 제품
	private int idx_product;
	//private int idx_business;
	//private int idx_product_category;
	//private int idx_storage;
	private String product_name;
	private int purchase_price;
	private int unit_price;
	private int minimum_stock;
	private String product_description;
	
	
	public int getIdx_product() {
		return idx_product;
	}
	/*
	public int getIdx_business() {
		return idx_business;
	}
	public int getIdx_product_category() {
		return idx_product_category;
	}
	public int getIdx_storage() {
		return idx_storage;
	}*/
	public String getProduct_name() {
		return product_name;
	}
	public int getPurchase_price() {
		return purchase_price;
	}
	public int getUnit_price() {
		return unit_price;
	}
	public int getMinimum_stock() {
		return minimum_stock;
	}
	public String getProduct_description() {
		return product_description;
	}
	public void setIdx_product(int idx_product) {
		this.idx_product = idx_product;
	}
	/*
	public void setIdx_business(int idx_business) {
		this.idx_business = idx_business;
	}
	public void setIdx_product_category(int idx_product_category) {
		this.idx_product_category = idx_product_category;
	}
	public void setIdx_storage(int idx_storage) {
		this.idx_storage = idx_storage;
	}
	*/
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public void setPurchase_price(int purchase_price) {
		this.purchase_price = purchase_price;
	}
	public void setUnit_price(int unit_price) {
		this.unit_price = unit_price;
	}
	public void setMinimum_stock(int minimum_stock) {
		this.minimum_stock = minimum_stock;
	}
	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}
	
	
	
	// 인벤토리
	private int idx_inventory;
	//private int idx_product;
	//private int current_stock;
	private boolean is_stock_lack;
	
	
	public int getIdx_inventory() {
		return idx_inventory;
	}
	/*
	public int getIdx_product() {
		return idx_product;
	}
	public int getCurrent_stock() {
		return current_stock;
	}*/
	public boolean isIs_stock_lack() {
		return is_stock_lack;
	}
	public void setIdx_inventory(int idx_inventory) {
		this.idx_inventory = idx_inventory;
	}
	/*
	public void setIdx_product(int idx_product) {
		this.idx_product = idx_product;
	}
	public void setCurrent_stock(int current_stock) {
		this.current_stock = current_stock;
	}*/
	public void setIs_stock_lack(boolean is_stock_lack) {
		this.is_stock_lack = is_stock_lack;
	}
	
	

}

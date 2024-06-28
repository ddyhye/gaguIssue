package ko.gagu.issue.dto;

import org.apache.ibatis.type.Alias;

@Alias(value="product")
public class product_tbDTO {
	private int idx_product;
	private int idx_business;
	private int idx_product_category;
	private int idx_storage;
	private String product_name;
	private int purchase_price;
	private int unit_price;
	private int minimum_stock;
	private String product_description;
	private String is_barcode;
	
	
	
	public String getIs_barcode() {
		return is_barcode;
	}
	public void setIs_barcode(String is_barcode) {
		this.is_barcode = is_barcode;
	}
	public int getIdx_product() {
		return idx_product;
	}
	public int getIdx_business() {
		return idx_business;
	}
	public int getIdx_product_category() {
		return idx_product_category;
	}
	public int getIdx_storage() {
		return idx_storage;
	}
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
	public void setIdx_business(int idx_business) {
		this.idx_business = idx_business;
	}
	public void setIdx_product_category(int idx_product_category) {
		this.idx_product_category = idx_product_category;
	}
	public void setIdx_storage(int idx_storage) {
		this.idx_storage = idx_storage;
	}
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
}

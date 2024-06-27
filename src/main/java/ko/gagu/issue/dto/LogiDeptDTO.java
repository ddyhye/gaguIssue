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
	
	
	
	// 발주
	private int idx_purchase_order;
	private int idx_purchasehtml;
	private int idx_employee;
//	private int idx_business;
//	private int idx_product;
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
	public int getIdx_purchasehtml() {
		return idx_purchasehtml;
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
	public void setIdx_purchasehtml(int idx_purchasehtml) {
		this.idx_purchasehtml = idx_purchasehtml;
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
	
	
	
	// 입고 내역
	private int idx;
//	private int idx_purchase_order;
//	private int idx_product;
	private int order_quantity;
	private int stock_quantity;
	private String stock_status;
	private LocalDateTime stock_datetime;
	public int getIdx() {
		return idx;
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
	
	
	
	// 주문
	private int idx_order;
	private int order_no;
	private int order_row;
	private int order_per_price;
	private int order_total_price;
//	private int idx_business;
//	private int idx_product;
	private int quantity;
	private int sum_price;
	private String accept;
	private LocalDateTime order_datetime;


	public int getOrder_per_price() {
		return order_per_price;
	}
	public void setOrder_per_price(int order_per_price) {
		this.order_per_price = order_per_price;
	}
	public LocalDateTime getOrder_datetime() {
		return order_datetime;
	}
	public void setOrder_datetime(LocalDateTime order_datetime) {
		this.order_datetime = order_datetime;
	}
	public int getIdx_order() {
		return idx_order;
	}
	public int getOrder_no() {
		return order_no;
	}
	public int getOrder_row() {
		return order_row;
	}
	public int getOrder_total_price() {
		return order_total_price;
	}
	public int getQuantity() {
		return quantity;
	}
	public int getSum_price() {
		return sum_price;
	}
	public String getAccept() {
		return accept;
	}
	public void setIdx_order(int idx_order) {
		this.idx_order = idx_order;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public void setOrder_row(int order_row) {
		this.order_row = order_row;
	}
	public void setOrder_total_price(int order_total_price) {
		this.order_total_price = order_total_price;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public void setSum_price(int sum_price) {
		this.sum_price = sum_price;
	}
	public void setAccept(String accept) {
		this.accept = accept;
	}
	
	
	
	
	// 출고 내역
	private int idx_delivery;
	//private int idx_order;
    private String delivery_state;
    private LocalDateTime delivery_datetime;


	public int getIdx_delivery() {
		return idx_delivery;
	}
	public String getDelivery_state() {
		return delivery_state;
	}
	public LocalDateTime getDelivery_datetime() {
		return delivery_datetime;
	}
	public void setIdx_delivery(int idx_delivery) {
		this.idx_delivery = idx_delivery;
	}
	public void setDelivery_state(String delivery_state) {
		this.delivery_state = delivery_state;
	}
	public void setDelivery_datetime(LocalDateTime delivery_datetime) {
		this.delivery_datetime = delivery_datetime;
	}
    
    

}

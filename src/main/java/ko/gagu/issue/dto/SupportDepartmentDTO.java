package ko.gagu.issue.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

@Alias(value="supportDept")
public class SupportDepartmentDTO {
	
	private int idx_business;
	private String client_name;
	private String ceo_name;
	private String address;
	private String etc;
	private Timestamp contract_date;
	private String client_type;
	private String client_phone_num;
	
	
	private String idx_purchasehtml;
	private String product_name;
	private int idx_product_category;
	private int order_quantity;
	private int purchase_price;
	private int allcount;
	private String stock_status;
	private Timestamp stock_datetime;
	
	
	private int order_no;
	private Timestamp delivery_datetime;
	private int quantity;
	private int unit_price;
	private int order_total_price;
	private String delivery_state;
	
	public int getIdx_business() {
		return idx_business;
	}
	public void setIdx_business(int idx_business) {
		this.idx_business = idx_business;
	}
	public String getClient_name() {
		return client_name;
	}
	public void setClient_name(String client_name) {
		this.client_name = client_name;
	}
	public String getCeo_name() {
		return ceo_name;
	}
	public void setCeo_name(String ceo_name) {
		this.ceo_name = ceo_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	public Timestamp getContract_date() {
		return contract_date;
	}
	public void setContact_date(Timestamp contact_date) {
		this.contract_date = contact_date;
	}
	public String getClient_type() {
		return client_type;
	}
	public void setClient_type(String client_type) {
		this.client_type = client_type;
	}
	public String getClient_phone_num() {
		return client_phone_num;
	}
	public void setClient_phone_num(String client_phone_num) {
		this.client_phone_num = client_phone_num;
	}
	public String getIdx_purchasehtml() {
		return idx_purchasehtml;
	}
	public void setIdx_purchasehtml(String idx_purchasehtml) {
		this.idx_purchasehtml = idx_purchasehtml;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getIdx_product_category() {
		return idx_product_category;
	}
	public void setIdx_product_category(int idx_product_category) {
		this.idx_product_category = idx_product_category;
	}
	public int getOrder_quantity() {
		return order_quantity;
	}
	public void setOrder_quantity(int order_quantity) {
		this.order_quantity = order_quantity;
	}
	public int getPurchase_price() {
		return purchase_price;
	}
	public void setPurchase_price(int purchase_price) {
		this.purchase_price = purchase_price;
	}
	public int getAllcount() {
		return allcount;
	}
	public void setAllcount(int allcount) {
		this.allcount = allcount;
	}
	public String getStock_status() {
		return stock_status;
	}
	public void setStock_status(String stock_status) {
		this.stock_status = stock_status;
	}
	public Timestamp getStock_datetime() {
		return stock_datetime;
	}
	public void setStock_datetime(Timestamp stock_datetime) {
		this.stock_datetime = stock_datetime;
	}
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public Timestamp getDelivery_datetime() {
		return delivery_datetime;
	}
	public void setDelivery_datetime(Timestamp delivery_datetime) {
		this.delivery_datetime = delivery_datetime;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getUnit_price() {
		return unit_price;
	}
	public void setUnit_price(int unit_price) {
		this.unit_price = unit_price;
	}
	public int getOrder_total_price() {
		return order_total_price;
	}
	public void setOrder_total_price(int order_total_price) {
		this.order_total_price = order_total_price;
	}
	public String getDelivery_state() {
		return delivery_state;
	}
	public void setDelivery_state(String delivery_state) {
		this.delivery_state = delivery_state;
	}
	public void setContract_date(Timestamp contract_date) {
		this.contract_date = contract_date;
	}
	
	
	
}

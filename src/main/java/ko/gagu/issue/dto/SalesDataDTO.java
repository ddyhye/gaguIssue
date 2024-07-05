package ko.gagu.issue.dto;

import org.apache.ibatis.type.Alias;

@Alias("salesData")
public class SalesDataDTO {
    private String productName;
    private int transactionId;
    private String transactionType;
    private String customerName;
    private String transactionAmount;
    private String cost;
    private String remarks;
    private String transactionDatetime;
    
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}
	public String getTransactionType() {
		return transactionType;
	}
	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	
	public String getTransactionAmount() {
		return transactionAmount;
	}
	public void setTransactionAmount(String transactionAmount) {
		this.transactionAmount = transactionAmount;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getTransactionDatetime() {
		return transactionDatetime;
	}
	public void setTransactionDatetime(String transactionDatetime) {
		this.transactionDatetime = transactionDatetime;
	}
    
    
}

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
	private Timestamp contact_date;
	private String client_type;
	private String client_phone_num;
	
	
	
	
	
	
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
	public Timestamp getContact_date() {
		return contact_date;
	}
	public void setContact_date(Timestamp contact_date) {
		this.contact_date = contact_date;
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
	
	
	
}

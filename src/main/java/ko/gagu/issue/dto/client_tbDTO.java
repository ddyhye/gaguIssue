package ko.gagu.issue.dto;

import java.time.LocalDateTime;

import org.apache.ibatis.type.Alias;

@Alias(value="client")
public class client_tbDTO {
	
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

	
	
	
}

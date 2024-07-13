package ko.gagu.issue.dto;

import org.apache.ibatis.type.Alias;

@Alias(value="salesPrice")
public class salesPriceDTO {
	private int poPriceList;
	private int salePriceList;
	private int profitPriceList;
	
	
	public int getPoPriceList() {
		return poPriceList;
	}
	public int getSalePriceList() {
		return salePriceList;
	}
	public int getProfitPriceList() {
		return profitPriceList;
	}
	public void setPoPriceList(int poPriceList) {
		this.poPriceList = poPriceList;
	}
	public void setSalePriceList(int salePriceList) {
		this.salePriceList = salePriceList;
	}
	public void setProfitPriceList(int profitPriceList) {
		this.profitPriceList = profitPriceList;
	}
}

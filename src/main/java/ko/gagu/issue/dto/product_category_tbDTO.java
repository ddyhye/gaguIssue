package ko.gagu.issue.dto;

import org.apache.ibatis.type.Alias;

@Alias(value="product_category")
public class product_category_tbDTO {
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
	
	
}

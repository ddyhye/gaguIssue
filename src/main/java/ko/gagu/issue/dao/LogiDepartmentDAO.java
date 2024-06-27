package ko.gagu.issue.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.LogiDeptDTO;
import ko.gagu.issue.dto.client_tbDTO;
import ko.gagu.issue.dto.purchase_order_tbDTO;

@Mapper
public interface LogiDepartmentDAO {

	List<LogiDeptDTO> inventoryListDraw(String productSearch, String productCategory, String clientList);

	List<String> getCategoryList();

	List<String> getClientList();

	String getPONumber();

	String getEmpDept(int idx_employee);

	String getEmpLevel(int idx_employee);

	List<String> lackClient();

	List<LogiDeptDTO> lackProductByClient(String client);

	LogiDeptDTO getPOProduct(int idx_product);

	client_tbDTO getClientData(String client);

	void insertPurchase(int poNum, int idx_employee, int idx_business, int idx_product);
	int insertPurchaseGetIdx(purchase_order_tbDTO dto);	// dto로 삽입. (인덱스번호얻기위해)

	void updatePurchase(String newFileName, int poNum);

	void insertReceiving(int idx_poIdx, int idx_product, int minimum_stock);

	List<LogiDeptDTO> getReceivingHistory();

	List<LogiDeptDTO> getOrderList();

	
	String getOrderTime(int orderNo);
	String getOrderClient(int orderNo);
	int getOrderTotal(int orderNo);
	List<LogiDeptDTO> getOrderProductList(int orderNo);
	String getOrderAccept(int orderNo);

	void insertDelivery(int idx_order);
	void updateOrderState(int idx_order);

	List<LogiDeptDTO> getDeliveryList();



}

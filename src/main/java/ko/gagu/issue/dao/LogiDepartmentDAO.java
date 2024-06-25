package ko.gagu.issue.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.LogiDeptDTO;
import ko.gagu.issue.dto.client_tbDTO;

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

}

package ko.gagu.issue.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.SupportDepartmentDTO;
import ko.gagu.issue.dto.stockentries_tbDTO;
import ko.gagu.issue.dto.warehouse_tbDTO;

@Mapper
public interface SupportDepartmentDAO {

	List<SupportDepartmentDTO> clientList(int cnt, int start, String clientSearch);

	Object clientListAllCount(int cnt, String clientSearch);

	int clientReg(Map<String, String> param);

	int del(String idx);

	Map<String, Object> getClient(int idx);

	int clientEdit(Map<String, String> param);

	SupportDepartmentDTO clientDetail(String idx_business);

	List<SupportDepartmentDTO> purchaseHistory(int cnt, int start, String idx_business);

	Object purchaseHistoryAllCount(int cnt, String idx_business);

	List<SupportDepartmentDTO> deliveryHistory(int cnt, int start, String idx_business);

	Object deliveryHistoryAllCount(int cnt, String idx_business);

	List<warehouse_tbDTO> storageList(int cnt, int start);

	Object storageListAllCount(int cnt);

	
	
}

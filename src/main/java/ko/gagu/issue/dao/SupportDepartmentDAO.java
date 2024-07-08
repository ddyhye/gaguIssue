package ko.gagu.issue.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.SupportDepartmentDTO;

@Mapper
public interface SupportDepartmentDAO {

	List<SupportDepartmentDTO> clientList(int cnt, int start, String clientSearch);

	Object clientListAllCount(int cnt, String clientSearch);

	int clientReg(Map<String, String> param);

	int del(String idx);

	Map<String, Object> getClient(int idx);

	
}

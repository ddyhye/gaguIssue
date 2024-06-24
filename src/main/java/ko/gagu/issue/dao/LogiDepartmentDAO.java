package ko.gagu.issue.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.LogiDeptDTO;

@Mapper
public interface LogiDepartmentDAO {

	List<LogiDeptDTO> inventoryListDrow();

}

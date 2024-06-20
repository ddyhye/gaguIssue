package ko.gagu.issue.document.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DocumentDAO {

	String getFormSrc(String form_name);

}

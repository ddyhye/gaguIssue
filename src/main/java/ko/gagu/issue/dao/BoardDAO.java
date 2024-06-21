package ko.gagu.issue.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.multipart.MultipartFile;

import ko.gagu.issue.dto.BoardDTO;

@Mapper
public interface BoardDAO {

	int insertBoard(BoardDTO dto);

	int insertFile(int post_id, String origin_name, String storedFileName);

}

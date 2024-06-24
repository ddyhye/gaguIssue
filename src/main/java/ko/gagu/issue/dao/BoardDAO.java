package ko.gagu.issue.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.multipart.MultipartFile;

import ko.gagu.issue.dto.BoardDTO;

@Mapper
public interface BoardDAO {

	int insertBoard(BoardDTO dto);

	int insertFile(int post_id, String origin_name, String file_name);

	void updateBoardFile(int post_id, int fileIdx);

	List<BoardDTO> selectBoardList();

}

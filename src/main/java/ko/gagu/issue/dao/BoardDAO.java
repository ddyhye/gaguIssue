package ko.gagu.issue.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.multipart.MultipartFile;

import ko.gagu.issue.dto.BoardDTO;

@Mapper
public interface BoardDAO {

	int insertBoard(BoardDTO dto);

	int insertFile(int post_id, String origin_name, String file_name);

	void updateBoardFile(int post_id, int fileIdx);

	List<BoardDTO> selectBoardList();

	void increaseViewCount(int post_id);

	BoardDTO getBoardById(int post_id);

	BoardDTO getFileById(Integer idx_file);
	
	List<BoardDTO> selectPaginatedBoardList(int startIndex, int pageSize);

    // 전체 게시글 수 조회 메서드
    int selectTotalBoardCount();

	BoardDTO findById(int post_id);

	void update(BoardDTO boarddto);

	List<BoardDTO> searchByTitle(String keyword);

	List<BoardDTO> searchByTitleAndContent(String keyword);

}

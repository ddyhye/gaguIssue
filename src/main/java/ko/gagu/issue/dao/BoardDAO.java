package ko.gagu.issue.dao;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.dto.BoardDTO;

@Mapper
public interface BoardDAO {

	int insertBoard(BoardDTO dto);

}

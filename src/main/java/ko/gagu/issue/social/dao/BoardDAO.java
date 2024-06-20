package ko.gagu.issue.social.dao;

import org.apache.ibatis.annotations.Mapper;

import ko.gagu.issue.social.dto.BoardDTO;

@Mapper
public interface BoardDAO {

	int insertBoard(BoardDTO dto);

}

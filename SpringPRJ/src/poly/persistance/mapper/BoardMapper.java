package poly.persistance.mapper;



import java.util.List;

import config.Mapper;
import poly.dto.BoardDTO;
import poly.dto.SingleDTO;


@Mapper("BoardMapper")
public interface BoardMapper {
	public List<BoardDTO> getBoardList(String page) throws Exception;
	public int insertBoard(BoardDTO bDTO) throws Exception;
	
	public int deleteBoard(String board_no) throws Exception;
	public int updateAnswer(String board_no) throws Exception;
}

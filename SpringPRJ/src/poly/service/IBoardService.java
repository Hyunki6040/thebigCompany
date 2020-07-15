package poly.service;

import java.util.List;

import poly.dto.BoardDTO;

public interface IBoardService {
	public List<BoardDTO> getBoardList(String page) throws Exception;
	public int insertBoard(BoardDTO bDTO) throws Exception;
	
	public int deleteBoard(String board_no) throws Exception;
	public int updateAnswer(String board_no) throws Exception;
}

package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.BoardDTO;
import poly.persistance.mapper.BoardMapper;
import poly.service.IBoardService;

@Service("BoardService")
public class BoardService implements IBoardService {

	@Resource(name = "BoardMapper")
	private BoardMapper boardMapper;
	
	
	@Override
	public List<BoardDTO> getBoardList(String page) throws Exception {
		return boardMapper.getBoardList(page);
	}
	
	@Override
	public int insertBoard(BoardDTO bDTO) throws Exception {
		return boardMapper.insertBoard(bDTO);
	}
	
	@Override
	public int deleteBoard(String board_no) throws Exception {
		return boardMapper.deleteBoard(board_no);
	}
	
	@Override
	public int updateAnswer(String board_no) throws Exception {
		return boardMapper.updateAnswer(board_no);
	}

	
}

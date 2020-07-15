package poly.service;

import java.util.List;

import poly.dto.BoardDTO;
import poly.dto.NoticeDTO;

public interface INoticeService {
	public List<NoticeDTO> getBoardList() throws Exception;
	public int insertBoard(NoticeDTO bDTO) throws Exception;
	public int modifyBoard(NoticeDTO bDTO) throws Exception;
	
	public int deleteBoard(String board_no) throws Exception;
	public int updateAnswer(String board_no) throws Exception;
}

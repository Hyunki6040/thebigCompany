package poly.service;

import java.util.List;

import poly.dto.ImgDTO;

public interface IImgBoardService {
	public List<ImgDTO> getBoardList(String page) throws Exception;
	public int insertBoard(ImgDTO bDTO) throws Exception;
	public int modifyBoard(ImgDTO bDTO) throws Exception;
	
	public String getImgDetail(String img_no) throws Exception;
	
	public int deleteBoard(String board_no) throws Exception;
	public int updateAnswer(String board_no) throws Exception;
}

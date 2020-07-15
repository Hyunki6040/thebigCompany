package poly.persistance.mapper;



import java.util.List;

import config.Mapper;
import poly.dto.ImgDTO;


@Mapper("ImgBoardMapper")
public interface ImgBoardMapper {
	public List<ImgDTO> getBoardList(String page) throws Exception;
	public int insertBoard(ImgDTO bDTO) throws Exception;
	public int insertBoard_01(ImgDTO bDTO) throws Exception;
	public int modifyBoard(ImgDTO bDTO) throws Exception;
	public int modifyBoard_01(ImgDTO bDTO) throws Exception;
	
	public String getImgDetail(String img_no) throws Exception;
	
	public int deleteBoard(String board_no) throws Exception;
	public int updateAnswer(String board_no) throws Exception;
}

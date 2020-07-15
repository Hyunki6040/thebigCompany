package poly.persistance.mapper;



import java.util.List;

import config.Mapper;
import poly.dto.ImgDTO;
import poly.dto.NoticeDTO;


@Mapper("NoticeMapper")
public interface NoticeMapper {
	public List<NoticeDTO> getBoardList() throws Exception;
	public int insertBoard(NoticeDTO bDTO) throws Exception;
	public int modifyBoard(NoticeDTO bDTO) throws Exception;
	
	public int deleteBoard(String board_no) throws Exception;
	public int updateAnswer(String board_no) throws Exception;
}

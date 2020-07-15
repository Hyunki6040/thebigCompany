package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.ImgDTO;
import poly.dto.NoticeDTO;
import poly.persistance.mapper.NoticeMapper;
import poly.service.INoticeService;

@Service("NoticeService")
public class NoticeService implements INoticeService {

	@Resource(name = "NoticeMapper")
	private NoticeMapper noticeMapper;
	
	
	@Override
	public List<NoticeDTO> getBoardList() throws Exception {
		return noticeMapper.getBoardList();
	}
	
	@Override
	public int insertBoard(NoticeDTO bDTO) throws Exception {
		return noticeMapper.insertBoard(bDTO);
	}
	
	@Override
	public int deleteBoard(String board_no) throws Exception {
		return noticeMapper.deleteBoard(board_no);
	}
	
	@Override
	public int updateAnswer(String board_no) throws Exception {
		return noticeMapper.updateAnswer(board_no);
	}
	
	@Override
	public int modifyBoard(NoticeDTO bDTO) throws Exception {
		return noticeMapper.modifyBoard(bDTO);
	}

	
}

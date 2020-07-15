package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.ImgDTO;
import poly.persistance.mapper.ImgBoardMapper;
import poly.service.IImgBoardService;

@Service("ImgBoardService")
public class ImgBoardService implements IImgBoardService {

	@Resource(name = "ImgBoardMapper")
	private ImgBoardMapper imgboardMapper;
	
	
	@Override
	public List<ImgDTO> getBoardList(String page) throws Exception {
		return imgboardMapper.getBoardList(page);
	}
	
	@Override
	public int insertBoard(ImgDTO bDTO) throws Exception {
		int num = 0;
		try {
			bDTO.getImg_01().length();
		}catch (Exception e) {
			// TODO: handle exception
			num = 0;
		}
		
		if(bDTO.getImg_01().length()>0) {
			return imgboardMapper.insertBoard_01(bDTO);
		}
		return imgboardMapper.insertBoard(bDTO);
	}
	
	@Override
	public int deleteBoard(String board_no) throws Exception {
		return imgboardMapper.deleteBoard(board_no);
	}
	
	@Override
	public String getImgDetail(String img_no) throws Exception {
		return imgboardMapper.getImgDetail(img_no);
	}
	
	@Override
	public int updateAnswer(String board_no) throws Exception {
		return imgboardMapper.updateAnswer(board_no);
	}
	
	@Override
	public int modifyBoard(ImgDTO bDTO) throws Exception {
		if(!bDTO.getImg_01().equals(null) || bDTO.getImg_01().length()>0) {
			return imgboardMapper.modifyBoard_01(bDTO);
		}
		return imgboardMapper.modifyBoard(bDTO);
	}

	
}

package poly.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dto.BoardDTO;
import poly.dto.ImgDTO;
import poly.dto.NoticeDTO;
import poly.service.IBoardService;
import poly.service.IImgBoardService;
import poly.service.INoticeService;
import poly.util.CmmUtil;

@Controller
@RequestMapping("/TBS")
public class TBSController {
	/*@Resource(name = "AdminService")
	private IAdminService adminService;*/
	@Resource(name = "BoardService")
	private IBoardService boardService;
	@Resource(name = "NoticeService")
	private INoticeService noticeService;
	@Resource(name = "ImgBoardService")
	private IImgBoardService imgboardService;
	
	@RequestMapping(value = "/none")
	public String none() throws Exception {
		return "/TBS/none";
	}
	
	@RequestMapping(value = "/main")
	public String main() throws Exception {
		return "/TBS/main";
	}
	
	@RequestMapping(value = "/company_info")
	public String company_info() throws Exception {
		return "/TBS/company_info";
	}
	
	@RequestMapping(value = "/location")
	public String location() throws Exception {
		return "/TBS/location";
	}
	
	@RequestMapping(value = "/notice")
	public String notice(Model model) throws Exception {
		List<NoticeDTO> bList = noticeService.getBoardList();
		
		model.addAttribute("bList", bList);
		
		return "/TBS/notice";
	}
	
	@RequestMapping(value = "/estimate")
	public String estimate(Model model, HttpSession session) throws Exception {
		String user_right = "0";
		user_right = (String) session.getAttribute("user_right");
		List<BoardDTO> bList = null;
		try {
			user_right.length();
		}catch (Exception e) {
			// TODO: handle exception
			user_right = "0";
		}
		
		if(user_right.equals("1")) {
			bList = boardService.getBoardList("TBSestimate");
		}
		model.addAttribute("bList", bList);
		return "/TBS/estimate";
	}
	
	@RequestMapping(value = "/coalition")
	public String coalition(Model model, HttpSession session) throws Exception {
		String user_right = "0";
		user_right = (String) session.getAttribute("user_right");
		List<BoardDTO> bList = null;
		try {
			user_right.length();
		}catch (Exception e) {
			// TODO: handle exception
			user_right = "0";
		}
		
		if(user_right.equals("1")) {
			bList = boardService.getBoardList("TBScoalition");
		}
		model.addAttribute("bList", bList);
		
		return "/TBS/coalition";
	}
	
	@RequestMapping(value = "/system")
	public String system(HttpServletRequest request, Model model) throws Exception {
		String select = CmmUtil.nvl((String) request.getParameter("select"));
		List<ImgDTO> bList = imgboardService.getBoardList("TBSsystem");
		
		
		model.addAttribute("bList", bList);
		model.addAttribute("select", select);
		return "/TBS/system";
	}

}

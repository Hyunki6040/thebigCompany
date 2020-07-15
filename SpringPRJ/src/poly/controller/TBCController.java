package poly.controller;

import static org.hamcrest.CoreMatchers.nullValue;

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
import poly.dto.SingleDTO;
import poly.service.IAdminService;
import poly.service.IBoardService;
import poly.service.IImgBoardService;
import poly.service.INoticeService;
import poly.service.ISingleService;
import poly.util.CmmUtil;

@Controller
@RequestMapping("/TBC")
public class TBCController {
	@Resource(name = "AdminService")
	private IAdminService adminService;
	@Resource(name = "BoardService")
	private IBoardService boardService;
	@Resource(name = "ImgBoardService")
	private IImgBoardService imgboardService;
	@Resource(name = "NoticeService")
	private INoticeService noticeService;
	
	@Resource(name = "SingleService")
	private ISingleService singleService;
	/*@RequestMapping(value = "/main")
	public String main() throws Exception {
		return "/TBC/main";
	}*/
	
	@RequestMapping(value = {"", "/", "/main"})
	public String main() throws Exception {
		return "/TBC/main";
	}
	
	@RequestMapping(value = "/company_info")
	public String company_info(Model model) throws Exception {
		/*SingleDTO sDTO = new SingleDTO();
		System.out.println(1);
		sDTO = singleService.getCompIntroIMG();
		System.out.println(5);
		model.addAttribute("sDTO", sDTO);
		System.out.println(6);*/
		return "/TBC/company_info";
	}

	
	@RequestMapping(value = "/organ_chart")
	public String organ_chart(Model model) throws Exception {
		SingleDTO sDTO = new SingleDTO();
		sDTO = adminService.getOrgChart();
		model.addAttribute("sDTO", sDTO);
		return "/TBC/organ_chart";
	}
	
	@RequestMapping(value = "/member")
	public String member() throws Exception {
		return "/TBC/member";
	}
	
	@RequestMapping(value = "/location")
	public String location() throws Exception {
		return "/TBC/location";
	}
	
	@RequestMapping(value = "/detail")
	public String detail() throws Exception {
		
		return "/TBC/detail";
	}

	@RequestMapping(value = "/story")
	public String story(Model model) throws Exception {
		List<ImgDTO> bList = imgboardService.getBoardList("TBCstory");
		
		model.addAttribute("bList", bList);
		return "/TBC/story";
	}
	
	@RequestMapping(value = "/notice")
	public String notice(Model model) throws Exception {
		List<NoticeDTO> bList = noticeService.getBoardList();
		
		model.addAttribute("bList", bList);
		
		return "/TBC/notice";
	}
	
	@RequestMapping(value = "/business_areas")
	public String business_areas() throws Exception {
		return "/TBC/business_areas";
	}
	
	@RequestMapping(value = "/inquiry")
	public String inquiry(Model model, HttpSession session) throws Exception {
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
			bList = boardService.getBoardList("TBCinquiry");
		}
		model.addAttribute("bList", bList);
		
		return "/TBC/inquiry";
	}
	
	@RequestMapping(value = "/estimate")
	public String board(Model model, HttpSession session) throws Exception {
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
			bList = boardService.getBoardList("TBCestimate");
		}
		model.addAttribute("bList", bList);
		return "/TBC/estimate";
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
			bList = boardService.getBoardList("TBCcoalition");
		}
		model.addAttribute("bList", bList);
		return "/TBC/coalition";
	}
	
	@RequestMapping(value = "/lineup")
	public String lineup(HttpServletRequest request, Model model) throws Exception {
		
		String select = CmmUtil.nvl((String) request.getParameter("select"));
		List<ImgDTO> bList = imgboardService.getBoardList("TBClineup");
		
		model.addAttribute("bList", bList);
		model.addAttribute("select", select);
		return "/TBC/lineup";
	}
	
	@RequestMapping(value = "/portfolio")
	public String portfolio(HttpServletRequest request, Model model) throws Exception {
		String select = CmmUtil.nvl((String) request.getParameter("select"));
		List<ImgDTO> bList = imgboardService.getBoardList("TBCportfolio");
		
		
		model.addAttribute("bList", bList);
		model.addAttribute("select", select);
		return "/TBC/portfolio";
	}

}

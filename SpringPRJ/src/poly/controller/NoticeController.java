package poly.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

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
import poly.service.INoticeService;
import poly.util.CmmUtil;
import poly.util.GoogleDrive;
import poly.util.VerifyRecaptcha;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	@Resource(name = "NoticeService")
	private INoticeService noticeService;

	@RequestMapping(value = "BoardProc")
	public String BoardProc(HttpServletRequest request, Model model, HttpSession session) throws Exception {
		String page = "";
		try {
			page = CmmUtil.nvl((String) request.getParameter("page"));
			page.length();
		} catch (Exception e) {
			page = "";
		}
		
		// reCAPTCHA
		VerifyRecaptcha.setSecretKey("6Ldbxc4UAAAAAOYMmE7uKL1DVs5zBrSsNlr1MVW8");
		String gRecaptchaResponse = request.getParameter("g-recaptcha-response");

		try {
			String title = CmmUtil.nvl((String) request.getParameter("title"));
			String content = CmmUtil.nvl((String) request.getParameter("content"));
			SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");

			if (VerifyRecaptcha.verify(gRecaptchaResponse)) {

				String reg_dt = CmmUtil.nvl((String) request.getParameter("reg_dt"));
				reg_dt = "20" + reg_dt.substring(0, 2) + "-" + reg_dt.substring(2, 4) + "-" + reg_dt.substring(4, 6);

				NoticeDTO bDTO = new NoticeDTO();
				bDTO.setContent(content);
				content = content.replace("\n", "<br>");
				bDTO.setReg_dt(reg_dt);
				bDTO.setTitle(title);

				int result = 0;
				result = noticeService.insertBoard(bDTO);
				if (result == 1) {
					model.addAttribute("msg", "등록 되었습니다.");
					model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
				} else {
					model.addAttribute("msg", "등록에 실패했습니다.");
					model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do" + "?content=" + content + "&title" + title);
				}

			} else {
				model.addAttribute("msg", "AI에 의해 잘못된 접근이 확인되었습니다. 새로고침 후 다시 시도해주세요");
				model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do" + "?content=" + content + "&title" + title);
			}
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("msg", "오류발생" + e);
			model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
		}

	return"/alert";
}

	

	@RequestMapping(value = "deleteBoard")
	public String deleteBoard(HttpServletRequest request, Model model, HttpSession session) throws Exception {
		String board_no = "";
		String page = "";
		try {
			page = CmmUtil.nvl((String) request.getParameter("page"));
			board_no = CmmUtil.nvl((String) request.getParameter("board_no"));
			board_no.length();
			page.length();
		} catch (Exception e) {
			board_no = "";// TODO: handle exception
			page = "";
		}
		
		if(board_no.length() > 0 && page.length() > 0) {
			try {
				VerifyRecaptcha.setSecretKey("6Ldbxc4UAAAAAOYMmE7uKL1DVs5zBrSsNlr1MVW8");
				String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
				
				if (VerifyRecaptcha.verify(gRecaptchaResponse)) {
					noticeService.deleteBoard(board_no);
					model.addAttribute("msg", "삭제되었습니다.");
					model.addAttribute("url", "../" + page.substring(0,3) + "/" + page.substring(3) + ".do");
				}else {
					model.addAttribute("msg", "AI에 의해 잘못된 접근이 확인되었습니다. 새로고침 후 다시 시도해주세요");
					model.addAttribute("url", "../" + page.substring(0,3) + "/" + page.substring(3) + ".do");
				}
			}catch (Exception e) {
				// TODO: handle exception
				model.addAttribute("msg", "오류발생" + e);
				model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
			}
			
		
		}else {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("url", "../TBC/main.do");
		}
		
		return "alert";
	}
	
	@RequestMapping(value = "updateBoard")
	public String updateImgBoard(HttpServletRequest request, Model model, HttpSession session) throws Exception {
		String page = CmmUtil.nvl((String) request.getParameter("page"));
		
		try {
				String notice_no = CmmUtil.nvl((String) request.getParameter("notice_no"));
				
				String title = CmmUtil.nvl((String) request.getParameter("title"));
				String content = CmmUtil.nvl((String) request.getParameter("content"));
				String reg_dt = CmmUtil.nvl((String) request.getParameter("reg_dt"));
				if(reg_dt.length() == 6) {
					reg_dt = "20" + reg_dt.substring(0, 2) + "-" + reg_dt.substring(2, 4) + "-" + reg_dt.substring(4, 6);
				}

				NoticeDTO bDTO = new NoticeDTO();
				bDTO.setContent(content);
				bDTO.setTitle(title);
				bDTO.setReg_dt(reg_dt);
				bDTO.setNotice_no(notice_no);

				int result = 0;
				result = noticeService.modifyBoard(bDTO);
				if (result == 1) {
					model.addAttribute("msg", "수정 되었습니다.");
					model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
				} else {
					model.addAttribute("msg", "수정에 실패했습니다.");
					model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
				}
			
		}catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("msg", "오류발생" + e);
			model.addAttribute("url", "../" + page.substring(0,3) + "/" + page.substring(3) + ".do");
		}
		
		
		return "/alert";
	}
	
}

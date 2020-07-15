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
import poly.service.IBoardService;
import poly.util.CmmUtil;
import poly.util.VerifyRecaptcha;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Resource(name = "BoardService")
	private IBoardService boardService;
	
	@RequestMapping(value = "BoardProc")
	public String BoardProc(HttpServletRequest request, Model model, HttpSession session) throws Exception {
		String page = CmmUtil.nvl((String) request.getParameter("page"));
		// reCAPTCHA
		VerifyRecaptcha.setSecretKey("6Ldbxc4UAAAAAOYMmE7uKL1DVs5zBrSsNlr1MVW8");
		String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
		try {

			if (page.equals("TBCestimate") || page.equals("TBSestimate")) {
				String companyname = CmmUtil.nvl((String) request.getParameter("companyname"));
				String person = CmmUtil.nvl((String) request.getParameter("person"));
				String email = CmmUtil.nvl((String) request.getParameter("email"));
				String call = CmmUtil.nvl((String) request.getParameter("call"));
				String eventname = CmmUtil.nvl((String) request.getParameter("eventname"));
				String eventdate = CmmUtil.nvl((String) request.getParameter("eventdate"));
				String eventplace = CmmUtil.nvl((String) request.getParameter("eventplace"));
				String mcyn = CmmUtil.nvl((String) request.getParameter("mcyn"));
				String money = CmmUtil.nvl((String) request.getParameter("money"));
				String eventcon = CmmUtil.nvl((String) request.getParameter("eventcon"));
				if (VerifyRecaptcha.verify(gRecaptchaResponse)) {
					String title = companyname + "의 " + "'" + eventname + "' 문의";
					String content = "회사명 : " + companyname + "</br></br>담당자 : " + person + "</br></br>연락처 : " + call
							+ "</br></br>이메일 : " + email + "</br></br>행사명 : " + eventname + "</br></br>mc,공연여부 : "
							+ mcyn + "</br></br>예산 : " + money + "</br></br>행사일자 : " + eventdate + "</br></br>장소 : "
							+ eventplace + "</br></br>행사내용 : " + eventcon;
					SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");

					Date time = new Date();

					String reg_dt = format1.format(time);

					BoardDTO bDTO = new BoardDTO();
					bDTO.setContent(content);
					bDTO.setPage(page);
					bDTO.setTitle(title);
					bDTO.setReg_dt(reg_dt);
					bDTO.setWriter(person);

					int result = 0;
					result = boardService.insertBoard(bDTO);
					if (result == 1) {
						model.addAttribute("msg", "등록 되었습니다.");
						model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
					} else {
						model.addAttribute("msg", "등록에 실패했습니다.");
						model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do" + "?companyname=" + companyname + "&person=" + person + "&email=" + email + "&call=" + call + "&eventname=" + eventname
								+ "&eventdate=" + eventdate + "&eventplace=" + eventplace + "&mcyn=" + mcyn + "&money=" + money + "&eventcon=" + eventcon);
					}
				} else {
					model.addAttribute("msg", "AI에 의해 잘못된 접근이 확인되었습니다. 새로고침 후 다시 시도해주세요");
					model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do" + "?companyname=" + companyname + "&person=" + person + "&email=" + email + "&call=" + call + "&eventname=" + eventname
							+ "&eventdate=" + eventdate + "&eventplace=" + eventplace + "&mcyn=" + mcyn + "&money=" + money + "&eventcon=" + eventcon);
				}
			} else if (page.equals("TBCinquiry")) {
				String companyname = CmmUtil.nvl((String) request.getParameter("companyname"));
				String person = CmmUtil.nvl((String) request.getParameter("person"));
				String email = CmmUtil.nvl((String) request.getParameter("email"));
				String call = CmmUtil.nvl((String) request.getParameter("call"));
				String eventname = CmmUtil.nvl((String) request.getParameter("eventname"));
				String eventdate = CmmUtil.nvl((String) request.getParameter("eventdate"));
				String eventplace = CmmUtil.nvl((String) request.getParameter("eventplace"));
				String money = CmmUtil.nvl((String) request.getParameter("money"));
				String eventcon = CmmUtil.nvl((String) request.getParameter("eventcon"));
				String eventtime = CmmUtil.nvl((String) request.getParameter("eventtime"));
				if (VerifyRecaptcha.verify(gRecaptchaResponse)) {
					String title = companyname + "의 " + "'" + eventname + "' 문의";
					String content = "회사명 : " + companyname + "</br></br>담당자 : " + person + "</br></br>연락처 : " + call
							+ "</br></br>이메일 : " + email + "</br></br>행사명 : " + eventname + "</br></br>예산 : " + money
							+ "</br></br>행사일자 : " + eventdate + "</br></br>장소 : " + eventplace + "</br></br>공연시간 : "
							+ eventtime + "</br></br>행사내용 : " + eventcon;
					SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");

					Date time = new Date();

					String reg_dt = format1.format(time);

					BoardDTO bDTO = new BoardDTO();
					bDTO.setContent(content);
					bDTO.setPage(page);
					bDTO.setTitle(title);
					bDTO.setReg_dt(reg_dt);
					bDTO.setWriter(person);

					int result = 0;
					result = boardService.insertBoard(bDTO);
					if (result == 1) {
						model.addAttribute("msg", "등록 되었습니다.");
						model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
					} else {
						model.addAttribute("msg", "등록에 실패했습니다.");
						model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do" + "?companyname=" + companyname + "&person=" + person + "&email=" + email + "&call=" + call + "&eventname" + eventname + "&eventdate=" + eventdate + "&eventplace=" + eventplace
								+ "&money=" + money + "&eventcon=" + eventcon + "&eventtime=" + eventtime);
					}
				} else {
					model.addAttribute("msg", "AI에 의해 잘못된 접근이 확인되었습니다. 새로고침 후 다시 시도해주세요");
					model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do" + "?companyname=" + companyname + "&person=" + person + "&email=" + email + "&call=" + call + "&eventname" + eventname + "&eventdate=" + eventdate + "&eventplace=" + eventplace
							+ "&money=" + money + "&eventcon=" + eventcon + "&eventtime=" + eventtime);
				}
			} else if (page.equals("TBCcoalition") || page.equals("TBScoalition")) {
				String companyname = CmmUtil.nvl((String) request.getParameter("companyname"));
				String person = CmmUtil.nvl((String) request.getParameter("person"));
				String email = CmmUtil.nvl((String) request.getParameter("email"));
				String call = CmmUtil.nvl((String) request.getParameter("call"));
				String eventcon = CmmUtil.nvl((String) request.getParameter("eventcon"));
				if (VerifyRecaptcha.verify(gRecaptchaResponse)) {
					String title = companyname + "의 " + "'" + person + "' 제휴 문의";
					String content = "회사명 : " + companyname + "</br></br>담당자 : " + person + "</br></br>연락처 : " + call
							+ "</br></br>이메일 : " + email + "</br></br>제휴내용 : " + eventcon;
					SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");

					Date time = new Date();

					String reg_dt = format1.format(time);

					BoardDTO bDTO = new BoardDTO();
					bDTO.setContent(content);
					bDTO.setPage(page);
					bDTO.setTitle(title);
					bDTO.setReg_dt(reg_dt);
					bDTO.setWriter(person);

					int result = 0;
					result = boardService.insertBoard(bDTO);
					if (result == 1) {
						model.addAttribute("msg", "등록 되었습니다.");
						model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
					} else {
						model.addAttribute("msg", "등록에 실패했습니다.");
						model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do" + "?companyname=" + companyname + "&person=" + person + "&email=" + email + "&call=" + call + "&eventcon=" + eventcon);
					}
				} else {
					model.addAttribute("msg", "AI에 의해 잘못된 접근이 확인되었습니다. 새로고침 후 다시 시도해주세요");
					model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do" + "?companyname=" + companyname + "&person=" + person + "&email=" + email + "&call=" + call + "&eventcon=" + eventcon);
				}
				}else {
					model.addAttribute("msg", "잘못된 접근입니다.");
					model.addAttribute("url", "../TBC/main.do");
				}
			
		}catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("msg", "오류발생" + e);
			model.addAttribute("url", "../" + page.substring(0,3) + "/" + page.substring(3) + ".do");
		}
		
		
		return "/alert";
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
					boardService.deleteBoard(board_no);
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
	
	@RequestMapping(value = "updateAnswer")
	public String updateAnswer(HttpServletRequest request, Model model, HttpSession session) throws Exception {
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
					boardService.updateAnswer(board_no);
					model.addAttribute("msg", "답변 완료되었습니다.");
					model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
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
	

}

package poly.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.ImgDTO;
import poly.service.IImgBoardService;
import poly.util.CmmUtil;
import poly.util.GoogleDrive;
import poly.util.VerifyRecaptcha;

@Controller
public class ImgBoardController {
	@Resource(name = "ImgBoardService")
	private IImgBoardService imgBoardService;
	
	@RequestMapping(value = "ImgBoardProc")
	public String ImgBoardProc(HttpServletRequest request, Model model, HttpSession session) throws Exception {
		String page = CmmUtil.nvl((String) request.getParameter("page"));
		
		try {
			if (page.equals("TBCstory")) {
				String image = CmmUtil.nvl((String) request.getParameter("image"));
				image = GoogleDrive.ImgSrcGet(image);
				String title = CmmUtil.nvl((String) request.getParameter("title"));
				String content = CmmUtil.nvl((String) request.getParameter("content"));
				content.replaceAll(" ", "");
				String[] content_images = content.split(",");
				for (int i = 0; i < content_images.length; i++) {
					if (!content_images[i].contains("drive.google.com/uc?export=view")) {
						content_images[i] = GoogleDrive.ImgSrcGet(content_images[i]);
					}
				}
				content = content_images.toString();
				
				String reg_dt = CmmUtil.nvl((String) request.getParameter("reg_dt"));
				reg_dt = "20" + reg_dt.substring(0, 2) + "-" + reg_dt.substring(2, 4) + "-" + reg_dt.substring(4, 6);

				ImgDTO bDTO = new ImgDTO();
				bDTO.setContent(content);
				bDTO.setPage(page);
				bDTO.setTitle(title);
				bDTO.setReg_dt(reg_dt);
				bDTO.setImg(image);
				bDTO.setTag("all");

				int result = 0;
				result = imgBoardService.insertBoard(bDTO);
				if (result == 1) {
					model.addAttribute("msg", "등록 되었습니다.");
					model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
				} else {
					model.addAttribute("msg", "등록에 실패했습니다.");
					model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
				}

			}else if (page.equals("TBCportfolio") || page.equals("TBClineup")) {
				String image = CmmUtil.nvl((String) request.getParameter("image"));
				image = GoogleDrive.ImgSrcGet(image);
				String title = CmmUtil.nvl((String) request.getParameter("title"));
				String content = CmmUtil.nvl((String) request.getParameter("content"));
				String reg_dt = "";
				
				ImgDTO bDTO = new ImgDTO();
				
				if(page.equals("TBClineup")) {
					SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
					Date time = new Date();
					reg_dt = format1.format(time);
					String image_01 = CmmUtil.nvl((String) request.getParameter("image_01"));
					
					image_01 = GoogleDrive.ImgSrcGet(image_01);
					bDTO.setImg_01(image_01);
				}else if(page.equals("TBCportfolio")) {
					reg_dt = CmmUtil.nvl((String) request.getParameter("reg_dt"));
					reg_dt = "20" + reg_dt.substring(0, 2) + "-" + reg_dt.substring(2, 4) + "-" + reg_dt.substring(4, 6);
					
					content.replaceAll(" ", "");
					String[] content_images = content.split(",");
					for (int i = 0; i < content_images.length; i++) {
						if (!content_images[i].contains("drive.google.com/uc?export=view")) {
							content_images[i] = GoogleDrive.ImgSrcGet(content_images[i]);
						}
					}
					content = content_images.toString();
				}
				
				String tag = CmmUtil.nvl((String) request.getParameter("tag1"));
				if(!tag.equals("teller") || !tag.equals("local_events") || !tag.equals("concert") || !tag.equals("broadcast")){
					tag += " all " + CmmUtil.nvl((String) request.getParameter(tag + "tag"));
				}else {
					tag += " all";
				}

				
				bDTO.setContent(content);
				bDTO.setPage(page);
				bDTO.setTitle(title);
				bDTO.setReg_dt(reg_dt);
				bDTO.setImg(image);
				bDTO.setTag(tag);

				int result = 0;
				result = imgBoardService.insertBoard(bDTO);
				if (result == 1) {
					model.addAttribute("msg", "등록 되었습니다.");
					model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
				} else {
					model.addAttribute("msg", "등록에 실패했습니다.");
					model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
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
	
	@RequestMapping(value = "updateImgBoard")
	public String updateImgBoard(HttpServletRequest request, Model model, HttpSession session) throws Exception {
		String page = CmmUtil.nvl((String) request.getParameter("page"));
		
		try {
			if (page.equals("TBCstory")) {
				String image = CmmUtil.nvl((String) request.getParameter("image"));
				String img_no = CmmUtil.nvl((String) request.getParameter("img_no"));
				if(!image.contains("drive.google.com/uc?export=view")) {
					image = GoogleDrive.ImgSrcGet(image);
				}
				
				String title = CmmUtil.nvl((String) request.getParameter("title"));
				String content = CmmUtil.nvl((String) request.getParameter("content"));
				content.replaceAll(" ", "");
				String[] content_images = content.split(",");
				for (int i = 0; i < content_images.length; i++) {
					if (!content_images[i].contains("drive.google.com/uc?export=view")) {
						content_images[i] = GoogleDrive.ImgSrcGet(content_images[i]);
					}
				}
				content = content_images.toString();
				
				String reg_dt = CmmUtil.nvl((String) request.getParameter("reg_dt"));
				if(reg_dt.length() == 6) {
					reg_dt = "20" + reg_dt.substring(0, 2) + "-" + reg_dt.substring(2, 4) + "-" + reg_dt.substring(4, 6);
				}

				ImgDTO bDTO = new ImgDTO();
				bDTO.setContent(content);
				bDTO.setPage(page);
				bDTO.setTitle(title);
				bDTO.setReg_dt(reg_dt);
				bDTO.setImg(image);
				bDTO.setImg_no(img_no);
				bDTO.setTag("all");

				int result = 0;
				result = imgBoardService.modifyBoard(bDTO);
				if (result == 1) {
					model.addAttribute("msg", "수정 되었습니다.");
					model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
				} else {
					model.addAttribute("msg", "수정에 실패했습니다.");
					model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
				}

			}else if (page.equals("TBCportfolio") || page.equals("TBClineup")) {
				String image = CmmUtil.nvl((String) request.getParameter("image"));
				String img_no = CmmUtil.nvl((String) request.getParameter("img_no"));
				if(!image.contains("drive.google.com/uc?export=view")) {
					image = GoogleDrive.ImgSrcGet(image);
				}
				String title = CmmUtil.nvl((String) request.getParameter("title"));
				String content = CmmUtil.nvl((String) request.getParameter("content"));
				if(page.equals("TBCportfolio")) {
					content.replaceAll(" ", "");
					String[] content_images = content.split(",");
					for (int i = 0; i < content_images.length; i++) {
						if (!content_images[i].contains("drive.google.com/uc?export=view")) {
							content_images[i] = GoogleDrive.ImgSrcGet(content_images[i]);
						}
					}
					content = content_images.toString();
				}
				String reg_dt = "";
				reg_dt = CmmUtil.nvl((String) request.getParameter("reg_dt"));
				if(reg_dt.length() == 6) {
					reg_dt = "20" + reg_dt.substring(0, 2) + "-" + reg_dt.substring(2, 4) + "-" + reg_dt.substring(4, 6);
				}
				
				String tag = CmmUtil.nvl((String) request.getParameter("tag1"));
				if(!tag.equals("teller") || !tag.equals("local_events") || !tag.equals("concert") || !tag.equals("broadcast")){
					tag += " all " + CmmUtil.nvl((String) request.getParameter(tag + "tag"));
				}else {
					tag += " all";
				}

				ImgDTO bDTO = new ImgDTO();
				bDTO.setContent(content);
				bDTO.setPage(page);
				bDTO.setTitle(title);
				bDTO.setReg_dt(reg_dt);
				bDTO.setImg(image);
				bDTO.setTag(tag);
				bDTO.setImg_no(img_no);
				if (page.equals("TBClineup")) {
					String image_01 = CmmUtil.nvl((String) request.getParameter("image_01"));
					if(!image_01.contains("drive.google.com/uc?export=view")) {
						image_01 = GoogleDrive.ImgSrcGet(image_01);
					}
					bDTO.setImg_01(image_01);
				}

				int result = 0;
				result = imgBoardService.modifyBoard(bDTO);
				if (result == 1) {
					model.addAttribute("msg", "수정 되었습니다.");
					model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
				} else {
					model.addAttribute("msg", "수정에 실패했습니다.");
					model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
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
	
	@RequestMapping(value = "ImgdeleteBoard")
	public String ImgdeleteBoard(HttpServletRequest request, Model model, HttpSession session) throws Exception {
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
					imgBoardService.deleteBoard(board_no);
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
	
	
	
	/*@RequestMapping(value = "updateAnswer")
	public String updateAnswer(HttpServletRequest request, Model model, HttpSession session) throws Exception {
		String board_no = "";
		String page = "";
		VerifyRecaptcha.setSecretKey("6Ldbxc4UAAAAAOYMmE7uKL1DVs5zBrSsNlr1MVW8");
		String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
		try {
			if (VerifyRecaptcha.verify(gRecaptchaResponse)) {

				try {
					page = CmmUtil.nvl((String) request.getParameter("page"));
					board_no = CmmUtil.nvl((String) request.getParameter("board_no"));
					board_no.length();
					page.length();
				} catch (Exception e) {
					board_no = "";// TODO: handle exception
					page = "";
				}

				if (board_no.length() > 0 && page.length() > 0) {
					boardService.updateAnswer(board_no);
					model.addAttribute("msg", "답변 완료되었습니다.");
					model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
					return "/alert";
				}
			}else {
				model.addAttribute("msg", "AI에 의해 잘못된 접근이 확인되었습니다. 새로고침 후 다시 시도해주세요");
				model.addAttribute("url", "../" + page.substring(0,3) + "/" + page.substring(3) + ".do");
			}
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("msg", "오류발생" + e);
			model.addAttribute("url", "../" + page.substring(0, 3) + "/" + page.substring(3) + ".do");
		}
		model.addAttribute("msg", "잘못된 접근입니다.");
		model.addAttribute("url", "../TBC/main.do");
		return "/alert";
	}*/
	

}

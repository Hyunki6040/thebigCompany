package poly.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.AdminDTO;
import poly.service.IAdminService;
import poly.util.CmmUtil;
import poly.util.GoogleDrive;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Resource(name = "AdminService")
	private IAdminService adminService;
	
	@RequestMapping(value = "/loginProc", method = RequestMethod.GET)
	public String loginProc(HttpServletRequest request, Model model, HttpSession session) throws Exception {
		String id = CmmUtil.nvl((String) request.getParameter("id"));
		String password = CmmUtil.nvl((String) request.getParameter("password"));
		
		AdminDTO aDTO = new AdminDTO();
		aDTO.setId(id);
		aDTO.setPw(password);
		
		String admin_no = "";
		try {
			admin_no = adminService.getAdminLogin(aDTO);
			admin_no.length();
		}catch (Exception e) {
			admin_no = "";
			System.out.println("오류:" + e);
		}
		
		if(admin_no.length() > 0) {
			session.setAttribute("user_right", "1");
			model.addAttribute("url", "/");
			model.addAttribute("msg", "로그인에 성공했습니다.");
		}else {
			model.addAttribute("url", "/admin.do");
			model.addAttribute("msg", "로그인에 실패했습니다.");
		}
		
		return "alert";
	}
	
	@RequestMapping(value = "/add")
	public String add(HttpServletRequest request, Model model, HttpSession session) throws Exception {
		
		return "/admin/add";
	}
	

}

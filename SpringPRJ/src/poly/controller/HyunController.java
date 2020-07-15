package poly.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HyunController {
	/*@Resource(name = "AdminService")
	private IAdminService adminService;*/
	
	@RequestMapping(value = "/hyun/top01")
	public String top01() throws Exception {
		return "/hyun/top01";
	}
	
	@RequestMapping(value = "/hyun/top02")
	public String top02() throws Exception {
		return "/hyun/top02";
	}
	
	@RequestMapping(value = "/hyun/main_img01")
	public String main_img01() throws Exception {
		return "/hyun/main_img01";
	}
	
	@RequestMapping(value = "/hyun/main")
	public String main() throws Exception {
		return "/hyun/main";
	}
	
	@RequestMapping(value = "/hyun/img_button01")
	public String img_button01() throws Exception {
		return "/hyun/img_button01";
	}
	
	@RequestMapping(value = "/hyun/navigation_slide")
	public String navigation_slide() throws Exception {
		return "/hyun/navigation_slide";
	}
	
	@RequestMapping(value = "/hyun/test")
	public String test() throws Exception {
		return "/hyun/test";
	}
	
	@RequestMapping(value = "/hyun/test03")
	public String test03() throws Exception {
		return "/hyun/test03";
	}
	
	@RequestMapping(value = "/error_404")
	public String error_404() throws Exception {
		return "/error_404";
	}
	
	@RequestMapping(value = "/index")
	public String index() throws Exception {
		return "redirect:/TBC/main.do";
	}
	
	@RequestMapping(value = "/admin")
	public String login(HttpServletRequest request, Model model, HttpSession session) throws Exception {
		session.invalidate();
		return "/admin/login";
	}


}

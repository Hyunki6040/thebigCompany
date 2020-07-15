package poly.controller;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.AdminDTO;
import poly.dto.SingleDTO;
import poly.service.IAdminService;
import poly.service.ISingleService;
import poly.util.CmmUtil;

@Controller
public class SingleController {

	@Resource(name = "AdminService")
	private IAdminService adminService;
	
	@Resource(name = "SingleService")
	private ISingleService singleService;
	
	@RequestMapping(value = "main")
	public String admin(HttpServletRequest request, Model model, HttpSession session) throws Exception {
		
		return "/admin/main";
	}
	
	/*
	@RequestMapping(value="dbtest")
	public String dbtest(Model model) throws Exception {
		System.out.println("1");
		SingleDTO sDTO = new SingleDTO();
		System.out.println("2");
		sDTO = singleService.getTest();
		System.out.println("3");
		model.addAttribute("sDTO", sDTO);
		System.out.println("4");
		
		return "/test";
	}
	*/

}

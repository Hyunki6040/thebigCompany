package poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HongController {
	
	@RequestMapping(value="/hong/main")
	public String main() throws Exception {
		return "/hong/main";
	}
	
	@RequestMapping(value="/hong/test")
	public String test() throws Exception {
		return "/hong/test";
	}
	
}

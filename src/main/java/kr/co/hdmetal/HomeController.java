package kr.co.hdmetal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@RequestMapping(value = {"/", "/main"}, method = RequestMethod.GET)
	public String home() {
		return "main";
	}

	@RequestMapping("/404")
	public String code404() {
		return "error/404";
	}
	@RequestMapping("/500")
	public String code500() {
		return "error/500";
	}

}

// github for push

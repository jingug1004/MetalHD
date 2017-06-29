package kr.co.hdmetal.Login;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import kr.co.hdmetal.VO.MemberVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	// ====================================================
	@Autowired
	private LoginService loginService;

	@Autowired
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	// ====================================================
	@RequestMapping(value = "loginPage")
	public ModelAndView loginPage(ModelAndView mav) {
		mav.setViewName("login/login");
		return mav;
	}
	@RequestMapping(value ="joinpage")
	public ModelAndView joinPage(ModelAndView mav){
		mav.setViewName("login/join");
		return mav;
	}
	
	@RequestMapping(value = "join")
	public ModelAndView join(ModelAndView mav, @RequestParam Map<String, Object> map){
		loginService.join(map);
		mav.setViewName("/main");
		return mav;
	}
	
	@RequestMapping(value = "join_idcheck")
	@ResponseBody
	public int idcheck(@RequestParam("join_id") String join_id){
							
		return 	loginService.join_idcheck(join_id);
	}
	
	@RequestMapping(value = "joinlist")
	public ModelAndView joinlist(ModelAndView mav){
		
		mav.addObject("join_list",loginService.join_list());
		mav.setViewName("/login/join_list");
		return mav;
	}
	
	@RequestMapping(value= "joinedit")
	@ResponseBody
	public ModelAndView joinedit(@RequestParam("edit_id") String edit_id){
		ModelAndView mav = new ModelAndView();
		mav.addObject("joinedit",loginService.joinedit(edit_id));
		mav.setViewName("/login/join_edit");
		
		return mav;
	}
	
	@RequestMapping(value="memberdelete")
	@ResponseBody
	public void memberdelete(MemberVO mVo,@RequestParam ("sel_op") String sel_op){
		loginService.memberdelete(mVo,sel_op);
	}
	
	@RequestMapping(value = "logincheck")
	@ResponseBody
	public Boolean logincheck(ModelAndView mav,
			@RequestParam Map<String, Object> map, HttpSession session) {
		MemberVO check = loginService.logincheck(map);
		String map_id = (String) map.get("id");
		String check_id = " ";
		boolean yesorno = true;
		if (check != null) {
			check_id = check.getMb_id();
		}
		if (!check_id.equals(map_id)) {
			yesorno = false;
		}else {
			session.setAttribute("id", check);
		}

		mav.setViewName("/main");
		return yesorno;
	}

	@RequestMapping(value = "logout")
	public ModelAndView logout(ModelAndView mav, HttpSession session) {
		session.invalidate();
		mav.setViewName("/main");
		return mav;
	}

}

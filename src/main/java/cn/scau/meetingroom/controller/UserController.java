package cn.scau.meetingroom.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.scau.meetingroom.service.UserService;

@Controller
@RequestMapping("")
public class UserController {
	@Autowired
	UserService userService;
	
	@RequestMapping("fore_login")
	public String list(Model model) {
		return "fore/login";
	}
	
	@RequestMapping("judge_login")
	public String judge(Model model, String name, String password,
			HttpServletRequest request) {
		String radio = request.getParameter("user");
		if(radio == "user") {
			
		}else {
			
		}
		return "fore/loginFailure";
	}
}

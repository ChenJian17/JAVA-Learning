package cn.scau.meetingroom.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.scau.meetingroom.pojo.Admin;
import cn.scau.meetingroom.pojo.User;
import cn.scau.meetingroom.service.AdminService;
import cn.scau.meetingroom.service.UserService;

@Controller
@RequestMapping("")
public class UserController {
	@Autowired
	UserService userService;
	@Autowired
	AdminService adminService;
	
	@RequestMapping("fore_login")
	public String list(Model model) {
		return "fore/login";
	}
	
	@RequestMapping("judge_login")
	public String judge(Model model, String name, String password,
			HttpServletRequest request) throws UnsupportedEncodingException {
		String radio = request.getParameter("user");
        boolean flag = false;
        if(radio.equals("1")) {//用户登录
        	List<User> rs = userService.list();
        	for(User u : rs) {
        		if(u.getName().equals(name) && u.getPassword().equals(password)) {
        			flag = true;
        		}
        	}
        	if(flag) {
        		return "fore/userLoginSuccess";
        	}
        	
        }else {//管理员登录
			List<Admin> rs = adminService.list();
        	for(Admin a : rs) {
        		if(a.getName().equals(name) && a.getPassword().equals(password)) {
        			flag = true;
        		}
        	}
        	if(flag) {
        		return "redirect:admin_room_list";
        	}
        }
		return "fore/loginFailure";
	}
}

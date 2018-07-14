package cn.scau.meetingroom.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.scau.meetingroom.pojo.Admin;
import cn.scau.meetingroom.service.AdminService;

@Controller
@RequestMapping("")
public class AdminController {
	@Autowired
	AdminService adminService;
	
	@RequestMapping("admin_logout")
	public String logout(Model model,HttpSession session) {
		Admin admin = (Admin) session.getAttribute("admin");
		if(admin!=null)
			session.removeAttribute("admin");
		return "redirect:fore_login";
	}
}

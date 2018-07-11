package cn.scau.meetingroom.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.scau.meetingroom.pojo.Admin;
import cn.scau.meetingroom.pojo.Room;
import cn.scau.meetingroom.pojo.User;
import cn.scau.meetingroom.service.AdminService;
import cn.scau.meetingroom.service.RoomService;
import cn.scau.meetingroom.service.UserService;
import cn.scau.meetingroom.util.Page;

@Controller
@RequestMapping("")
public class UserController {
	@Autowired
	UserService userService;
	@Autowired
	AdminService adminService;
	@Autowired
	RoomService roomService;
	
	@RequestMapping("fore_login")
	public String list(Model model) {
		return "fore/login";
	}
	
	@RequestMapping("fore_user_logout")
	public String userLogout(Model model) {
		return "fore/login";
	}
	
	@RequestMapping("fore_user_message")
	public String userMessage(Model model,User user) {
		model.addAttribute("user",user);
		return "fore/userEdit";
	}
	
	@RequestMapping("user_message_update")
	public String userMessageUpdate(User user) {
		userService.update(user);
		return "fore/userEdit";
	}
	
	@RequestMapping("judge_login")
	public String judge(Model model, Page page,String name, String password,
			HttpServletRequest request,HttpSession session) throws UnsupportedEncodingException {
		String radio = request.getParameter("user");
        boolean flag = false;
        if(radio.equals("1")) {//用户登录
        	List<User> us = userService.list();
        	for(User u : us) {
        		if(u.getName().equals(name) && u.getPassword().equals(password)) {
        			flag = true;
        			//session.setAttribute("user", u);
        			model.addAttribute("user",u);
        		}
        	}
        	if(flag) {
        		return "redirect:fore_room_list";
        	}
        }else {//管理员登录
			List<Admin> as = adminService.list();
        	for(Admin a : as) {
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
	
	@RequestMapping("admin_user_list")
	public String list(Model model ,Page page) {
		/*List<Room> rs = roomService.list();
		model.addAttribute("rs", rs);*/
		
		PageHelper.offsetPage(page.getStart(),page.getCount());
		List<User> rs = userService.list();
		int total = (int) new PageInfo<>(rs).getTotal();
	    page.setTotal(total);
		model.addAttribute("rs", rs);
		model.addAttribute("page", page);
		return "admin/userList";
	}
	
	@RequestMapping("admin_user_add")
	public String add(Model model,User user) {
		userService.add(user);
		return "redirect:admin_user_list";
	}
	
	@RequestMapping("admin_user_edit")
	public String edit(Model model,int id) {
		User user = userService.get(id);
		model.addAttribute("r", user);
		return "admin/userEdit";
	}
	
	@RequestMapping("admin_user_update")
	public String Update(User user,HttpSession session) {
		userService.update(user);
	
		return "redirect:admin_user_list";
	}
	@RequestMapping("admin_user_delete")
	public String delete(int id) {
		userService.delete(id);
		return "redirect:admin_user_list";
	}
}

package cn.scau.meetingroom.controller;

import java.util.ArrayList;
import java.util.List;

import javax.jws.soap.SOAPBinding.Use;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.scau.meetingroom.pojo.MeetingPerson;
import cn.scau.meetingroom.pojo.Room;
import cn.scau.meetingroom.pojo.User;
import cn.scau.meetingroom.service.MeetingPersonService;
import cn.scau.meetingroom.service.UserService;
import cn.scau.meetingroom.util.Page;

@Controller
@RequestMapping("")
public class MeetingPersonController {
	@Autowired
	MeetingPersonService meetingPersonService;
	@Autowired
	UserService userService;
	
	@RequestMapping("fore_meeting_person_search")
	public String list(Model model,HttpServletRequest request,HttpSession session,Page page) {
		String department = request.getParameter("department");
		if(department==null)
			department = (String) session.getAttribute("department");
		List<User> us = meetingPersonService.searchDepartment(department);
		
		int oid = (int) session.getAttribute("sessionOid");
		List<MeetingPerson> mps = meetingPersonService.list(oid);
		for (MeetingPerson mp : mps) {
			for(int i=0;i<us.size();i++) {
				if(us.get(i).getId()==mp.getUid())
					us.remove(i);
			}
		}
		
		/*PageHelper.offsetPage(page.getStart(),page.getCount());//分页查询
		int total = (int) new PageInfo<>(us).getTotal();
		page.setTotal(total);
		model.addAttribute("page", page);*/
		model.addAttribute("us",us);
		session.setAttribute("department", department);
		return "fore/meetingPersonList";
	}
	
	@RequestMapping("fore_meeting_manager")
	public String manager(Model model,int oid,HttpSession session) {
		session.setAttribute("sessionOid", oid);
		return "fore/meetingPersonList";
	}
	
	@RequestMapping("fore_meetingPerson_add")
	public String add(Model model,MeetingPerson meetingPerson,HttpSession session) {
		int oid = (int) session.getAttribute("sessionOid");
		List<MeetingPerson> mps = meetingPersonService.list(oid);
		boolean isAdded = false;
		for (MeetingPerson mp : mps) {
			if(meetingPerson.getUid()==mp.getUid()) {
				isAdded = true;
				break;
			}
				
		}
		if(!isAdded) {
			meetingPersonService.add(meetingPerson);
		}else {
			model.addAttribute("isAdded", "yes");
		}
		String mpDepartment = userService.get(meetingPerson.getUid()).getDepartment();
		String department = (String) session.getAttribute("department");
		if(department!=null&&department.equals(mpDepartment)) {
			return "redirect:fore_meeting_person_search";
		}
		return "redirect:fore_meetingperson_selectAdded";
	}
	
	@RequestMapping("fore_meetingperson_selectAdded")
	public String selectAdded(Model model,HttpSession session,Page page) {
		int oid = (int) session.getAttribute("sessionOid");
		List<MeetingPerson> mps = meetingPersonService.list(oid);
		List<User> us = new ArrayList<>();
		for (MeetingPerson mp : mps) {
			User u = userService.get(mp.getUid());
			us.add(u);
		}
		/*
		PageHelper.offsetPage(page.getStart(),page.getCount());
		int total = (int) new PageInfo<>(us).getTotal();
	    page.setTotal(total);
		model.addAttribute("page", page);*/
		model.addAttribute("us",us);
		return "fore/orderMeetingPersons";
	}
	
	@RequestMapping("fore_meetingPerson_delete")
	public String deleteMeetingPerson(Model model,int uid,HttpSession session) {
		int oid = (int) session.getAttribute("sessionOid");
		List<MeetingPerson> mps = meetingPersonService.list(oid);
		for (MeetingPerson mp : mps) {
			if(mp.getUid()==uid) {
				meetingPersonService.delete(mp.getId());
			}
		}
		return "redirect:fore_meetingperson_selectAdded";
	}
}

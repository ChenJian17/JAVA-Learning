package cn.scau.meetingroom.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.scau.meetingroom.pojo.MeetingPerson;
import cn.scau.meetingroom.pojo.User;
import cn.scau.meetingroom.service.MeetingPersonService;
import cn.scau.meetingroom.service.UserService;

@Controller
@RequestMapping("")
public class MeetingPersonController {
	@Autowired
	MeetingPersonService meetingPersonService;
	@Autowired
	UserService userService;
	
	@RequestMapping("fore_meeting_person_search")
	public String list(Model model,HttpServletRequest request) {
		String department = request.getParameter("department");
		List<User> us = meetingPersonService.searchDepartment(department);
		model.addAttribute("us",us);
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
		meetingPersonService.add(meetingPerson);
		return "redirect:fore_meetingperson_selectAdded?oid="+oid;
	}
	
	@RequestMapping("fore_meetingperson_selectAdded")
	public String selectAdded(Model model,int oid,HttpSession session) {
		List<MeetingPerson> mps = meetingPersonService.list(oid);
		List<User> us = new ArrayList<>();
		for (MeetingPerson mp : mps) {
			User u = userService.get(mp.getUid());
			us.add(u);
		}
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
		return "redirect:fore_meetingperson_selectAdded?oid="+oid;
	}
}

package cn.scau.meetingroom.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.scau.meetingroom.pojo.Room;
import cn.scau.meetingroom.service.RoomService;

@Controller
@RequestMapping("")
public class RoomController {
	@Autowired
	RoomService roomService;
	
	@RequestMapping("admin_room_list")
	public String list(Model model,String name,String password) {
		List<Room> rs = roomService.list();
		
		model.addAttribute("rs", rs);
		return "admin/listRoom";
	}
}

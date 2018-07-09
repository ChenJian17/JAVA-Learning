package cn.scau.meetingroom.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.scau.meetingroom.pojo.Room;
import cn.scau.meetingroom.service.RoomService;
import cn.scau.meetingroom.util.Page;
import net.sf.jsqlparser.statement.update.Update;

@Controller
@RequestMapping("")
public class RoomController {
	@Autowired
	RoomService roomService;
	
	@RequestMapping("admin_room_list")
	public String list(Model model ,Page page) {
		/*List<Room> rs = roomService.list();
		model.addAttribute("rs", rs);*/
		
		PageHelper.offsetPage(page.getStart(),page.getCount());
		List<Room> rs = roomService.list();
		int total = (int) new PageInfo<>(rs).getTotal();
	    page.setTotal(total);
		model.addAttribute("rs", rs);
		model.addAttribute("page", page);
		return "admin/listRoom";
	}
	
	@RequestMapping("admin_room_add")
	public String add(Model model,Room room) {
		roomService.add(room);
		return "redirect:admin_room_list";
	}
	
	//用于打开编辑页面
	@RequestMapping("admin_room_edit")
	public String edit(Model model,int id) {
		Room room = roomService.get(id);
		model.addAttribute("r", room);
		return "admin/roomEdit";
	}
	
	//用于编辑页面提交 更新数据
	@RequestMapping("admin_room_update")
	public String Update(Room room) {
		roomService.update(room);
		return "redirect:admin_room_list";
	}
	@RequestMapping("admin_room_delete")
	public String delete(int id) {
		roomService.delete(id);
		return "redirect:admin_room_list";
	}
}

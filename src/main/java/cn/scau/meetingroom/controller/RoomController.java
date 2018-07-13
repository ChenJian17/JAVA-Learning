package cn.scau.meetingroom.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.scau.meetingroom.mapper.SelectRoomMapper;
import cn.scau.meetingroom.pojo.Order;
import cn.scau.meetingroom.pojo.Room;
import cn.scau.meetingroom.pojo.User;
import cn.scau.meetingroom.service.OrderService;
import cn.scau.meetingroom.service.RoomService;
import cn.scau.meetingroom.util.Page;

@Controller
@RequestMapping("")
public class RoomController {
	@Autowired
	RoomService roomService;
	@Autowired
	OrderService orderService;
	@Autowired
	SelectRoomMapper selectRoomMapper;
	
	@RequestMapping("admin_room_list")
	public String list(Model model ,Page page) throws ParseException {
		PageHelper.offsetPage(page.getStart(),page.getCount());
		List<Room> rs = roomService.list();
		int total = (int) new PageInfo<>(rs).getTotal();
	    page.setTotal(total);
		model.addAttribute("rs", rs);
		model.addAttribute("page", page);
		return "admin/listRoom";
	}
	@RequestMapping("fore_room_list")
	public String forelist(Model model ,Page page,HttpSession session) {
		User user =(User)  session.getAttribute("user");
		model.addAttribute("u", user);
		return "fore/userLoginSuccess";
	}
	
	@RequestMapping("fore_room_emptylist")
	public String emptylist(Model model,String selectStr,String startTime,String endTime,
			String year,String month,String day,
			Page page ,HttpSession session) throws ParseException {
		User user =(User)  session.getAttribute("user");
		if(user==null)
			return "redirect:fore_login";
		
		if(selectStr==null) {
			startTime = (String) session.getAttribute("start");
			endTime = (String)session.getAttribute("end");
		}	
		
		SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss" );
		Date startDate = sdf.parse(startTime);
		Date endDate = sdf.parse(endTime);
		Order order = new Order();
		order.setStartTime(startDate);
		order.setEndTime(endDate);
		
		PageHelper.offsetPage(page.getStart(),page.getCount());
		List<Room> rs = selectRoomMapper.selectEmptyRooms(order);
		int total = (int) new PageInfo<>(rs).getTotal();
	    page.setTotal(total);
		model.addAttribute("rs", rs);
		model.addAttribute("page", page);
		model.addAttribute("startTimeInput", startTime);
		model.addAttribute("endTimeInput", endTime);
		if(year!=null&&month!=null&&day!=null) {
			if(StringUtils.substring(month, 0, 1).equals("0")) {
				month = StringUtils.substring(month, 1, 2);
			}
			if(StringUtils.substring(day, 0, 1).equals("0")) {
				day = StringUtils.substring(day, 1, 2);
			}
			model.addAttribute("year", year);
			model.addAttribute("month", month);
			model.addAttribute("day", day);
		}
		
		session.setAttribute("start", startTime);
		session.setAttribute("end", endTime);
		
		return "fore/userLoginSuccess";
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

package cn.scau.meetingroom.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.scau.meetingroom.pojo.Order;
import cn.scau.meetingroom.pojo.User;
import cn.scau.meetingroom.service.OrderService;
import cn.scau.meetingroom.util.Page;

@Controller
@RequestMapping("")
public class OrderController {
	@Autowired
	OrderService orderService;
	
	@RequestMapping("admin_order_list")
	public String list(Model model,Page page) {
		PageHelper.offsetPage(page.getStart(),page.getCount());
		List<Order> os = orderService.list();
		int total = (int) new PageInfo<>(os).getTotal();
	    page.setTotal(total);
		model.addAttribute("os", os);
		model.addAttribute("page", page);
		return "admin/orderList";
	}
	
	@RequestMapping("fore_order_add")
	public String add(Model model,Page page,String startTime,String endTime,int rid,HttpSession session) throws ParseException {
		User user = (User) session.getAttribute("user");
		int uid = user.getId();
		SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss" );
		Date startDate = sdf.parse(startTime);
		Date endDate = sdf.parse(endTime);
		Order order = new Order();
		order.setDate(new Date());
		order.setStartTime(startDate);
		order.setEndTime(endDate);
		order.setUid(uid);
		order.setRid(rid);
		
		orderService.add(order);
		System.out.println("order.id = "+order.getId());
		model.addAttribute("o", order);
		return "fore/orderOnlySelect";
	}
	
	//新增查看个人预定
	@RequestMapping("fore_order_userlist")
	public String ulist(Model model,Page page,HttpSession session) {
		User user = (User) session.getAttribute("user");
		int uid = user.getId();
		PageHelper.offsetPage(page.getStart(),page.getCount());
		List<Order> os = orderService.list();
		//User u = userService.get(uid);
		List<Order> ord=new ArrayList<Order>();
		for(Order r:os){
			if(r.getUid().equals(uid)){
				ord.add(r);
			}
		}
		int total = (int) new PageInfo<>(os).getTotal();
	    page.setTotal(total);
		model.addAttribute("ord", ord);
		model.addAttribute("page", page);
		return "fore/orderList";
	}
	
	//新增删除预定
	@RequestMapping("fore_order_delete")
	public String delete(int id,int uid) {
		orderService.delete(id);
		return "redirect:fore_order_userlist";
	}
}

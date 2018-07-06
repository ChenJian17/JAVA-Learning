package cn.scau.meetingroom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.scau.meetingroom.service.OrderService;

@Controller
@RequestMapping("")
public class OrderController {
	@Autowired
	OrderService orderService;
}

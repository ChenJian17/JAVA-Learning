package cn.scau.meetingroom.service;

import java.util.List;

import cn.scau.meetingroom.pojo.Order;

public interface OrderService {
	List<Order> list();
	List<Order> list_A_User(int uid);
	void add(Order order);
	void delete(int id);
	Order get(int id);
	void update(Order order);

	void sendEmail(int oid);
	void exportOrderdRoomReport();
	
	
}

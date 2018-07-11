package cn.scau.meetingroom.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.scau.meetingroom.mapper.OrderMapper;
import cn.scau.meetingroom.pojo.Order;
import cn.scau.meetingroom.pojo.OrderExample;
import cn.scau.meetingroom.service.OrderService;


@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderMapper orderMapper;
	
	@Override
	public List<Order> list() {
		// TODO Auto-generated method stub
		OrderExample example = new OrderExample();
		example.setOrderByClause("id desc");
		return orderMapper.selectByExample(example);
	}

	@Override
	public void add(Order order) {
		// TODO Auto-generated method stub
		orderMapper.insert(order);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		orderMapper.deleteByPrimaryKey(id);
	}

	@Override
	public Order get(int id) {
		// TODO Auto-generated method stub
		return orderMapper.selectByPrimaryKey(id);
	}

	@Override
	public void update(Order order) {
		// TODO Auto-generated method stub
		orderMapper.updateByPrimaryKey(order);
	}

	@Override
	public void sendEmail(int oid) {
		// TODO Auto-generated method stub

	}

	@Override
	public void exportOrderdRoomReport() {
		// TODO Auto-generated method stub

	}

}

package cn.scau.meetingroom.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.scau.meetingroom.mapper.RoomMapper;
import cn.scau.meetingroom.pojo.Room;
import cn.scau.meetingroom.pojo.RoomExample;
import cn.scau.meetingroom.service.RoomService;

@Service
public class RoomServiceImpl implements RoomService {

	@Autowired
	RoomMapper roomMapper;
	
	@Override
	public List<Room> list() {
		// TODO Auto-generated method stub
		RoomExample example = new RoomExample();
		example.setOrderByClause("id desc");
		return roomMapper.selectByExample(example);
	}

	@Override
	public void add(Room room) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Room get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Room room) {
		// TODO Auto-generated method stub
		
	}
	
}

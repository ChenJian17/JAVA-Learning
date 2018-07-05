package cn.scau.meetingroom.service;

import java.util.List;

import cn.scau.meetingroom.pojo.Room;

public interface RoomService {
	List<Room> list();
	void add(Room room);
	void delete(int id);
	Room get(int id);
	void update(Room room);
}

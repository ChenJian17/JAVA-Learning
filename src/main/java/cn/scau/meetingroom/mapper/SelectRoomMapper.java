package cn.scau.meetingroom.mapper;

import java.util.List;

import cn.scau.meetingroom.pojo.Order;
import cn.scau.meetingroom.pojo.Room;

public interface SelectRoomMapper {
	//自定义：查询空会议室
    List<Room> selectEmptyRooms(Order order);
}

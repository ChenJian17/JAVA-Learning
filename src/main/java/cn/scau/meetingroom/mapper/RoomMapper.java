package cn.scau.meetingroom.mapper;

import cn.scau.meetingroom.pojo.Room;
import cn.scau.meetingroom.pojo.RoomExample;
import java.util.List;

public interface RoomMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Room record);

    int insertSelective(Room record);

    List<Room> selectByExample(RoomExample example);

    Room selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Room record);

    int updateByPrimaryKey(Room record);
}
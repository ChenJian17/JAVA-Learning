package cn.scau.meetingroom.mapper;

import cn.scau.meetingroom.pojo.MeetingPerson;
import cn.scau.meetingroom.pojo.MeetingPersonExample;
import java.util.List;

public interface MeetingPersonMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MeetingPerson record);

    int insertSelective(MeetingPerson record);

    List<MeetingPerson> selectByExample(MeetingPersonExample example);

    MeetingPerson selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MeetingPerson record);

    int updateByPrimaryKey(MeetingPerson record);
}
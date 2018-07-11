package cn.scau.meetingroom.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.scau.meetingroom.mapper.MeetingPersonMapper;
import cn.scau.meetingroom.pojo.MeetingPerson;
import cn.scau.meetingroom.pojo.MeetingPersonExample;
import cn.scau.meetingroom.service.MeetingPersonService;

@Service
public class MeetingPersonServiceImpl implements MeetingPersonService {

	@Autowired
	MeetingPersonMapper meetingPersonMapper;
	
	@Override
	public List<MeetingPerson> list() {
		// TODO Auto-generated method stub
		MeetingPersonExample example = new MeetingPersonExample();
		example.setOrderByClause("id desc");
		return meetingPersonMapper.selectByExample(example);
	}

	@Override
	public void add(MeetingPerson meetingPerson) {
		// TODO Auto-generated method stub
		meetingPersonMapper.insert(meetingPerson);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		meetingPersonMapper.deleteByPrimaryKey(id);
	}

	@Override
	public MeetingPerson get(int id) {
		// TODO Auto-generated method stub
		return meetingPersonMapper.selectByPrimaryKey(id);
	}

	@Override
	public void update(MeetingPerson meetingPerson) {
		// TODO Auto-generated method stub
		meetingPersonMapper.updateByPrimaryKey(meetingPerson);
	}

}

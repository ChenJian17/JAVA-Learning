package cn.scau.meetingroom.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.scau.meetingroom.mapper.MeetingPersonMapper;
import cn.scau.meetingroom.pojo.MeetingPerson;
import cn.scau.meetingroom.service.MeetingPersonService;

@Service
public class MeetingPersonServiceImpl implements MeetingPersonService {

	@Autowired
	MeetingPersonMapper meetingPersonMapper;
	
	@Override
	public List<MeetingPerson> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void add(MeetingPerson meetingPerson) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public MeetingPerson get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(MeetingPerson meetingPerson) {
		// TODO Auto-generated method stub

	}

}

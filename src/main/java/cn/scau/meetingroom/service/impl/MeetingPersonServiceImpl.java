package cn.scau.meetingroom.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.scau.meetingroom.mapper.MeetingPersonMapper;
import cn.scau.meetingroom.mapper.UserMapper;
import cn.scau.meetingroom.pojo.MeetingPerson;
import cn.scau.meetingroom.pojo.MeetingPersonExample;
import cn.scau.meetingroom.pojo.User;
import cn.scau.meetingroom.pojo.UserExample;
import cn.scau.meetingroom.service.MeetingPersonService;

@Service
public class MeetingPersonServiceImpl implements MeetingPersonService {

	@Autowired
	MeetingPersonMapper meetingPersonMapper;
	@Autowired
	UserMapper userMapper;
	
	@Override
	public List<User> searchDepartment(String department) {
		UserExample example = new UserExample();
		UserExample.Criteria criteria = example.createCriteria(); //构造自定义查询条件
	    criteria.andDepartmentEqualTo(department);
		return userMapper.selectByExample(example);
	}
	
	@Override
	public List<MeetingPerson> list(int oid) { //构造自定义查询条件
		// TODO Auto-generated method stub
		MeetingPersonExample example = new MeetingPersonExample();
		MeetingPersonExample.Criteria criteria = example.createCriteria();
		criteria.andOidEqualTo(oid);
		return meetingPersonMapper.selectByExample(example);
	}
	
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

package cn.scau.meetingroom.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.scau.meetingroom.mapper.UserMapper;
import cn.scau.meetingroom.pojo.RoomExample;
import cn.scau.meetingroom.pojo.User;
import cn.scau.meetingroom.pojo.UserExample;
import cn.scau.meetingroom.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserMapper userMapper;
	
	@Override
	public List<User> list() {
		// TODO Auto-generated method stub
		UserExample example = new UserExample();
		example.setOrderByClause("id desc");
		return userMapper.selectByExample(example);
	}

	@Override
	public void add(User user) {
		// TODO Auto-generated method stub
		userMapper.insert(user);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		userMapper.deleteByPrimaryKey(id);
	}

	@Override
	public User get(int id) {
		// TODO Auto-generated method stub
		return userMapper.selectByPrimaryKey(id);
	}

	@Override
	public User get(String name, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		userMapper.updateByPrimaryKeySelective(user);
	}

}

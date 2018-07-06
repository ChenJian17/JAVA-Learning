package cn.scau.meetingroom.service;

import java.util.List;

import cn.scau.meetingroom.pojo.User;

public interface UserService {
	List<User> list();
	void add(User user);
	void delete(int id);
	User get(int id);
	User get(String name,String password);
	void update(User user);
}

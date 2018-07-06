package cn.scau.meetingroom.service;

import java.util.List;

import cn.scau.meetingroom.pojo.Admin;

public interface AdminService {
	List<Admin> list();
	void add(Admin admin);
	void delete(int id);
	Admin get(int id);
	void update(Admin admin);
}

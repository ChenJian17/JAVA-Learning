package cn.scau.meetingroom.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.scau.meetingroom.mapper.AdminMapper;
import cn.scau.meetingroom.pojo.Admin;
import cn.scau.meetingroom.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminMapper adminMapper;
	
	@Override
	public List<Admin> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void add(Admin admin) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
         int ad = 1;
	}

	@Override
	public Admin get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Admin admin) {
		// TODO Auto-generated method stub

	}

}

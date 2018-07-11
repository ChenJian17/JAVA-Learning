package cn.scau.meetingroom.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.scau.meetingroom.mapper.AdminMapper;
import cn.scau.meetingroom.pojo.Admin;
import cn.scau.meetingroom.pojo.AdminExample;
import cn.scau.meetingroom.pojo.UserExample;
import cn.scau.meetingroom.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminMapper adminMapper;
	
	@Override
	public List<Admin> list() {
		// TODO Auto-generated method stub
		AdminExample example = new AdminExample();
		example.setOrderByClause("id");
		return adminMapper.selectByExample(example);
	}

	@Override
	public void add(Admin admin) {
		// TODO Auto-generated method stub
		adminMapper.insert(admin);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		adminMapper.deleteByPrimaryKey(id);
	}

	@Override
	public Admin get(int id) {
		// TODO Auto-generated method stub
		return adminMapper.selectByPrimaryKey(id);
	}

	@Override
	public void update(Admin admin) {
		// TODO Auto-generated method stub
		adminMapper.updateByPrimaryKeySelective(admin);
	}

}

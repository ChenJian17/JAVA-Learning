package cn.scau.meetingroom.service;

import java.util.List;

import cn.scau.meetingroom.pojo.MeetingPerson;
import cn.scau.meetingroom.pojo.User;

public interface MeetingPersonService {
	List<MeetingPerson> list();
	List<MeetingPerson> list(int oid);
	void add(MeetingPerson meetingPerson);
	void delete(int id);
	MeetingPerson get(int id);
	void update(MeetingPerson meetingPerson);
	List<User> searchDepartment(String department);
}

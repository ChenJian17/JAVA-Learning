package cn.scau.meetingroom.service;

import java.util.List;

import cn.scau.meetingroom.pojo.MeetingPerson;

public interface MeetingPersonService {
	List<MeetingPerson> list();
	void add(MeetingPerson meetingPerson);
	void delete(int id);
	MeetingPerson get(int id);
	void update(MeetingPerson meetingPerson);
}

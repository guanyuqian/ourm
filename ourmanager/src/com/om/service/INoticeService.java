package com.om.service;

import java.util.List;

import com.om.model.Notice;
import com.om.model.User;

public interface INoticeService {
	boolean addNotice(User createrUser,Notice newNotice);

	int AllListCount(int omid);

	List LoardSomeService(int page, int omid);
	
}

package com.om.service.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.om.action.UserInfoAction;
import com.om.dao.INoticeDAO;
import com.om.dao.IUserDAO;
import com.om.model.Notice;
import com.om.model.User;
import com.om.service.INoticeService;

public class NoticeService implements INoticeService {

	public INoticeDAO getNoticeDao() {
		return noticeDao;
	}

	public void setNoticeDao(INoticeDAO noticeDao) {
		this.noticeDao = noticeDao;
	}

	public IUserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(IUserDAO userDAO) {
		this.userDAO = userDAO;
	}

	INoticeDAO noticeDao;
	IUserDAO userDAO;

	@Override
	public boolean addNotice(User createrUser, Notice newNotice) {
		// TODO Auto-generated method stub
		try {
			newNotice.setUserByNoticeCreater(createrUser);		
			createrUser.getNoticesForNoticeCreater().add(newNotice);			
		} catch (Exception e) {
			e.printStackTrace();			
			createrUser.setNoticesForNoticeCreater(new HashSet(noticeDao.findByCreater(createrUser.getUserid())));
			createrUser.getNoticesForNoticeCreater().add(newNotice);	
		}
		noticeDao.save(newNotice);
		userDAO.attachDirty(createrUser);
		return true;
	}

	@Override
	public int AllListCount(int omid) {
		try {
			return noticeDao.findByOm(omid).size();
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public List<User> LoardSomeService(int page, int omid) {
		// TODO Auto-generated method stub

		try {
			return noticeDao
					.findByPage(page, UserInfoAction.ONE_PAGE_NUM, omid);
		} catch (Exception e) {
			return null;
		}
	}

}

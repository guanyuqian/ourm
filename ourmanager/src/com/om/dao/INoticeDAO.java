package com.om.dao;

import java.util.List;
import java.util.Set;

import com.om.model.Notice;
import com.om.model.User;

public interface INoticeDAO {
	public void save(Notice transientInstance);
	public List findByOm(int omid);
	public List findByPage(int page, int onePageNum, int omid);
}

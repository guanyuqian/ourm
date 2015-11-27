package com.om.dao;
import java.util.List;

import com.om.model.User;

public interface IUserDAO {
	public void save(User transientInstance);
	public List findByUserPassword(Object userPassword) ;
	public List findAll();
	public User findById(java.lang.Integer id) ;
	public void attachDirty(User instance) ;
	public List findByPage(int page,int pageNum, int omid) ;
	public List findByOm(int omid) ;
}

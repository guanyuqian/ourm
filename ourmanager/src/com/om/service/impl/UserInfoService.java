package com.om.service.impl;
import com.om.action.UserInfoAction;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.om.dao.IUserDAO;
import com.om.model.User;
import com.om.service.IUserInfoService;

public class UserInfoService implements IUserInfoService {

	private IUserDAO userdao;

	public IUserDAO getUserdao() {
		return userdao;
	}

	public void setUserdao(IUserDAO userdao) {
		this.userdao = userdao;
	}

	public User findUserDetail(int userid){//找到user返回true
		try{
			return userdao.findById(userid);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	@Override
	public boolean Update(User user) {
		ServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ((HttpServletRequest) request).getSession();
		try {
			User newuser = (User) session.getAttribute("user");
			newuser.setUserEmail(user.getUserEmail());
			newuser.setUserName(user.getUserName());
			newuser.setUserSex(user.getUserSex());
			newuser.setUserAge(user.getUserAge());
			newuser.setUserBirthday(user.getUserBirthday());
			newuser.setUserMoto(user.getUserEmail());
			newuser.setUserHomeProvince(user.getUserHomeProvince());
			newuser.setUserHomeCounty(user.getUserHomeCounty());
			newuser.setUserHomeCity(user.getUserHomeCity());
			newuser.setUserProvince(user.getUserProvince());
			newuser.setUserCounty(user.getUserCounty());
			newuser.setUserCity(user.getUserCity());
			newuser.setUserJob(user.getUserJob());
			userdao.attachDirty(newuser);
		} catch (Exception ex) {
			ex.printStackTrace();
			System.err.println("更新出现错误");
			return false;
		}
		return true;
	}


	@Override
	public List<User> LoardSomeUser(int page, int omid) {
		// TODO Auto-generated method stub
		try {
			
			return userdao.findByPage( page,UserInfoAction.ONE_PAGE_NUM,omid) ;
		} catch (Exception e) {	
			return null;
		}
	}

	@Override
	public int AllUserCount(int omid) {
		// TODO Auto-generated method stub
		try {
			return userdao.findByOm(omid).size();
		} catch (Exception e) {	
			return 0;
		}
	}
}

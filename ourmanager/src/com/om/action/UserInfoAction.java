package com.om.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.json.annotations.JSON;

import com.om.model.User;
import com.om.service.IUserInfoService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserInfoAction extends ActionSupport {
	private IUserInfoService userInfoService;
	private User user;
	public List Users=new ArrayList();

	@JSON(serialize = false)
	public IUserInfoService getUserInfoService() {
		return userInfoService;
	}

	public void setUserInfoService(IUserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}

	@JSON(serialize = false)
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String Update() {

		if (userInfoService.Update(user))
			return SUCCESS;
		else
			return ERROR;
	}

	static final public int ONE_PAGE_NUM = 12;


	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}
	public List getUsers() {
		return Users;
	}


	private int page;

	public String loadMembers() throws IOException {
		//list = new ArrayList();
		List<User> list = userInfoService.LoardAllUser(page);
//		<th>账号</th>
//		<th>昵称</th>
//		<th>性别</th>
//		<th>邮箱</th>
//		<th>电话</th>
//		<th>余额</th>
//		<th>权限</th>
		Users.clear();
		System.out.println("in loadmembers");
		for (User u : list) {
			Map us=new HashMap();
			us.put("userid", u.getUserid());
			us.put("userName", u.getUserName());
			us.put("userSex", u.getUserSex());
			us.put("userEmail", u.getUserEmail());
			us.put("userLimit", u.getUserLimit());
			//us.put("userNum", u.userNum());
			Users.add(us);
		}
		return SUCCESS;
	}

}

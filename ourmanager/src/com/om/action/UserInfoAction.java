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
import com.om.model.Om;
import com.om.model.User;
import com.om.service.IUserInfoService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserInfoAction extends ActionSupport {
	private IUserInfoService userInfoService;
	private User user;
	public List Users=new ArrayList();
	
	public int LookUserid;//查看个人信息传入的id
	public User LookUser;//查看个人信息返回的user
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

	public int getLookUserid() {
		return LookUserid;
	}

	public void setLookUserid(int lookUserid) {
		LookUserid = lookUserid;
	}

	public User getLookUser() {
		return LookUser;
	}

	public void setLookUser(User lookUser) {
		LookUser = lookUser;
	}

	public static int getOnePageNum() {
		return ONE_PAGE_NUM;
	}

	public void setUsers(List users) {
		Users = users;
	}

	public void setLAGE_PAGE(int lAGE_PAGE) {
		LAGE_PAGE = lAGE_PAGE;
	}

	public String Update() {

		if (userInfoService.Update(user))
			return SUCCESS;
		else
			return ERROR;
	}

	static final public int ONE_PAGE_NUM = 12;

	public int LAGE_PAGE = 1;
	
	public int getLAGE_PAGE() {
		ServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ((HttpServletRequest) request).getSession();
		int omid=((Om) session.getAttribute("om")).getOmid();
		LAGE_PAGE=userInfoService.AllUserCount(omid)/12+1;
		return LAGE_PAGE;
	}



	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}
	public List getUsers() {
		return Users;
	}

	public String MembersCount(){
		getPage();
		return SUCCESS;
	}
	private int page;

	public String LoadUserDetail(){
		LookUser =userInfoService.findUserDetail(LookUserid);
		if(LookUser!=null)
			return SUCCESS;
		else 
			return ERROR;
	}
	public String loadMembers() throws IOException {
		//list = new ArrayList();
		System.out.println("in loadmembers");
		ServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ((HttpServletRequest) request).getSession();
		int omid=((Om) session.getAttribute("om")).getOmid();
		List<User> list = userInfoService.LoardSomeUser(page,omid);
//		<th>账号</th>
//		<th>昵称</th>
//		<th>性别</th>
//		<th>邮箱</th>
//		<th>电话</th>
//		<th>余额</th>
//		<th>权限</th>
		Users.clear();
		System.out.println("PAGE_LAST:"+getLAGE_PAGE() );
	//	System.out.println("in loadmembers");
		for (User u : list) {
			Map us=new HashMap();
		
			us.put("userBalance", u.getUserBalance());
			us.put("userid", u.getUserid());
			us.put("userName", u.getUserName());
			us.put("userSex", u.getUserSex());
			us.put("userEmail", u.getUserEmail());
			us.put("userLimit", u.getUserLimit());
			
			us.put("userMoto", u.getUserMoto());
			us.put("userJob", u.getUserJob());
			us.put("userBirthday", u.getUserBirthday());
			
			us.put("userProvince", u.getUserProvince());
			us.put("userCounty", u.getUserCounty());
			us.put("userCity", u.getUserCity());
			us.put("userHomeProvince", u.getUserHomeProvince());
			us.put("userHomeCounty", u.getUserHomeCounty());
			us.put("userHomeCity", u.getUserHomeCity());
			us.put("userNumber", u.getUserNumber());
			Users.add(us);
		}
		return SUCCESS;
	}

}

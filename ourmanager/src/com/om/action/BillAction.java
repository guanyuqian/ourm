package com.om.action;

import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.om.model.Bill;
import com.om.model.Om;
import com.om.model.User;
import com.om.service.IBillService;
import com.opensymphony.xwork2.ActionSupport;



public class BillAction extends ActionSupport{
	private IBillService billservice;
	private Bill bill;
	private Om om;
	
	public IBillService getBillservice() {
		return billservice;
	}
	public void setBillservice(IBillService billservice) {
		this.billservice = billservice;
	}
	private Set<User> AllUsers;
	
	public Set<User> getAllUsers() {
		return AllUsers;
	}
	public void setAllUsers(Set<User> allUsers) {
		AllUsers = allUsers;
	}
	public IBillService getBillservicedao() {
		return billservice;
	}
	public void setBillservicedao(IBillService billservice) {
		this.billservice = billservice;
	}
	public Bill getBill() {
		return bill;
	}
	public void setBill(Bill bill) {
		this.bill = bill;
	}
	public Om getOm() {
		return om;
	}
	public void setOm(Om om) {
		this.om = om;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	private User user;
	private String bill_name=null;
	private float bill_money=0;
	private Integer bill_type=null;
	private String bill_object=null;
	private Timestamp bill_time=null; 
	private List<User> users=null;
	private Integer userid;

	public String getBill_name() {
		return bill_name;
	}
	public void setBill_name(String bill_name) {
		this.bill_name = bill_name;
	}
	public float getBill_money() {
		return bill_money;
	}
	public void setBill_money(float bill_money) {
		this.bill_money = bill_money;
	}
	public Integer getBill_type() {
		return bill_type;
	}
	public void setBill_type(Integer bill_type) {
		this.bill_type = bill_type;
	}
	public String getBill_object() {
		return bill_object;
	}
	public void setBill_object(String bill_object) {
		this.bill_object = bill_object;
	}
	public Timestamp getBill_time() {
		return bill_time;
	}
	public void setBill_time(Timestamp bill_time) {
		this.bill_time = bill_time;
	}
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	
	
	public String LoadAllUser()
	{
		AllUsers=billservice.loadAllUser();
		return SUCCESS;
	}
	
	
	public String createBill() throws Exception
	{
		User user;
		Om om;
		ServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ((HttpServletRequest) request).getSession();
		user=(User)session.getAttribute("user");
		om=(Om)session.getAttribute("om");
		Bill newbill=new Bill(bill);

		newbill.setBillid(100011);
		newbill.setUserByCreaterUserid(user);
		newbill.setUserByCheckerUserid(user);
		newbill.setBillStatus(1);
		newbill.setOm(om);
		newbill.setDeleteflag(false);
		if (billservice.createBill(newbill, users)){
			bill=newbill;
			return SUCCESS;
		}
		else
			return ERROR;	
	}
}

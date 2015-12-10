package com.om.model;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Bill entity. @author MyEclipse Persistence Tools
 */

public class Bill implements java.io.Serializable {

	// Fields

	private Integer billid;
	private User userByCreaterUserid;
	private User userByCheckerUserid;
	private Om om;
	private String billName;
	private Float billMoney;
	private Integer billType;
	private Timestamp billCreatetime;
	private Integer billStatus;
	private String billObject;
	private Boolean deleteflag;
	private String billDes;
	private Set purchases = new HashSet(0);

	// Constructors
	public Bill(Bill bill) {
		this.billid = bill.billid;
		this.userByCreaterUserid=bill.userByCreaterUserid;
		this.userByCheckerUserid=bill.userByCheckerUserid;
		this.om=bill.om;
		this.billName=bill.billName;
		this.billMoney=bill.billMoney;
		this.billType=bill.billType;
		this.billCreatetime=bill.billCreatetime;
		this.billStatus=bill.billStatus;
		this.billObject=bill.billObject;
		this.deleteflag=bill.deleteflag;
		this.billDes=bill.billDes;
		this.purchases=bill.purchases;
	}

	/** default constructor */
	public Bill() {
	}

	/** minimal constructor */
	public Bill(User userByCreaterUserid, User userByCheckerUserid, Om om,
			String billName, Float billMoney, Integer billType,
			Timestamp billCreatetime, Integer billStatus, Boolean deleteflag) {
		this.userByCreaterUserid = userByCreaterUserid;
		this.userByCheckerUserid = userByCheckerUserid;
		this.om = om;
		this.billName = billName;
		this.billMoney = billMoney;
		this.billType = billType;
		this.billCreatetime = billCreatetime;
		this.billStatus = billStatus;
		this.deleteflag = deleteflag;
	}

	/** full constructor */
	public Bill(User userByCreaterUserid, User userByCheckerUserid, Om om,
			String billName, Float billMoney, Integer billType,
			Timestamp billCreatetime, Integer billStatus, String billObject,
			Boolean deleteflag, String billDes, Set purchases) {
		this.userByCreaterUserid = userByCreaterUserid;
		this.userByCheckerUserid = userByCheckerUserid;
		this.om = om;
		this.billName = billName;
		this.billMoney = billMoney;
		this.billType = billType;
		this.billCreatetime = billCreatetime;
		this.billStatus = billStatus;
		this.billObject = billObject;
		this.deleteflag = deleteflag;
		this.billDes = billDes;
		this.purchases = purchases;
	}

	// Property accessors

	public Integer getBillid() {
		return this.billid;
	}

	public void setBillid(Integer billid) {
		this.billid = billid;
	}

	public User getUserByCreaterUserid() {
		return this.userByCreaterUserid;
	}

	public void setUserByCreaterUserid(User userByCreaterUserid) {
		this.userByCreaterUserid = userByCreaterUserid;
	}

	public User getUserByCheckerUserid() {
		return this.userByCheckerUserid;
	}

	public void setUserByCheckerUserid(User userByCheckerUserid) {
		this.userByCheckerUserid = userByCheckerUserid;
	}

	public Om getOm() {
		return this.om;
	}

	public void setOm(Om om) {
		this.om = om;
	}

	public String getBillName() {
		return this.billName;
	}

	public void setBillName(String billName) {
		this.billName = billName;
	}

	public Float getBillMoney() {
		return this.billMoney;
	}

	public void setBillMoney(Float billMoney) {
		this.billMoney = billMoney;
	}

	public Integer getBillType() {
		return this.billType;
	}

	public void setBillType(Integer billType) {
		this.billType = billType;
	}

	public Timestamp getBillCreatetime() {
		return this.billCreatetime;
	}

	public void setBillCreatetime(Timestamp billCreatetime) {
		this.billCreatetime = billCreatetime;
	}

	public Integer getBillStatus() {
		return this.billStatus;
	}

	public void setBillStatus(Integer billStatus) {
		this.billStatus = billStatus;
	}

	public String getBillObject() {
		return this.billObject;
	}

	public void setBillObject(String billObject) {
		this.billObject = billObject;
	}

	public Boolean getDeleteflag() {
		return this.deleteflag;
	}

	public void setDeleteflag(Boolean deleteflag) {
		this.deleteflag = deleteflag;
	}

	public String getBillDes() {
		return this.billDes;
	}

	public void setBillDes(String billDes) {
		this.billDes = billDes;
	}

	public Set getPurchases() {
		return this.purchases;
	}

	public void setPurchases(Set purchases) {
		this.purchases = purchases;
	}

}
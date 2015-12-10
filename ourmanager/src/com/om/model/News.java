package com.om.model;

import java.sql.Timestamp;

/**
 * News entity. @author MyEclipse Persistence Tools
 */

public class News implements java.io.Serializable {

	// Fields

	private Integer newsid;
	private User userByNewsSendUser;
	private User userByNewsRecieveUser;
	private Om om;
	private String newsName;
	private String newsDes;
	private Boolean newsCollectFlag;
	private Boolean newsReadFlag;
	private Timestamp newsDatatime;

	// Constructors

	/** default constructor */
	public News() {
	}

	/** minimal constructor */
	public News(User userByNewsSendUser, User userByNewsRecieveUser, Om om,
			String newsDes, Boolean newsCollectFlag, Boolean newsReadFlag,
			Timestamp newsDatatime) {
		this.userByNewsSendUser = userByNewsSendUser;
		this.userByNewsRecieveUser = userByNewsRecieveUser;
		this.om = om;
		this.newsDes = newsDes;
		this.newsCollectFlag = newsCollectFlag;
		this.newsReadFlag = newsReadFlag;
		this.newsDatatime = newsDatatime;
	}

	/** full constructor */
	public News(User userByNewsSendUser, User userByNewsRecieveUser, Om om,
			String newsName, String newsDes, Boolean newsCollectFlag,
			Boolean newsReadFlag, Timestamp newsDatatime) {
		this.userByNewsSendUser = userByNewsSendUser;
		this.userByNewsRecieveUser = userByNewsRecieveUser;
		this.om = om;
		this.newsName = newsName;
		this.newsDes = newsDes;
		this.newsCollectFlag = newsCollectFlag;
		this.newsReadFlag = newsReadFlag;
		this.newsDatatime = newsDatatime;
	}

	// Property accessors

	public Integer getNewsid() {
		return this.newsid;
	}

	public void setNewsid(Integer newsid) {
		this.newsid = newsid;
	}

	public User getUserByNewsSendUser() {
		return this.userByNewsSendUser;
	}

	public void setUserByNewsSendUser(User userByNewsSendUser) {
		this.userByNewsSendUser = userByNewsSendUser;
	}

	public User getUserByNewsRecieveUser() {
		return this.userByNewsRecieveUser;
	}

	public void setUserByNewsRecieveUser(User userByNewsRecieveUser) {
		this.userByNewsRecieveUser = userByNewsRecieveUser;
	}

	public Om getOm() {
		return this.om;
	}

	public void setOm(Om om) {
		this.om = om;
	}

	public String getNewsName() {
		return this.newsName;
	}

	public void setNewsName(String newsName) {
		this.newsName = newsName;
	}

	public String getNewsDes() {
		return this.newsDes;
	}

	public void setNewsDes(String newsDes) {
		this.newsDes = newsDes;
	}

	public Boolean getNewsCollectFlag() {
		return this.newsCollectFlag;
	}

	public void setNewsCollectFlag(Boolean newsCollectFlag) {
		this.newsCollectFlag = newsCollectFlag;
	}

	public Boolean getNewsReadFlag() {
		return this.newsReadFlag;
	}

	public void setNewsReadFlag(Boolean newsReadFlag) {
		this.newsReadFlag = newsReadFlag;
	}

	public Timestamp getNewsDatatime() {
		return this.newsDatatime;
	}

	public void setNewsDatatime(Timestamp newsDatatime) {
		this.newsDatatime = newsDatatime;
	}

}
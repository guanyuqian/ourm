package com.om.model;

/**
 * UserNoticeCollect entity. @author MyEclipse Persistence Tools
 */

public class UserNoticeCollect implements java.io.Serializable {

	// Fields

	private Integer userNoticeId;
	private Notice notice;
	private User user;

	// Constructors

	/** default constructor */
	public UserNoticeCollect() {
	}

	/** full constructor */
	public UserNoticeCollect(Notice notice, User user) {
		this.notice = notice;
		this.user = user;
	}

	// Property accessors

	public Integer getUserNoticeId() {
		return this.userNoticeId;
	}

	public void setUserNoticeId(Integer userNoticeId) {
		this.userNoticeId = userNoticeId;
	}

	public Notice getNotice() {
		return this.notice;
	}

	public void setNotice(Notice notice) {
		this.notice = notice;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
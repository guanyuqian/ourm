package com.om.model;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Notice entity. @author MyEclipse Persistence Tools
 */

public class Notice implements java.io.Serializable {

	// Fields

	private Integer noticeid;
	private User userByNoticeCreater;
	private User userByNoticeEditor;
	private Om om;
	private String noticeDes;
	private String noticeName;
<<<<<<< HEAD
=======
	private Date noticeBegintime;
>>>>>>> 168e3245cff571ad43ee86c1fa6dcf215ac3aa52
	private Date noticeEndtime;
	private Timestamp noticeCreatetime;
	private String noticePriority;
	private Set userNoticeCollects = new HashSet(0);

	// Constructors

	/** default constructor */
	public Notice() {
	}
<<<<<<< HEAD

=======
>>>>>>> 168e3245cff571ad43ee86c1fa6dcf215ac3aa52
	/** minimal constructor */
	public Notice(Notice notice) {
		this.userByNoticeCreater = notice.userByNoticeCreater;
		this.userByNoticeEditor = notice.userByNoticeEditor;
		this.om = notice.om;
		this.noticeDes = notice.noticeDes;
		this.noticeName = notice.noticeName;
<<<<<<< HEAD

=======
		this.noticeBegintime = notice.noticeBegintime;
>>>>>>> 168e3245cff571ad43ee86c1fa6dcf215ac3aa52
		this.noticeEndtime = notice.noticeEndtime;
		this.noticeCreatetime = notice.noticeCreatetime;
		this.noticePriority = notice.noticePriority;
		this.userNoticeCollects = notice.userNoticeCollects;
	}
	/** minimal constructor */
	public Notice(User userByNoticeCreater, Om om, String noticeName,
<<<<<<< HEAD
			Date noticeEndtime, Timestamp noticeCreatetime,
			String noticePriority) {
		this.userByNoticeCreater = userByNoticeCreater;
		this.om = om;
		this.noticeName = noticeName;
=======
			Date noticeBegintime, Date noticeEndtime,
			Timestamp noticeCreatetime, String noticePriority) {
		this.userByNoticeCreater = userByNoticeCreater;
		this.om = om;
		this.noticeName = noticeName;
		this.noticeBegintime = noticeBegintime;
>>>>>>> 168e3245cff571ad43ee86c1fa6dcf215ac3aa52
		this.noticeEndtime = noticeEndtime;
		this.noticeCreatetime = noticeCreatetime;
		this.noticePriority = noticePriority;
	}

	/** full constructor */
	public Notice(User userByNoticeCreater, User userByNoticeEditor, Om om,
<<<<<<< HEAD
			String noticeDes, String noticeName, Date noticeEndtime,
			Timestamp noticeCreatetime, String noticePriority,
			Set userNoticeCollects) {
=======
			String noticeDes, String noticeName, Date noticeBegintime,
			Date noticeEndtime, Timestamp noticeCreatetime,
			String noticePriority, Set userNoticeCollects) {
>>>>>>> 168e3245cff571ad43ee86c1fa6dcf215ac3aa52
		this.userByNoticeCreater = userByNoticeCreater;
		this.userByNoticeEditor = userByNoticeEditor;
		this.om = om;
		this.noticeDes = noticeDes;
		this.noticeName = noticeName;
<<<<<<< HEAD
=======
		this.noticeBegintime = noticeBegintime;
>>>>>>> 168e3245cff571ad43ee86c1fa6dcf215ac3aa52
		this.noticeEndtime = noticeEndtime;
		this.noticeCreatetime = noticeCreatetime;
		this.noticePriority = noticePriority;
		this.userNoticeCollects = userNoticeCollects;
	}

	// Property accessors

	public Integer getNoticeid() {
		return this.noticeid;
	}

	public void setNoticeid(Integer noticeid) {
		this.noticeid = noticeid;
	}

	public User getUserByNoticeCreater() {
		return this.userByNoticeCreater;
	}

	public void setUserByNoticeCreater(User userByNoticeCreater) {
		this.userByNoticeCreater = userByNoticeCreater;
	}

	public User getUserByNoticeEditor() {
		return this.userByNoticeEditor;
	}

	public void setUserByNoticeEditor(User userByNoticeEditor) {
		this.userByNoticeEditor = userByNoticeEditor;
	}

	public Om getOm() {
		return this.om;
	}

	public void setOm(Om om) {
		this.om = om;
	}

	public String getNoticeDes() {
		return this.noticeDes;
	}

	public void setNoticeDes(String noticeDes) {
		this.noticeDes = noticeDes;
	}

	public String getNoticeName() {
		return this.noticeName;
	}

	public void setNoticeName(String noticeName) {
		this.noticeName = noticeName;
	}

<<<<<<< HEAD
=======
	public Date getNoticeBegintime() {
		return this.noticeBegintime;
	}

	public void setNoticeBegintime(Date noticeBegintime) {
		this.noticeBegintime = noticeBegintime;
	}

>>>>>>> 168e3245cff571ad43ee86c1fa6dcf215ac3aa52
	public Date getNoticeEndtime() {
		return this.noticeEndtime;
	}

	public void setNoticeEndtime(Date noticeEndtime) {
		this.noticeEndtime = noticeEndtime;
	}

	public Timestamp getNoticeCreatetime() {
		return this.noticeCreatetime;
	}

	public void setNoticeCreatetime(Timestamp noticeCreatetime) {
		this.noticeCreatetime = noticeCreatetime;
	}

	public String getNoticePriority() {
		return this.noticePriority;
	}

	public void setNoticePriority(String noticePriority) {
		this.noticePriority = noticePriority;
	}

	public Set getUserNoticeCollects() {
		return this.userNoticeCollects;
	}

	public void setUserNoticeCollects(Set userNoticeCollects) {
		this.userNoticeCollects = userNoticeCollects;
	}

}
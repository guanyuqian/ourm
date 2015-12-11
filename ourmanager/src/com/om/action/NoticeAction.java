package com.om.action;

import java.io.IOException;
import java.security.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.om.dao.INoticeDAO;
import com.om.model.Notice;
import com.om.model.Om;
import com.om.model.User;
import com.om.service.INoticeService;
import com.opensymphony.xwork2.ActionSupport;

public class NoticeAction extends ActionSupport {
	Notice notice;
	INoticeService noticeService;
	private int page;
	public List Notices = new ArrayList();
	private int LAGE_PAGE;
	String newNoticeName;
	String newNoticeDes;
	String newNoticePriority;

	public String getNewNoticeDes() {
		return newNoticeDes;
	}

	public void setNewNoticeDes(String newNoticeDes) {
		this.newNoticeDes = newNoticeDes;
	}

	public String getNewNoticePriority() {
		return newNoticePriority;
	}

	public void setNewNoticePriority(String newNoticePriority) {
		this.newNoticePriority = newNoticePriority;
	}

	private Date endTime;

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getNewNoticeName() {
		return newNoticeName;
	}

	public void setNewNoticeName(String newNoticeName) {
		this.newNoticeName = newNoticeName;
	}

	public Notice getNotice() {
		return notice;
	}

	public void setNotice(Notice notice) {
		this.notice = notice;
	}

	public INoticeService getNoticeService() {
		return noticeService;
	}

	public void setNoticeService(INoticeService noticeService) {
		this.noticeService = noticeService;
	}

	public int getLAGE_PAGE() {
		ServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ((HttpServletRequest) request).getSession();
		int omid = ((Om) session.getAttribute("om")).getOmid();
		LAGE_PAGE = noticeService.AllListCount(omid) / 12 + 1;
		return LAGE_PAGE;
	}

	public String firstLoadNotice() throws IOException {
		// page = 1;
		getLAGE_PAGE();
		// loadlNotice();
		return SUCCESS;
	}

	public String loadlNotice() throws IOException {
		// list = new ArrayList();

		System.out.println("in loadlNotice");
		ServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ((HttpServletRequest) request).getSession();
		int omid = ((Om) session.getAttribute("om")).getOmid();
		List<Notice> list = noticeService.LoardSomeService(1, omid);

		Notices.clear();
		// System.out.println("PAGE_LAST:" + getLAGE_PAGE());
		try {
			for (Notice u : list) {
				Map us = new HashMap();
				us.put("Noticeid", u.getNoticeid());
				us.put("NoticeName", u.getNoticeName());
				us.put("NoticePriority", u.getNoticePriority());
				us.put("NoticeDes", u.getNoticeDes());
				us.put("NoticeEndtime", u.getNoticeEndtime());
				us.put("Editorid", "");
				us.put("EditorName", "");
				if (u.getUserByNoticeEditor() != null) {
					us.put("Editorid", u.getUserByNoticeEditor().getUserid());
					us.put("EditorName", u.getUserByNoticeEditor()
							.getUserName());
				}
				us.put("Createrid", u.getUserByNoticeCreater().getUserid());
				us.put("CreaterName", u.getUserByNoticeCreater().getUserName());
				Notices.add(us);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return SUCCESS;

		}
		return SUCCESS;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public List getNotices() {
		return Notices;
	}

	public void setNotices(List notices) {
		Notices = notices;
	}

	public void setLAGE_PAGE(int lAGE_PAGE) {
		LAGE_PAGE = lAGE_PAGE;
	}

	public String addNotice() {
		ServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ((HttpServletRequest) request).getSession();
		User nowuser = ((User) session.getAttribute("user"));
		Om nowom = ((Om) session.getAttribute("om"));
		if(newNoticePriority==null){
			newNoticePriority="低";
		}if(endTime==null){
			endTime=new Date();
		}
		Notice newNotice = new Notice(nowuser, nowom, newNoticeName, endTime,
				null, newNoticePriority);
		newNotice.setNoticeDes(newNoticeDes);
		if (noticeService.addNotice(nowuser, newNotice))
			return SUCCESS;
		return ERROR;
	}
}

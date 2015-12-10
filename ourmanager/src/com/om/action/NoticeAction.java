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

	public String firstLoadNotice() throws IOException{
		page = 1;
		getLAGE_PAGE();
		loadlNotice();
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
	//	System.out.println("PAGE_LAST:" + getLAGE_PAGE());
		for (Notice u : list) {
			Map us = new HashMap();
			us.put("Noticeid", u.getNoticeid());
			us.put("NoticeName", u.getNoticeName());
			us.put("NoticePriority", u.getNoticePriority());
			us.put("NoticeDes", u.getNoticeDes());
			us.put("NoticeBegintime", u.getNoticeBegintime());
			us.put("NoticeEndtime", u.getNoticeEndtime());
			us.put("Editor", u.getUserByNoticeEditor());
			us.put("Creater", u.getUserByNoticeCreater());
			Notices.add(us);
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
		Notice newNotice = new Notice(nowuser, nowom, "NoticeName", new Date(),
				new Date(), null, "高");
		if (noticeService.addNotice(nowuser, newNotice))
			return SUCCESS;
		return ERROR;
	}
}

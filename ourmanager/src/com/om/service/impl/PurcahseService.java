package com.om.service.impl;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.om.dao.IPurchaseDAO;
import com.om.dao.IUserDAO;
import com.om.model.Bill;
import com.om.model.BillDAO;
import com.om.model.Om;
import com.om.model.Purchase;
import com.om.model.PurchaseDAO;
import com.om.model.User;
import com.om.model.UserDAO;
import com.om.service.IPurchaseService;
public class PurcahseService implements IPurchaseService{
	//IUserDAO us=new UserDAO();
	IPurchaseDAO pu=new PurchaseDAO();
	//IBillDAO bi=new PurchaseDAO();
	@Override
	public Set<Purchase> loadPurchase(){
		// TODO Auto-generated method stub
		ServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ((HttpServletRequest) request)
				.getSession();
		User nowUser=(User) session.getAttribute("user");		
		Set purchases=new HashSet( pu.findAll());		
		nowUser.setPurchases(purchases);
		return nowUser.getPurchases(); 
	}

	public IPurchaseDAO getPu() {
		return pu;
	}
	public void setPu(IPurchaseDAO pu) {
		this.pu = pu;
	}

}

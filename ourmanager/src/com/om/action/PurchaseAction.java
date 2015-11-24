package com.om.action;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.om.model.Purchase;
import com.om.service.IPurchaseService;
import com.opensymphony.xwork2.ActionSupport;

public class PurchaseAction extends ActionSupport {
	 private Set<Purchase> purchaseList;//添加get set 方法
	 IPurchaseService purchaseService ;
	 public Set<Purchase> getPurchaseList() {
		return purchaseList;
	}
	public void setPurchaseList(Set<Purchase> purchaseList) {
		this.purchaseList = purchaseList;
	}
	public IPurchaseService getPurchaseService() {
		return purchaseService;
	}
	public void setPurchaseService(IPurchaseService purchaseService) {
		this.purchaseService = purchaseService;
	}
	public String loadPur(){

		purchaseList=purchaseService.loadPurchase();
//		purchaseList=new HashSet(0);
//		purchaseList.add(new Purchase());
//		purchaseList.add(new Purchase());
//		purchaseList.add(new Purchase());
		return SUCCESS;		 
	 }
}

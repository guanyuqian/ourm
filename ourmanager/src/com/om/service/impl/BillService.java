package com.om.service.impl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.sql.Timestamp;
import java.util.List;

import com.om.dao.IBillDAO;
import com.om.dao.IPurchaseDAO;
import com.om.dao.IUserDAO;
import com.om.model.Bill;
import com.om.model.Purchase;
import com.om.model.User;
import com.om.service.IBillService;

public class BillService implements IBillService {
	private IBillDAO billdao;
	private Bill bill;
	private Purchase purchase;
	private IPurchaseDAO purchasedao;
	private Set<Integer> purchaseSet;
	private IUserDAO userdao;
	public Set<Integer> getPurchaseSet() {
		return purchaseSet;
	}

	public void setPurchaseSet(Set<Integer> purchaseSet) {
		this.purchaseSet = purchaseSet;
	}

	public IUserDAO getUserdao() {
		return userdao;
	}

	public void setUserdao(IUserDAO userdao) {
		this.userdao = userdao;
	}

	public Bill getBill() {
		return bill;
	}

	public void setBill(Bill bill) {
		this.bill = bill;
	}

	public Purchase getPurchase() {
		return purchase;
	}

	public void setPurchase(Purchase purchase) {
		this.purchase = purchase;
	}

	public IPurchaseDAO getPurchasedao() {
		return purchasedao;
	}

	public void setPurchasedao(IPurchaseDAO purchasedao) {
		this.purchasedao = purchasedao;
	}


	public IBillDAO getBilldao() {
		return billdao;
	}

	public void setBilldao(IBillDAO billdao) {
		this.billdao = billdao;
	}

	@Override
	public boolean createBill(Bill bill,List<User> users) {
		Integer userCount=users.size();
		boolean bRet=false;
		if(userCount==0);
		else{
		
			try {
				billdao.save(bill);
				purchaseSet = null;
				
				for(int i=0;i<userCount;i++)
				{
					Purchase newPurchase = new Purchase();
					newPurchase.setBill(bill);
					//Purchase Id让其自增
					newPurchase.setOm(users.get(i).getOm());
					newPurchase.setDeleteflag(false);
					newPurchase.setUser(users.get(i));
					purchasedao.save(newPurchase);
					purchaseSet.add(users.get(i).getUserid());
				}
				bill.setPurchases(purchaseSet);
				billdao.attachDirty(bill);
				bRet=true;
			} catch (Exception ex) {
				ex.printStackTrace();
				System.out.print("未能够进入账单创建函数，请检查BillService");
				}
			}
		return bRet;
	}


	public Set<User> loadAllUser()
	{
		try{
			return new HashSet(userdao.findAll());
		}catch(Exception e)
		{
			return null;
		}
	}

	@Override
	public List<Bill> checkBill(Integer billId, Integer status) {
		
		
		return null;
	}
	
	
	/*
		后台load：billList
		前台传入：1、beginTime,endTime(时间段~datetime);
		2、minMoney、maxMoney(金额范围~floate);
		3、id/name/object/des；	
		4、type(-1支出、1收入、0全部~int);	
		5、status(审核状态~int)
		后台返回：billlist
	*/
	
	@Override
	public List<Bill> queryBill(Timestamp begintime,Timestamp endtime,float minMoney,
			float maxMoney,Integer id,String name,String object,Integer billType,Integer billStatus)
	{	
		return null;
		
	}
	
	
	public boolean search_complex(Bill bill,String name,Integer id,Integer billType,Integer billStatus,String object,String billdes,
			Timestamp begintime,Timestamp endtime,
			float minMoney,float maxMoney)
	{
		boolean bRet=false;
		do
		{
			if(name!=null && bill.getBillName().contains(name));
			else break;
			if(id!=null && id==bill.getBillid()) ;
			else break;
			if(billType!=null && billType==bill.getBillType()) ;
			else break;
			if(billStatus!=null && billStatus==bill.getBillStatus());
			else break;
			
			if(object!=null && object==bill.getBillObject());
			else break;
			if(billdes!=null && bill.getBillDes().contains(billdes)) ;
			else break;
			if(begintime!=null)
			{
				if(endtime!=null  && begintime.getTime()<=bill.getBillCreatetime().getTime() && endtime.getTime()>=bill.getBillCreatetime().getTime());
				else break;
				if(endtime==null  && begintime.getTime()<=bill.getBillCreatetime().getTime());
				else break;
			}
			else
			{
				if(endtime==null);
				if(endtime!=null && endtime.getTime()>=bill.getBillCreatetime().getTime());
				else break;
			}
			
			if(minMoney!=0)
			{
				if(maxMoney!=0  && maxMoney>=bill.getBillMoney() && minMoney<=bill.getBillMoney());
				else break;
				if(maxMoney==0 && maxMoney>=bill.getBillMoney()) ;
				else break;
			}
			else
			{
				if(minMoney==0);
				if(minMoney!=0 && minMoney<=bill.getBillMoney());
				else break;
			}
			bRet=true;
		}while(false);
		return bRet;
	}
	
	
	
	
	@Override
	public List<Bill> queryBill_complex(String name,Integer id,Integer billType,Integer billStatus,String object,String billdes,
			Timestamp begintime,Timestamp endtime,
			float minMoney,float maxMoney)
	{
		
		List<Bill> bills=new ArrayList<Bill>();
		bills=billdao.findAll();
		
		if(bills==null) {System.err.println("Error in get bills");return null;}
		List<Bill> result_bill=new ArrayList<Bill>();
		for(int i=0;i<bills.size();i++)
		{
			if(search_complex(bills.get(i),name,id,billType,billStatus,object,billdes, begintime,endtime,minMoney,maxMoney))
				result_bill.add(bills.get(i));
		}
		return result_bill;
	}
	

	
	public boolean search_simple(Bill bill,String name,Integer id,Integer billType,Integer billStatus)
	{
		boolean bRet=false;
		do
		{
			if(name!=null && bill.getBillName().contains(name)) bRet=true;
			else break;
			if(id!=null && id==bill.getBillid()) bRet=true;
			else break;
			if(billType!=null && billType==bill.getBillType()) bRet=true;
			else break;
			if(billStatus!=null && billStatus==bill.getBillStatus()) bRet=true;
			else break;
		}while(false);
		return bRet;
	}
	
	@Override
	public List<Bill> queryBill_simple(String name,Integer id,
			Integer billType,Integer billStatus)
	{
		
		List<Bill>bills=new ArrayList<Bill>();
		bills=billdao.findAll();
		
		if(bills==null) {System.err.println("Error in get bills");return null;}
		List<Bill> result_bill=new ArrayList<Bill>();
		for(int i=0;i<bills.size();i++)
		{
			if(search_simple(bills.get(i),name,id,billType,billStatus))
				result_bill.add(bills.get(i));
		}
		return result_bill;
	}

	@Override
	public List<Bill> queryBill(List<Bill> bills) {
		// TODO Auto-generated method stub
		return null;
	}
	

	
	
}

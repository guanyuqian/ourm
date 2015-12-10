package com.om.service;

import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

import com.om.model.Bill;
import com.om.model.User;

public interface IBillService {


	public List<Bill> queryBill(Timestamp begintime,Timestamp endtime,float minMoney,
			float maxMoney,Integer id,String name,String object,Integer billType,Integer billStatus);
	
	public List<Bill> queryBill(List<Bill> bills );
	
	public boolean createBill(Bill bill,List<User>users);
	
	public List<Bill> checkBill(Integer billId,Integer status);
	
	public Set<User> loadAllUser();
	
	public List<Bill> queryBill_complex(String name,Integer id,Integer billType,Integer billStatus,String object,String billdes,
			Timestamp begintime,Timestamp endtime,
			float minMoney,float maxMoney);
	
	public List<Bill> queryBill_simple(String name,Integer id,
			Integer billType,Integer billStatus);

}
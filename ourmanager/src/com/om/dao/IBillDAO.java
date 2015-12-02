package com.om.dao;

import java.util.List;

import com.om.model.Bill;

public interface IBillDAO {
	public void save(Bill bill);
	public void attachDirty(Bill bill);
	public List findAll();

}

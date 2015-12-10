package com.om.dao;

import java.util.List;

import com.om.model.Purchase;
import com.om.model.User;

public interface IPurchaseDAO {
		public void save(Purchase transientInstance);
		public List findAll();
}
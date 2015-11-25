package com.om.service;

import java.util.Set;

import com.om.*;
import com.om.model.User;

public interface IUserInfoService {
	public boolean Update(User user);
	public Set<User> LoardAllUser();

}

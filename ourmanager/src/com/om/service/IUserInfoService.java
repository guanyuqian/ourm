package com.om.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.om.*;
import com.om.model.User;

public interface IUserInfoService {
	public boolean Update(User user);
	public List<User> LoardAllUser(int page);

}

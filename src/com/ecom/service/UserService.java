package com.ecom.service;

import java.util.List;

import info.ecom.model.User;

public interface UserService {
	public void registerUser(User user);
	public User verifyUser(User user);
	public List<User> getUserList();

}

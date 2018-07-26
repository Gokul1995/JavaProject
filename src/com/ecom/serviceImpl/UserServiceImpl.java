package com.ecom.serviceImpl;

import java.util.List;

import com.ecom.daoImpl.UserDaoImpl;
import com.ecom.service.UserService;

import info.ecom.dao.UserDao;
import info.ecom.model.User;

public class UserServiceImpl implements UserService{
    UserDao userDao=new UserDaoImpl();
	@Override
	public void registerUser(User user) {
	  userDao.registerUser(user);
	}

	@Override
	public User verifyUser(User user) {

		return userDao.verifyUser(user);
	}

	@Override
	public List<User> getUserList() {
		
		return userDao.getUserList();
	}

}

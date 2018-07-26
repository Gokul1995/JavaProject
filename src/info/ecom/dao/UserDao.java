package info.ecom.dao;

import java.util.List;

import info.ecom.model.User;

public interface UserDao {
	
	public void registerUser(User user);
	public User verifyUser(User user);
	public List<User> getUserList();

}

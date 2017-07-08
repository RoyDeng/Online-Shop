package mobile.shop.service;

import mobile.shop.model.User;

public interface UserService {
	public User login( String username, String password );
	public void add(User user);
}
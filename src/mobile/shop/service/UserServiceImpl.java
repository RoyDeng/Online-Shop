package mobile.shop.service;

import mobile.shop.dao.UserDAO;
import mobile.shop.model.User;

public class UserServiceImpl  implements UserService  {
	private UserDAO userDAO;
	
	public UserDAO getUserDAO() {
		return userDAO;
	}
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	@Override
	public User login(String username, String password) {
		return userDAO.loginCheck(username, password);
	}
	
	@Override
	public void add(User user) {
		this.userDAO.save(user);
	}
}
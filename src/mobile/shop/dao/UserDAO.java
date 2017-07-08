package mobile.shop.dao;

import mobile.shop.model.User;

public interface UserDAO extends BaseDAO {
	public User loginCheck(String username, String password);
	public void save(User user);
}
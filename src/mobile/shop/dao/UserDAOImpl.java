package mobile.shop.dao;

import java.io.Serializable;
import java.util.List;

import mobile.shop.model.User;

public class UserDAOImpl  extends BaseDAOImpl implements UserDAO {
	@Override
	public User loginCheck(String username, String password) {
		String hql = "from mobile.shop.model.User u where u.username = " + "'" + username + "'" + " " + "and u.password =" + " " + "'" + password + "'";
		List<User> list = this.getHibernateTemplate().find(hql);
		
		if (list != null && list.size() > 0) {
			super.logger.info("login check succ, user.username=" + list.get(0).getUsername());
			return list.get(0);
		}
		else {
			return null;
		}
	}
	
	@Override
	public void save(User user) {
		super.saveEntity(user);
	}
}
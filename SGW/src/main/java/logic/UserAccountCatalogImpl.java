package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.UserDao;
import model.User;

@Service
public class UserAccountCatalogImpl implements UserAccountCatalog {

	@Autowired
	private UserDao userDao;
	
	public User getUserAccount(String user_id) {
		return userDao.getUserAccount(user_id);
	}

	public void updateUserAccount(User user) {
		userDao.updateUserAccount(user);
	}

	public List<User> getUserList() {
		return userDao.getUserList();
	}

}

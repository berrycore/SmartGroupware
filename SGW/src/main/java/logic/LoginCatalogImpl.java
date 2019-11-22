package logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.UserDao;
import model.User;

@Service
public class LoginCatalogImpl implements LoginCatalog {

	@Autowired
	private UserDao userDao;
	
	public User getUser(String user_id) {
		return userDao.getUserAccount(user_id);
	}

	public Integer login(String user_id, String user_password) {
		// TODO Auto-generated method stub
		return null;
	}

}

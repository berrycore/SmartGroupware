package dao;

import model.User;

public interface UserDao {

	User getUserAccount(String user_id);
	void updateUserAccount(User user);
	
	
}

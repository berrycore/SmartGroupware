package dao;

import java.util.List;

import model.User;

public interface UserDao {

	User getUserAccount(String user_id);
	Integer getUserAccountCount(String user_id);
	void updateUserAccount(User user);
	List<User> getUserList();
	User getUserByUserId(String user_id);
	Integer insertUser(User user);
}

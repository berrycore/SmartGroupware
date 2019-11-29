package dao;

import java.util.List;

import model.User;

public interface UserDao {

	User getUserAccount(String user_id);
	List<User> getUserAccountByName(String user_name);
	Integer getUserAccountCount(String user_id);
	Integer updateUserInfoByUser(User user);
	Integer updateUserInfoByAdmin(User user);
	void updateUserPassword(User user);
	List<User> getUserList();
	User getUserByUserId(String user_id);
	Integer insertUser(User user);
	void updateUserLastLoginTime(String user_id);
}

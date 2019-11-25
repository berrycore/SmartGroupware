package logic;

import java.util.List;

import model.User;

public interface UserAccountCatalog {

	User getUserAccount(String user_id);
	Integer getUserAccountCount(String user_id);
	void updateUserInfo(User user);
	void updateUserPassword(User user);
	List<User> getUserList();
	User getUserByUserId(String user_id);
	Integer insertUser(User user);
	void updateUserLastLoginTime(String user_id);
}

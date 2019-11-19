package logic;

import model.User;

public interface UserAccountCatalog {

	User getUserAccount(String user_id);
	void updateUserAccount(User user);
	
}

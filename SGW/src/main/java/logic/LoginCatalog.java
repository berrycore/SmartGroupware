package logic;

import model.User;

public interface LoginCatalog {

	User getUser(String user_id);
	Integer login(String user_id, String user_password);
}

package dao;

import java.util.List;

import model.Email;

public interface EmailDao {

	List<Email> getMailList();
	Email selectMail(String mail_id);
	void insertEmail(Email email);
	void deleteEmail(Email email);
}

package logic;

import java.util.List;

import model.Email;

public interface MailCatalog {

	List<Email> getMailList();
	Email selectMail(String mail_id);
	void sendMail(String mail_title, String mail_content, String sender_name, String receiver_name, String cc_name, String attached_file_name);
	
}

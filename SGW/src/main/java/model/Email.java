package model;

public class Email {

	private String mail_id;
	private String mail_title;
	private String mail_content;
	private String mail_time_send;
	private String sender_name;
	private String receiver_name;
	private String cc_name;
	private String document_attached_file_name;

	public String getMail_id() {
		return mail_id;
	}

	public void setMail_id(String mail_id) {
		this.mail_id = mail_id;
	}

	public String getMail_title() {
		return mail_title;
	}

	public void setMail_title(String mail_title) {
		this.mail_title = mail_title;
	}

	public String getMail_content() {
		return mail_content;
	}

	public void setMail_content(String mail_content) {
		this.mail_content = mail_content;
	}

	public String getMail_time_send() {
		return mail_time_send;
	}

	public void setMail_time_send(String mail_time_send) {
		this.mail_time_send = mail_time_send;
	}

	public String getSender_name() {
		return sender_name;
	}

	public void setSender_name(String sender_name) {
		this.sender_name = sender_name;
	}

	public String getReceiver_name() {
		return receiver_name;
	}

	public void setReceiver_name(String receiver_name) {
		this.receiver_name = receiver_name;
	}

	public String getCc_name() {
		return cc_name;
	}

	public void setCc_name(String cc_name) {
		this.cc_name = cc_name;
	}

	public String getDocument_attached_file_name() {
		return document_attached_file_name;
	}

	public void setDocument_attached_file_name(String document_attached_file_name) {
		this.document_attached_file_name = document_attached_file_name;
	}

}

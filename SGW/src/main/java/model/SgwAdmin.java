package model;

public class SgwAdmin {

	private String admin_id;
	private String admin_password;
	private String admin_name;
	private String admin_date_last_login;
	private String admin_date_created;
	private String admin_date_last_pw_changed;
	private String admin_access_ip;

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_password() {
		return admin_password;
	}

	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getAdmin_date_last_login() {
		return admin_date_last_login;
	}

	public void setAdmin_date_last_login(String admin_date_last_login) {
		this.admin_date_last_login = admin_date_last_login;
	}

	public String getAdmin_date_created() {
		return admin_date_created;
	}

	public void setAdmin_date_created(String admin_date_created) {
		this.admin_date_created = admin_date_created;
	}

	public String getAdmin_date_last_pw_changed() {
		return admin_date_last_pw_changed;
	}

	public void setAdmin_date_last_pw_changed(String admin_date_last_pw_changed) {
		this.admin_date_last_pw_changed = admin_date_last_pw_changed;
	}

	public String getAdmin_access_ip() {
		return admin_access_ip;
	}

	public void setAdmin_access_ip(String admin_access_ip) {
		this.admin_access_ip = admin_access_ip;
	}

}

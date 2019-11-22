package model;

public class User {

	private String user_id;
	private String user_password;
	private String user_name;
	private String user_email;
	private String user_phone;
	private String user_description;
	private String user_date_last_login;
	private String user_date_last_pw_changed;
	private String user_date_employement;
	private String user_date_retirement;
	private String team_id;
	private String position_id;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_description() {
		return user_description;
	}

	public void setUser_description(String user_description) {
		this.user_description = user_description;
	}

	public String getUser_date_last_login() {
		return user_date_last_login;
	}

	public void setUser_date_last_login(String user_date_last_login) {
		this.user_date_last_login = user_date_last_login;
	}

	public String getUser_date_last_pw_changed() {
		return user_date_last_pw_changed;
	}

	public void setUser_date_last_pw_changed(String user_date_last_pw_changed) {
		this.user_date_last_pw_changed = user_date_last_pw_changed;
	}

	public String getUser_date_employement() {
		return user_date_employement;
	}

	public void setUser_date_employement(String user_date_employement) {
		this.user_date_employement = user_date_employement;
	}

	public String getUser_date_retirement() {
		return user_date_retirement;
	}

	public void setUser_date_retirement(String user_date_retirement) {
		this.user_date_retirement = user_date_retirement;
	}

	public String getTeam_id() {
		return team_id;
	}

	public void setTeam_id(String team_id) {
		this.team_id = team_id;
	}

	public String getPosition_id() {
		return position_id;
	}

	public void setPosition_id(String position_id) {
		this.position_id = position_id;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_password=" + user_password + ", user_name=" + user_name
				+ ", user_email=" + user_email + ", user_phone=" + user_phone + ", user_description=" + user_description
				+ ", user_date_last_login=" + user_date_last_login + ", user_date_last_pw_changed="
				+ user_date_last_pw_changed + ", user_date_employement=" + user_date_employement
				+ ", user_date_retirement=" + user_date_retirement + ", team_id=" + team_id + ", position_id="
				+ position_id + "]";
	}
	
	

}

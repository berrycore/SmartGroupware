package model;

public class SgwAccess {

	private String user_id;
	private String user_name;
	private String access_elec_document;
	private String access_email;
	private String access_board;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getAccess_elec_document() {
		return access_elec_document;
	}
	public void setAccess_elec_document(String access_elec_document) {
		this.access_elec_document = access_elec_document;
	}
	public String getAccess_email() {
		return access_email;
	}
	public void setAccess_email(String access_email) {
		this.access_email = access_email;
	}
	public String getAccess_board() {
		return access_board;
	}
	public void setAccess_board(String access_board) {
		this.access_board = access_board;
	}
	@Override
	public String toString() {
		return "SgwAccess [user_id=" + user_id + ", user_name=" + user_name + ", access_elec_document="
				+ access_elec_document + ", access_email=" + access_email + ", access_board=" + access_board + "]";
	}
}

package model;

public class DocumentSign {

	private String user_id;
	private String document_id;
	private String time_stamp;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getDocument_id() {
		return document_id;
	}
	public void setDocument_id(String document_id) {
		this.document_id = document_id;
	}
	public String getTime_stamp() {
		return time_stamp;
	}
	public void setTime_stamp(String time_stamp) {
		this.time_stamp = time_stamp;
	}
	@Override
	public String toString() {
		return "DocumentSign [user_id=" + user_id + ", document_id=" + document_id + ", time_stamp=" + time_stamp + "]";
	}		
}

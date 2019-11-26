package model;

public class Board {

	private Integer board_id;
	private String board_title;
	private String board_content;
	private String board_writer_name;
	private String board_attached_file_name;
	private String board_date_regist;
	private String user_id;
	private String reply_count;
	
	private User user;

	public Integer getBoard_id() {
		return board_id;
	}

	public void setBoard_id(Integer board_id) {
		this.board_id = board_id;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_writer_name() {
		return board_writer_name;
	}

	public void setBoard_writer_name(String board_writer_name) {
		this.board_writer_name = board_writer_name;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getBoard_attached_file_name() {
		return board_attached_file_name;
	}

	public void setBoard_attached_file_name(String board_attached_file_name) {
		this.board_attached_file_name = board_attached_file_name;
	}

	public String getBoard_date_regist() {
		return board_date_regist;
	}

	public void setBoard_date_regist(String board_date_regist) {
		this.board_date_regist = board_date_regist;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getReply_count() {
		return reply_count;
	}
	
	public void setReply_count(String reply_count) {
		this.reply_count = reply_count;
	}

	@Override
	public String toString() {
		return "Board [board_id=" + board_id + ", board_title=" + board_title + ", board_content=" + board_content
				+ ", board_writer_name=" + board_writer_name + ", board_attached_file_name=" + board_attached_file_name
				+ ", board_date_regist=" + board_date_regist + ", user_id=" + user_id + ", reply_count=" + reply_count
				+ ", user=" + user + "]";
	}
}

package model;

public class Reply {

	private Integer reply_id;
	private String reply_writer_name;
	private String reply_content;
	private String reply_date_regist;
	private String parent_board_id;

	public Integer getReply_id() {
		return reply_id;
	}

	public void setReply_id(Integer reply_id) {
		this.reply_id = reply_id;
	}

	public String getReply_writer_name() {
		return reply_writer_name;
	}

	public void setReply_writer_name(String reply_writer_name) {
		this.reply_writer_name = reply_writer_name;
	}

	public String getReply_content() {
		return reply_content;
	}

	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}

	public String getReply_date_regist() {
		return reply_date_regist;
	}

	public void setReply_date_regist(String reply_date_regist) {
		this.reply_date_regist = reply_date_regist;
	}

	public String getParent_board_id() {
		return parent_board_id;
	}

	public void setParent_board_id(String parent_board_id) {
		this.parent_board_id = parent_board_id;
	}

	@Override
	public String toString() {
		return "Reply [reply_id=" + reply_id + ", reply_writer_name=" + reply_writer_name + ", reply_content="
				+ reply_content + ", reply_date_regist=" + reply_date_regist + ", parent_board_id=" + parent_board_id
				+ "]";
	}

	
}

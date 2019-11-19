package model;

public class Notice {

	private Integer notice_id;
	private String notice_title;
	private String notice_content;
	private String notice_writer_name;
	private String notice_attached_file_name;
	private String notice_date_regist;

	public Integer getNotice_id() {
		return notice_id;
	}

	public void setNotice_id(Integer notice_id) {
		this.notice_id = notice_id;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public String getNotice_writer_name() {
		return notice_writer_name;
	}

	public void setNotice_writer_name(String notice_writer_name) {
		this.notice_writer_name = notice_writer_name;
	}

	public String getNotice_attached_file_name() {
		return notice_attached_file_name;
	}

	public void setNotice_attached_file_name(String notice_attached_file_name) {
		this.notice_attached_file_name = notice_attached_file_name;
	}

	public String getNotice_date_regist() {
		return notice_date_regist;
	}

	public void setNotice_date_regist(String notice_date_regist) {
		this.notice_date_regist = notice_date_regist;
	}

}

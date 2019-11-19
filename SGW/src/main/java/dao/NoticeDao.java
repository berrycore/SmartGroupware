package dao;

import java.util.List;

import model.Notice;

public interface NoticeDao {

	List<Notice> getNoticeList();
	Notice selectNotice(String notice_id);
	void writeNotice(Notice notice);
	void updateNotice(Notice notice);
	void deleteNotice(String notice_id);
}

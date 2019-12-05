package dao;

import java.util.List;

import model.Notice;
import model.Pagination;

public interface NoticeDao {

	List<Notice> getNoticeList(Pagination pagination);
	Notice selectNotice(String notice_id);
	Integer writeNotice(Notice notice);
	Integer updateNotice(Notice notice);
	Integer deleteNotice(String notice_id);
	Integer getNoticeCount();
	Notice getNoticeRecentOne();
	
}

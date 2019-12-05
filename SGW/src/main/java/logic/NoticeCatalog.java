package logic;

import java.util.List;

import model.Notice;

public interface NoticeCatalog {

	List<Notice> getNoticeList();
	Notice selectNotice(String notice_id);
	Integer writeNotice(Notice notice);
	Integer updateNotice(Notice notice);
	Integer deleteNotice(String notice_id);
	
	Notice getNoticeRecentOne();
	
	Integer getNoticeCount();
	
	void uploadAttachedFile();
	void downloadAttachedFile();
}

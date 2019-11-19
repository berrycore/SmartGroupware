package logic;

import java.util.List;

import model.Notice;

public interface NoticeCatalog {

	List<Notice> getNoticeList();
	Notice selectNotice(String notice_id);
	void writeNotice(Notice notice);
	void updateNotice(Notice notice);
	void deleteNotice(String notice_id);
	
	void uploadAttachedFile();
	void downloadAttachedFile();
}

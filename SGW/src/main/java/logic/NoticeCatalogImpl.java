package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.NoticeDao;
import model.Notice;

@Service
public class NoticeCatalogImpl implements NoticeCatalog {

	@Autowired
	private NoticeDao noticeDao;
	
	public List<Notice> getNoticeList() {
		return noticeDao.getNoticeList();
	}

	public Notice selectNotice(String notice_id) {
		return noticeDao.selectNotice(notice_id);
	}

	public Integer writeNotice(Notice notice) {
		return noticeDao.writeNotice(notice);
	}

	public Integer updateNotice(Notice notice) {
		return noticeDao.updateNotice(notice);
	}

	public Integer deleteNotice(String notice_id) {
		return noticeDao.deleteNotice(notice_id);
	}

	public void uploadAttachedFile() {
		// TODO Auto-generated method stub

	}

	public void downloadAttachedFile() {
		// TODO Auto-generated method stub

	}

}

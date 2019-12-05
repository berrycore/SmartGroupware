package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Notice;
import util.Utils;

@Repository
public class NoticeDaoImpl implements NoticeDao {

	@Autowired
	private SqlSession session;
	
	public List<Notice> getNoticeList() {
		return session.selectList("mapper.myMapper.getNoticeList");
	}

	public Notice selectNotice(String notice_id) {
		return session.selectOne("mapper.myMapper.selectNotice", notice_id);
	}

	public Integer writeNotice(Notice notice) {
		notice.setNotice_date_regist(Utils.generateCurrentTime());
		return session.insert("mapper.myMapper.writeNotice", notice);
	}

	public Integer updateNotice(Notice notice) {
		return session.update("mapper.myMapper.updateNotice", notice);
	}

	public Integer deleteNotice(String notice_id) {
		return session.delete("mapper.myMapper.deleteNotice", notice_id);
	}
	
	public Integer getNoticeCount() {
		return session.selectOne("mapper.myMapper.getNoticeCount");
	}

	public Notice getNoticeRecentOne() {
		return session.selectOne("mapper.myMapper.getNoticeRecentOne");
	}
}

package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Reply;
import util.Utils;

@Repository
public class ReplyDaoImpl implements ReplyDao {
	
	@Autowired
	private SqlSession session;

	public List<Reply> getReplyList(String parent_board_id) {
		return session.selectList("mapper.myMapper.getReplyList", parent_board_id);
	}

	public void insertReply(Reply reply) {
		reply.setReply_date_regist(Utils.generateCurrentTime());
		session.insert("mapper.myMapper.insertReply", reply);
	}

	public Integer getReplyCount(String parent_board_id) {
		return session.selectOne("mapper.myMapper.getReplyCount", parent_board_id);
	}

}

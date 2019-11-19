package dao;

import java.util.List;

import model.Reply;

public interface ReplyDao {

	List<Reply> getReplyList(String parent_board_id);
	void insertReply(Reply reply);
}

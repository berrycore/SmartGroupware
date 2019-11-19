package logic;

import java.util.List;

import model.Board;
import model.Notice;
import model.Reply;

public interface BoardCatalog {
	List<Board> getBoardList();
	List<Reply> getReplyList(String board_id);
	
	Notice selectNotice(String board_id);
	void writeNotice(Board board);
	void updateNotice(Board board);
	void deleteNotice(String board_id);
	
	void uploadAttachedFile();
	void downloadAttachedFile();
	
	// reply add
	void insertReply(Reply reply);
	
}

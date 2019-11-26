package logic;

import java.util.List;

import model.Board;
import model.Reply;

public interface BoardCatalog {
	List<Board> getBoardList();
	List<Reply> getReplyList(String board_id);
	
	Board selectBoard(String board_id);
	Integer writeBoard(Board board);
	void updateBoard(Board board);
	void deleteBoard(String board_id);
	
	void uploadAttachedFile();
	void downloadAttachedFile();
	
	// reply add
	void insertReply(Reply reply);
	
}

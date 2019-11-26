package logic;

import java.util.List;

import model.Board;
import model.Reply;

public interface BoardCatalog {
	
	// board
	List<Board> getBoardList();
		
	Board selectBoard(String board_id);
	Integer writeBoard(Board board);
	void updateBoard(Board board);
	void deleteBoard(String board_id);
	
	void uploadAttachedFile();
	void downloadAttachedFile();
	
	
	// reply add
	List<Reply> getReplyList(String parent_board_id);
	void insertReply(Reply reply);
	
}

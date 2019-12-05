package logic;

import java.util.List;

import model.Board;
import model.Pagination;
import model.Reply;

public interface BoardCatalog {
	
	// board
	List<Board> getBoardListAndReplyCount(Pagination pagination);
		
	Board selectBoard(String board_id);
	Integer writeBoard(Board board);
	void updateBoard(Board board);
	void deleteBoard(String board_id);
	Integer getBoardCount();
	
	void uploadAttachedFile();
	void downloadAttachedFile();
	
	
	// reply add
	List<Reply> getReplyList(String parent_board_id);
	void insertReply(Reply reply);
	Integer getReplyCount(String parent_board_id);
	
	// dash board
	List<Board> getBoardListRecent(Integer count);
}

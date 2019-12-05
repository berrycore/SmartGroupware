package dao;

import java.util.List;

import model.Board;
import model.Pagination;

public interface BoardDao {

	List<Board> getBoardListAndReplyCount(Pagination pagination);
	Board selectBoard(String board_id);
	Integer writeBoard(Board board);
	void updateBoard(Board board);
	void deleteBoard(String baord_id);
	List<Board> getBoardListRecent(Integer count);
	Integer getBoardCount();
}

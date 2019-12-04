package dao;

import java.util.List;

import model.Board;

public interface BoardDao {

	List<Board> getBoardListAndReplyCount();
	Board selectBoard(String board_id);
	Integer writeBoard(Board board);
	void updateBoard(Board board);
	void deleteBoard(String baord_id);
	List<Board> getBoardListRecent(Integer count);
}

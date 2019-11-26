package dao;

import java.util.List;

import model.Board;

public interface BoardDao {

	List<Board> getBoardList();
	Board selectBoard(String board_id);
	Integer writeBoard(Board board);
	void updateBoard(Board board);
	void deleteBoard(String baord_id);
}

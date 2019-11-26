package dao;

import java.util.List;

import model.Board;
import model.Notice;

public interface BoardDao {

	List<Board> getBoardList();
	Notice selectBoard(String board_id);
	Integer writeBoard(Board board);
	void updateBoard(Board board);
	void deleteBoard(String baord_id);
}

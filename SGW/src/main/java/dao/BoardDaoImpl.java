package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Board;
import model.Notice;
import util.Utils;

@Repository
public class BoardDaoImpl implements BoardDao {
	
	@Autowired
	private SqlSession session;

	public List<Board> getBoardList() {
		// TODO Auto-generated method stub
		return null;
	}

	public Notice selectBoard(String board_id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Integer writeBoard(Board board) {
		board.setBoard_date_regist(Utils.generateCurrentTime());
		return session.insert("mapper.myMapper.writeBoard", board);
	}

	public void updateBoard(Board board) {
		// TODO Auto-generated method stub

	}

	public void deleteBoard(String baord_id) {
		// TODO Auto-generated method stub

	}

}

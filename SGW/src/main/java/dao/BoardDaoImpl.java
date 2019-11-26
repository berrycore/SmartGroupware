package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Board;
import util.Utils;

@Repository
public class BoardDaoImpl implements BoardDao {
	
	@Autowired
	private SqlSession session;

	public List<Board> getBoardListAndReplyCount() {
		return session.selectList("mapper.myMapper.getBoardListAndReplyCount");
	}

	public Board selectBoard(String board_id) {
		Integer id = Integer.parseInt(board_id);
		return session.selectOne("mapper.myMapper.selectBoard", id);
	}

	public Integer writeBoard(Board board) {
		board.setBoard_date_regist(Utils.generateCurrentTime());
		System.out.println(board.toString());
		return session.insert("mapper.myMapper.writeBoard", board);
	}

	public void updateBoard(Board board) {
		// TODO Auto-generated method stub

	}

	public void deleteBoard(String baord_id) {
		// TODO Auto-generated method stub

	}

}

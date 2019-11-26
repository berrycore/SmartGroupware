package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BoardDao;
import model.Board;
import model.Notice;
import model.Reply;

@Service
public class BoardCatalogImpl implements BoardCatalog {

	@Autowired
	private BoardDao boardDao;
	
	public List<Board> getBoardList() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Reply> getReplyList(String board_id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Notice selectBoard(String board_id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Integer writeBoard(Board board) {
		return boardDao.writeBoard(board);
	}

	public void updateBoard(Board board) {
		// TODO Auto-generated method stub
		
	}

	public void deleteBoard(String board_id) {
		// TODO Auto-generated method stub
		
	}

	public void uploadAttachedFile() {
		// TODO Auto-generated method stub
		
	}

	public void downloadAttachedFile() {
		// TODO Auto-generated method stub
		
	}

	public void insertReply(Reply reply) {
		// TODO Auto-generated method stub
		
	}

	

}

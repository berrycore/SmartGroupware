package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BoardDao;
import dao.ReplyDao;
import model.Board;
import model.Reply;

@Service
public class BoardCatalogImpl implements BoardCatalog {

	@Autowired
	private BoardDao boardDao;
	
	@Autowired
	private ReplyDao replyDao;
	
	public List<Board> getBoardList() {
		return boardDao.getBoardList();
	}

	public Board selectBoard(String board_id) {
		return boardDao.selectBoard(board_id);
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
	
	public List<Reply> getReplyList(String board_id) {
		return replyDao.getReplyList(board_id);
	}
	
	public void insertReply(Reply reply) {
		replyDao.insertReply(reply);
	}
}

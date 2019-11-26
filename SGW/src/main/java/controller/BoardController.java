package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logic.BoardCatalog;
import model.Board;
import model.Reply;
import model.User;
import validator.BoardValidator;
import validator.ReplyValidator;

@Controller
public class BoardController {
	
	@Autowired
	private BoardValidator boardValidator;
	
	@Autowired
	private ReplyValidator replyValidator;
	
	@Autowired
	private BoardCatalog boardCatalog;

	@RequestMapping(value="/board/NoticeListView.html")
	public ModelAndView showNoticeList() {
		System.out.println("showNoticeList");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home/board/NoticeListView");
		return mav;
	}
	
	@RequestMapping(value="/board/TeamBoardListView.html")
	public ModelAndView showTeamBoardList() {
		System.out.println("showTeamBoardList");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home/board/TeamBoardListView");
		
		List<Board> boardList = boardCatalog.getBoardListAndReplyCount();
		System.out.println(boardList);
		mav.addObject("boardList", boardList);
		return mav;
	}
	
	@RequestMapping(value="/board/BoardWrite.html")
	public ModelAndView boardWrite(HttpServletRequest request, Board board, BindingResult br) {
		System.out.println("boardWrite : " + board.toString());
		
		ModelAndView mav = new ModelAndView();
		
		boardValidator.validate(board, br);
		
		if( br.hasErrors()) {
			mav.setViewName("home/board/BoardWrite");
			return mav;
		}else {
			User you = (User)request.getSession().getAttribute("loginUser");
			System.out.println(you);
			board.setUser_id(you.getUser_id());
			board.setBoard_writer_name(you.getUser_name());
			board.setUser(you);
			boardCatalog.writeBoard(board);
			
			mav.setViewName("home/board/BoardWriteSuccess");
			return mav;	
		}
	}
	
	@RequestMapping(value="/board/TeamBoardView.html")
	public ModelAndView boardView(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home/board/TeamBoardView");
		
		// board
		String board_id = request.getParameter("board_id");
		Board board = boardCatalog.selectBoard(board_id);
		mav.addObject("board", board);
		
		// reply
		List<Reply> replyList = boardCatalog.getReplyList(board_id);
		mav.addObject("replyList", replyList);
		
		return mav;
	}
	
	@RequestMapping(value="/board/appendReply.html", method=RequestMethod.POST)
	public ModelAndView appendReply(HttpServletRequest request, Reply reply, BindingResult br) {
		System.out.println("appendReply : ");
		ModelAndView mav = new ModelAndView();
		
		
		// board
		String board_id = request.getParameter("board_id");
		System.out.println("board_id : " + board_id);
		Board board = boardCatalog.selectBoard(board_id);
		mav.addObject("board", board);
		mav.addObject("board_id", board_id);
		
		// reply
		List<Reply> replyList = boardCatalog.getReplyList(board_id);
		mav.addObject("replyList", replyList);
			
		replyValidator.validate(reply, br);
		
		if( br.hasErrors()) {
			mav.setViewName("home/board/TeamBoardView");
			return mav;
		}else {
			User user =(User)request.getSession().getAttribute("loginUser");
			String reply_writer_name = user.getUser_name();
			
			reply.setParent_board_id(board_id);
			reply.setReply_writer_name(reply_writer_name);
			boardCatalog.insertReply(reply);
			
			mav.setViewName("home/board/ReplyAppendSuccess");
			mav.addObject("msg", "등록 되었습니다");
			mav.addObject("board_id", board_id);
			return mav;
		}
	}
	
}

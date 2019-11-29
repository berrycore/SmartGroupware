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
import logic.NoticeCatalog;
import model.Board;
import model.Notice;
import model.Reply;
import model.SgwAdmin;
import model.User;
import validator.BoardValidator;
import validator.NoticeValidator;
import validator.ReplyValidator;

@Controller
public class BoardController {
	
	@Autowired
	private BoardValidator boardValidator;
	
	@Autowired
	private ReplyValidator replyValidator;
	
	@Autowired
	private NoticeValidator noticeValidator;
	
	@Autowired
	private BoardCatalog boardCatalog;
	
	@Autowired
	private NoticeCatalog noticeCatalog;

	@RequestMapping(value="/board/NoticeListView.html", method=RequestMethod.GET)
	public ModelAndView showNoticeList() {
		System.out.println("showNoticeList : GET ");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home/board/NoticeListView");
		
		List<Notice> noticeList = noticeCatalog.getNoticeList();
		
		if( noticeList.isEmpty()) {
			mav.addObject("noResult", "yes");
			return mav;
		}else {
			mav.addObject("noticeList", noticeList);
			return mav;
		}
	}
	
	@RequestMapping(value="/board/writeNotice.html", method=RequestMethod.GET)
	public ModelAndView writeNotice(HttpServletRequest request) {
		System.out.println("writeNotice : GET");
		
		SgwAdmin admin = (SgwAdmin)request.getSession().getAttribute("authorizedAdmin");
		if( admin == null ) {
			ModelAndView mav = new ModelAndView("redirect:/manage/loginAdmin.html");		
			mav.addObject("msg","관리자 로그인이 필요합니다");
			return mav;
		}else {
			ModelAndView mav = new ModelAndView("home/board/NoticeWrite");
			mav.addObject("sgwAdmin", admin);
			return mav;	
		}
	}
	
	@RequestMapping(value="/board/writeNotice.html", method=RequestMethod.POST)
	public ModelAndView writeNotice(HttpServletRequest request, Notice notice, BindingResult br) {
		System.out.println("writeNotice : POST");
		ModelAndView mav = new ModelAndView();
		
		noticeValidator.validate(notice, br);
		
		if(br.hasErrors()) {
			mav.setViewName("home/board/NoticeWrite");
			return mav;
		}else {
			
			SgwAdmin sgwAdmin = (SgwAdmin)request.getSession().getAttribute("authorizedAdmin");
						
			notice.setAdmin_id( sgwAdmin.getAdmin_id());
			notice.setNotice_writer_name( sgwAdmin.getAdmin_name());
			if( notice.getNotice_attached_file_name() == null || notice.getNotice_attached_file_name().equals("")) {
				notice.setNotice_attached_file_name("-");	
			}
			
			Integer result = noticeCatalog.writeNotice(notice);
			if( result == 1 ) {
				mav.addObject("msg", "등록 되었습니다");
			}else {
				mav.addObject("msg", "오류가 발생하였습니다");
			}
			
			mav.setViewName("home/board/NoticeWriteSuccess");
			return mav;
		}
	}
	
	@RequestMapping(value="/board/NoticeView.html", method=RequestMethod.GET)
	public ModelAndView noticeView(String notice_id) {
		System.out.println("noticeView : GET : notice_id : " + notice_id);
		
		ModelAndView mav = new ModelAndView("home/board/NoticeView");
		
		Notice notice = noticeCatalog.selectNotice(notice_id);
		
		mav.addObject("notice", notice);
		return mav;
	}
	
	@RequestMapping(value="/board/NoticeUpdate.html", method=RequestMethod.GET)
	public ModelAndView noticeUpdate(HttpServletRequest request, String notice_id, Notice notice, BindingResult br) {
		System.out.println("noticeUpdate : GET : notice_id : " + notice_id);
		System.out.println("noticeUpdate : GET : notice : " + notice);
		
		SgwAdmin sgwAdmin = (SgwAdmin)request.getSession().getAttribute("authorizedAdmin");
		if( sgwAdmin == null ) {
			ModelAndView mav = new ModelAndView("redirect:/manage/loginAdmin.html");		
			mav.addObject("msg","관리자 로그인이 필요합니다");
			return mav;
		}else {
			Notice reLoadedNotice = noticeCatalog.selectNotice(notice_id);
			ModelAndView mav = new ModelAndView("home/board/NoticeUpdate");
			mav.addObject("notice_id", notice_id);
			mav.addObject("notice", reLoadedNotice);
			return mav;	
		}
	}
	
	@RequestMapping(value="/board/NoticeUpdate.html", method=RequestMethod.POST)
	public ModelAndView noticeUpdate(HttpServletRequest request, Notice notice, BindingResult br) {
		System.out.println("noticeUpdate : POST : " + notice);
				
		noticeValidator.validate(notice, br);
		
		if(br.hasErrors()) {
			ModelAndView mav = new ModelAndView("home/board/NoticeUpdate");
			return mav;
		}else {
			ModelAndView mav = new ModelAndView("home/board/NoticeUpdateSuccess");
			
			SgwAdmin sgwAdmin = (SgwAdmin)request.getSession().getAttribute("authorizedAdmin");
						
			notice.setAdmin_id( sgwAdmin.getAdmin_id());
			notice.setNotice_writer_name( sgwAdmin.getAdmin_name());
			if( notice.getNotice_attached_file_name() == null || notice.getNotice_attached_file_name().equals("")) {
				notice.setNotice_attached_file_name("-");	
			}
			
			Integer result = noticeCatalog.updateNotice(notice);
			
			if( result == 1 ) {
				mav.addObject("msg", "수정 되었습니다");
			}else {
				mav.addObject("msg", "오류가 발생하였습니다");
			}
			
			return mav;
		}
	}
	
	@RequestMapping(value="/board/NoticeDelete.html", method=RequestMethod.GET)
	public ModelAndView noticeDelete(HttpServletRequest request, String notice_id) {
		System.out.println("noticeDelete : GET : notice_id : " + notice_id);
		
		SgwAdmin sgwAdmin = (SgwAdmin)request.getSession().getAttribute("authorizedAdmin");
		if( sgwAdmin == null ) {
			ModelAndView mav = new ModelAndView("redirect:/manage/loginAdmin.html");		
			mav.addObject("msg","관리자 로그인이 필요합니다");
			return mav;
		}else {
			Integer result = noticeCatalog.deleteNotice(notice_id);
			
			ModelAndView mav = new ModelAndView("home/board/NoticeDeleteSuccess");
			
			if( result == 1 ) {
				mav.addObject("msg", "삭제 되었습니다");
				return mav;
			}else {
				mav.addObject("msg", "오류가 발생하였습니다");
				return mav;	
			}
			
				
		}
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

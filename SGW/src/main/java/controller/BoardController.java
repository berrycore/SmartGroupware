package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.BoardCatalog;
import model.Board;
import model.User;
import validator.BoardValidator;

@Controller
public class BoardController {
	
	@Autowired
	private BoardValidator boardValidator;
	
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
			
			// TODO : db
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
}

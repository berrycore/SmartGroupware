package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logic.BoardCatalog;
import logic.DocumentsCatalog;
import logic.ManageCatalog;
import logic.NoticeCatalog;
import logic.SgwAdminCatalog;
import logic.UserAccountCatalog;
import model.Board;
import model.ElecDocument;
import model.Notice;
import model.SgwAdmin;
import model.Team;
import model.User;

@Controller
public class MainController {
	
	@Autowired
	private NoticeCatalog noticeCatalog;
	
	@Autowired
	private BoardCatalog boardCatalog;
	
	@Autowired
	private DocumentsCatalog documentsCatalog;
			
	@Autowired
	private SgwAdminCatalog sgwAdminCatalog;
	
	@Autowired
	private UserAccountCatalog userAccountCatalog;
	
	@Autowired
	private ManageCatalog manageCatalog;
	

	@RequestMapping(value="/main.html", method=RequestMethod.GET)
	public ModelAndView viewMain() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		return mav;
	}
	
	@RequestMapping(value="/main_admin.html", method=RequestMethod.GET)
	public ModelAndView viewMainAdmin() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main_admin");
		return mav;
	}
	
	@RequestMapping(value="/dash.html", method=RequestMethod.GET)
	public ModelAndView dash(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("dash");
		
		User user = (User)request.getSession().getAttribute("loginUser");
		
		Notice notice = noticeCatalog.getNoticeRecentOne();
		if( notice != null) {
			mav.addObject("notice", notice);	
		}
		
		List<Board> boardList = boardCatalog.getBoardListRecent(3);
		if( boardList.isEmpty()) {
			mav.addObject("board_noResult", "yes");
		}else {
			mav.addObject("boardList", boardList);
		}
		
		List<ElecDocument> documentList = documentsCatalog.selectProcessingDocumentList(user.getUser_id());
		if( documentList.isEmpty()) {
			mav.addObject("document_noResult", "yes");
		}else {
			mav.addObject("documentList", documentList);
		}
		
		return mav;
	}
	
	@RequestMapping(value="/dash_admin.html", method=RequestMethod.GET)
	public ModelAndView dash_admin(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("dash_admin");
		
		List<SgwAdmin> sgwAdminList = sgwAdminCatalog.getAdminAccountList();
		if( sgwAdminList.isEmpty()) {
			mav.addObject("noResult_adminList", "yes");
		}else {
			mav.addObject("sgwAdminList", sgwAdminList);
		}
		
		List<User> userList = userAccountCatalog.getUserList();
		if( userList.isEmpty()) {
			mav.addObject("noResult_userList", "yes");
		}else {
			mav.addObject("userList", userList);	
		}
		//TODO /manage/teamList.html
		List<Team> teamList = manageCatalog.getTeamList();
		if( teamList.isEmpty()) {
			mav.addObject("noResult_teamList", "yes");
		}else {
			mav.addObject("teamList", teamList);
		}
		
		return mav;
	}
	
	@RequestMapping(value="/manage/teamList.html", method=RequestMethod.GET)
	public ModelAndView teamList(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("main_admin");
		
		List<Team> teamList = manageCatalog.getTeamList();
		if( teamList.isEmpty()) {
			mav.addObject("noResult", "yes");
		}else {
			mav.addObject("teamList", teamList);
		}
		
		mav.addObject("BODY", "/home/manage/TeamList.jsp");
		
		return mav;
	}
}

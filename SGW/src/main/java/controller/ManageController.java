package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.UserAccountCatalog;
import model.User;

@Controller
public class ManageController {

	@Autowired
	private UserAccountCatalog userAccountCatalog;
	
	@RequestMapping(value="/manage/userList.html")
	public ModelAndView userList() {
		ModelAndView mav = new ModelAndView("home/manage/UserList");
		List<User> userList = userAccountCatalog.getUserList();
		mav.addObject("userList", userList);
		return mav;
	}
	
	@RequestMapping(value="/manage/userAdd.html")
	public ModelAndView userAdd() {
		ModelAndView mav = new ModelAndView("home/manage/UserAdd");
		return mav;
	}
	
	@RequestMapping(value="/manage/teamCheck.html")
	public ModelAndView teamCheck() {
		System.out.println("teamCheck");
		ModelAndView mav = new ModelAndView("home/manage/TeamCheck");
		return mav;
	}
	
	@RequestMapping(value="/manage/positionCheck.html")
	public ModelAndView positionCheck() {
		System.out.println("positionCheck");
		ModelAndView mav = new ModelAndView("home/manage/PositionCheck");
		return mav;
	}
	
	@RequestMapping(value="/manage/managePermission.html")
	public ModelAndView managePermission() {
		System.out.println("managePermission");
		ModelAndView mav = new ModelAndView("home/manage/ManagePermission");
		return mav;
	}
}

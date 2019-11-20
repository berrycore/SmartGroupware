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
	
	@RequestMapping(value="/SGW/manage/userList.html")
	public ModelAndView userList() {
		System.out.println("ManagerController::userList() called");
		ModelAndView mav = new ModelAndView("home/manage/UserList");
		List<User> userList = userAccountCatalog.getUserList();
		mav.addObject("userList", userList);
		return mav;
	}
}

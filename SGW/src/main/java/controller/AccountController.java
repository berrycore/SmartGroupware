package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.User;

@Controller
public class AccountController {

	@RequestMapping(value="/account/myStatus.html", method=RequestMethod.GET )
	public ModelAndView showMyInfo(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("home/account/AccountStatusView");
		//User you = (User)request.getSession().getAttribute("loginUser");
		return mav;
	}
}

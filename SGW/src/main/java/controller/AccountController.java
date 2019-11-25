package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logic.UserAccountCatalog;
import model.User;
import validator.PasswordValidator;
import validator.PhoneNumberValidator;

@Controller
public class AccountController {

	@Autowired
	private UserAccountCatalog userAccountCatalog;
	
	@Autowired
	private PasswordValidator passwordValidator;
	
	@Autowired
	private PhoneNumberValidator phoneNumberValidator;
	
	@RequestMapping(value="/account/changePassword.html", method=RequestMethod.GET )
	public ModelAndView changePassword(HttpServletRequest request) {
		System.out.println("changePassword");
		ModelAndView mav = new ModelAndView("home/account/changePassword");
		
		if( request.getSession().getAttribute("loginUser") != null ) {
			String user_id = ((User)request.getSession().getAttribute("loginUser")).getUser_id();
			User you = userAccountCatalog.getUserByUserId(user_id);
			mav.addObject("you", you);
		}
		
		return mav;
	}
	
	@RequestMapping(value="/account/changePassword.html", method=RequestMethod.POST )
	public ModelAndView changePassword(HttpServletRequest request, User user, BindingResult br, String password_re) {
		System.out.println("changePassword : " + user.toString());
		System.out.println("changePassword : " + password_re);
		ModelAndView mav = new ModelAndView();
		
		passwordValidator.validate(user.getUser_password(), br);
		if( ! user.getUser_password().equals(password_re)){
			br.rejectValue("user_password", "error.notequal.user");
		}
		
		if(br.hasErrors()) {
			mav.setViewName("home/account/changePassword");
			if( request.getSession().getAttribute("loginUser") != null ) {
				String user_id = ((User)request.getSession().getAttribute("loginUser")).getUser_id();
				User you = userAccountCatalog.getUserByUserId(user_id);
				mav.addObject("you", you);
			}
			return mav;
		}else {
			User you = new User();
			you.setUser_id(((User)request.getSession().getAttribute("loginUser")).getUser_id());
			you.setUser_password( user.getUser_password());
			userAccountCatalog.updateUserPassword(you);
			mav.setViewName("home/account/changePasswordSuccess");
			return mav;
		}
	}
	
	@RequestMapping(value="/account/changeMyInfo.html", method=RequestMethod.GET)
	public ModelAndView changeMyInfo(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("home/account/changeMyInfo");
		if( request.getSession().getAttribute("loginUser") != null ) {
			String user_id = ((User)request.getSession().getAttribute("loginUser")).getUser_id();
			User you = userAccountCatalog.getUserByUserId(user_id);
			mav.addObject("you", you);
		}
		return mav;
	}
	
	@RequestMapping(value="/account/changeMyInfo.html", method=RequestMethod.POST)
	public ModelAndView changeMyInfo(HttpServletRequest request, User user, BindingResult br) {
		ModelAndView mav = new ModelAndView("home/account/changeMyInfo");
		
		phoneNumberValidator.validate(user.getUser_phone(), br);
		
		if( br.hasErrors() ) {
			return mav;
		}else {
			User you = new User();
			you.setUser_id(((User)request.getSession().getAttribute("loginUser")).getUser_id());
			you.setUser_phone( user.getUser_phone());
			you.setUser_description( user.getUser_description());
			userAccountCatalog.updateUserInfo(you);
			System.out.println("DB UPDATE !");
			mav.setViewName("home/account/changeMyInfoSuccess");
			return mav;	
		}				
	}
	
}

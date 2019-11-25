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

@Controller
public class AccountController {

	@Autowired
	private UserAccountCatalog userAccountCatalog;
	
	@Autowired
	private PasswordValidator passwordValidator;
	
	@RequestMapping(value="/account/showMyStatus.html", method=RequestMethod.GET )
	public ModelAndView showMyStatus(HttpServletRequest request) {
		System.out.println("showMyStatus");
		ModelAndView mav = new ModelAndView("home/account/AccountStatusView");
		
		if( request.getSession().getAttribute("loginUser") != null ) {
			String user_id = ((User)request.getSession().getAttribute("loginUser")).getUser_id();
			User you = userAccountCatalog.getUserByUserId(user_id);
			mav.addObject("you", you);
		}
		
		return mav;
	}
	
	@RequestMapping(value="/account/showMyStatus.html", method=RequestMethod.POST )
	public ModelAndView saveMyStatus(HttpServletRequest request, User user, BindingResult br, String password_re) {
		System.out.println("saveMyStatus : " + user.toString());
		System.out.println("saveMyStatus : " + password_re);
		ModelAndView mav = new ModelAndView();
		
		passwordValidator.validate(user.getUser_password(), br);
		if( ! user.getUser_password().equals(password_re)){
			br.rejectValue("user_password", "error.notequal.user");
		}
//		if( result == null || ! result.getUser_id().equals( "DM" + user.getUser_id())) {
//			br.rejectValue("user_id", "error.failed.user");
//			return mav;
		
		if(br.hasErrors()) {
			System.out.println("br has errors");
			mav.setViewName("home/account/AccountStatusView");
			if( request.getSession().getAttribute("loginUser") != null ) {
				String user_id = ((User)request.getSession().getAttribute("loginUser")).getUser_id();
				User you = userAccountCatalog.getUserByUserId(user_id);
				mav.addObject("you", you);
			}
			return mav;
		}else {
			
			System.out.println("br has not errors");
			mav.setViewName("home/account/AccountStatusSaveOK");
			return mav;
		}
	}
	
}

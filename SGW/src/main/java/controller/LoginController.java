package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logic.LoginCatalog;
import logic.ManageCatalog;
import logic.UserAccountCatalog;
import model.SgwAccess;
import model.User;
import util.Encrypter;
import validator.UserLoginValidator;

@Controller
public class LoginController {

	@Autowired
	private LoginCatalog loginCatalog;
	
	@Autowired
	private UserAccountCatalog userAccountCatalog;
	
	@Autowired
	private UserLoginValidator loginValidator;
	
	@Autowired
	private ManageCatalog manageCatalog;
	
		
	@RequestMapping(value="/login/loginUser.html", method=RequestMethod.POST)
	public ModelAndView loginUserTry(HttpServletRequest request, User user, BindingResult br) {
		System.out.println("loginUser : POST : " + user);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home/login/loginUser");
		
		loginValidator.validate(user, br);
		
		if(br.hasErrors()) {
			mav.getModel().putAll(br.getModel());
			return mav;
		}else {
			User result = loginCatalog.getUser( "DM" + user.getUser_id());
						
			if( result == null || ! result.getUser_id().equals( "DM" + user.getUser_id())) {
				br.rejectValue("user_id", "error.failed.user");
				return mav;
			}else if( ! result.getUser_password().equals( Encrypter.sha256(user.getUser_password())) ){
				br.rejectValue("user_password", "error.failed.user");
				return mav;
			}else {
				if( result.getUser_date_last_pw_changed() == null || result.getUser_date_last_pw_changed().equals("")) {
					mav.addObject("firstLogin", "yes");
					mav.setViewName("home/account/changePassword");
				}else {
					mav.setViewName("home/login/loginUserSuccess");	
				}
				
				userAccountCatalog.updateUserLastLoginTime(result.getUser_id());
				User you = userAccountCatalog.getUserByUserId(result.getUser_id());
				request.getSession().setAttribute("loginUser", you);
				mav.addObject("you", you);
				
				SgwAccess sgwAccess = manageCatalog.getSgwAccess( you.getUser_id());
				request.getSession().setAttribute("sgwAccess", sgwAccess);
				
				return mav;	
			}
		}		
	}
	
	@RequestMapping(value="/login/loginUser.html", method=RequestMethod.GET)
	public ModelAndView loginUserShow(){
		System.out.println("loginUser : GET ");
		ModelAndView mav = new ModelAndView("home/login/loginUser");
		return mav;
	}
	
	@RequestMapping(value="/login/logoutUser.html")
	public ModelAndView logoutUser(HttpServletRequest request) {
		
		request.getSession().removeAttribute("loginUser");
		ModelAndView mav = new ModelAndView("home/login/logoutUserSuccess");
		mav.addObject("msg", "로그아웃 되었습니다");
		return mav;
	}
	
	@RequestMapping(value="/login/logoutAdmin.html")
	public ModelAndView logoutAdmin(HttpServletRequest request) {
		
		request.getSession().removeAttribute("authorizedAdmin");
		ModelAndView mav = new ModelAndView("home/login/logoutAdminSuccess");
		mav.addObject("msg", "로그아웃 되었습니다");
		return mav;
	}
}

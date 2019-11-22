package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logic.LoginCatalog;
import model.User;
import util.Encrypter;
import validator.LoginValidator;

@Controller
public class LoginController {

	@Autowired
	private LoginCatalog loginCatalog;
	
	@Autowired
	private LoginValidator loginValidator;
	
		
	@RequestMapping(value="/login/loginUser.html", method=RequestMethod.POST)
	public ModelAndView loginUserTry(User user, BindingResult br) {
		System.out.println("loginUser : POST : " + user);
		ModelAndView mav = new ModelAndView("home/login/loginUser");
		
		loginValidator.validate(user, br);
		
		if(br.hasErrors()) {
			return mav;
		}
		
		User result = loginCatalog.getUser( "DM" + user.getUser_id());
		
		if( ! result.getUser_id().equals( "DM" + user.getUser_id())) {
			br.rejectValue("user_id", "error.failed.user");
			return mav;
		}else if( ! result.getUser_password().equals( Encrypter.sha256(user.getUser_password())) ){
			br.rejectValue("user_password", "error.failed.user");
			return mav;
		}else {
			mav.setViewName("home/login/loginUserSuccess");
			return mav;	
		}
	}
	
	@RequestMapping(value="/login/loginUser.html", method=RequestMethod.GET)
	public ModelAndView loginUserShow(){
		ModelAndView mav = new ModelAndView("home/login/loginUser");
		return mav;
	}
}

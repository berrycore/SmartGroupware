package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	

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
	
	@RequestMapping(value="/dash.html")
	public ModelAndView dash(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("dash");
		return mav;
	}
	
	@RequestMapping(value="/dash_admin.html")
	public ModelAndView dash_admin(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("dash_admin");
		return mav;
	}
}

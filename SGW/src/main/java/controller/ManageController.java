package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logic.CompanyCatalog;
import logic.ManageCatalog;
import logic.UserAccountCatalog;
import model.Company;
import model.Position;
import model.Team;
import model.User;
import validator.UserAddValidator;

@Controller
public class ManageController {

	@Autowired
	private UserAccountCatalog userAccountCatalog;
	
	@Autowired
	private ManageCatalog manageCatalog;
	
	@Autowired
	private CompanyCatalog companyCatalog;
	
	@Autowired
	private UserAddValidator userAddValidator;
	
	@RequestMapping(value="/manage/userList.html")
	public ModelAndView userList() {
		ModelAndView mav = new ModelAndView("home/manage/UserList");
		List<User> userList = userAccountCatalog.getUserList();
		mav.addObject("userList", userList);
		return mav;
	}
	
	@RequestMapping(value="/manage/userDuplicationCheck.html")
	public ModelAndView userDuplicationCheck(User user, BindingResult br) {
		System.out.println("userDuplicationCheck :: " + user);
		ModelAndView mav = new ModelAndView("home/manage/UserDuplicationCheck");
		Company company = companyCatalog.getCompany("DM");
		mav.addObject("company_id", company.getCompany_id());
		
		userAddValidator.validate(user, br);
		
		if( br.hasErrors()) {
			mav.getModel().putAll(br.getModel());
			return mav;
		}
		
		Integer cnt = userAccountCatalog.getUserAccountCount(company.getCompany_id() + user.getUser_id());
		
		if(user.getUser_id() != null) {
			if( cnt > 0) {
				mav.addObject("isDuplicated", "yes");
			}else {
				mav.addObject("isDuplicated", "no");
				mav.addObject("user_id" , user.getUser_id());
			}	
		}
		
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
		
		List<Team> teamList = manageCatalog.getTeamList();
		
		ModelAndView mav = new ModelAndView("home/manage/TeamCheck");
		mav.addObject("teamList", teamList);
		return mav;
	}
	
	
	@RequestMapping(value="/manage/teamAdd.html", method=RequestMethod.POST)
	public ModelAndView teamAdd(String team_id, String team_name, String team_parent_id){
		System.out.println("teamAdd");
		Team team = new Team();
		team.setTeam_id(team_id);
		team.setTeam_name(team_name);
		team.setTeam_parent_id(team_parent_id);
		manageCatalog.insertTeam(team);
		return new ModelAndView("home/manage/TeamAddResult");
	}
	
	@RequestMapping(value="/manage/positionCheck.html", method=RequestMethod.GET)
	public ModelAndView positionCheck() {
		System.out.println("positionCheck");
		
		List<Position> positionList = manageCatalog.getPositionList();
		
		ModelAndView mav = new ModelAndView("home/manage/PositionCheck");
		mav.addObject("positionList", positionList);
		return mav;
	}
	
	@RequestMapping(value="/manage/positionAdd.html", method=RequestMethod.POST)
	public ModelAndView positionAdd(String position_name) {
		System.out.println("positionAdd : " + position_name);
		Position position = new Position();
		position.setPosition_name(position_name);
		manageCatalog.insertPosition(position);
		return new ModelAndView("home/manage/PositionAddResult");
	}
	
	@RequestMapping(value="/manage/managePermission.html")
	public ModelAndView managePermission() {
		System.out.println("managePermission");
		ModelAndView mav = new ModelAndView("home/manage/ManagePermission");
		return mav;
	}
}

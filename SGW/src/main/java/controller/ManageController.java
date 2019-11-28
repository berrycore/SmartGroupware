package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logic.CompanyCatalog;
import logic.ManageCatalog;
import logic.SgwAdminCatalog;
import logic.UserAccountCatalog;
import model.Company;
import model.Position;
import model.SgwAdmin;
import model.Team;
import model.User;
import validator.AdminAccountValidator;
import validator.AdminDuplicationValidator;
import validator.AdminLoginValidator;
import validator.UserEntryValidator;
import validator.UserIdValidator;

@Controller
public class ManageController {

	@Autowired
	private UserAccountCatalog userAccountCatalog;
	
	@Autowired
	private ManageCatalog manageCatalog;
	
	@Autowired
	private CompanyCatalog companyCatalog;
	
	@Autowired
	private SgwAdminCatalog sgwAdminCatalog;
	
	@Autowired
	private UserIdValidator userIdValidator;
	
	@Autowired
	private AdminAccountValidator adminAccountValidator;
	
	@Autowired
	private AdminDuplicationValidator adminDuplicationValidator;
	
	@Autowired
	private AdminLoginValidator adminLoginValidator;
	
	@Autowired
	private UserEntryValidator userEntryValidator;
	
	
	@RequestMapping(value="/manage/userList.html")
	public ModelAndView userList() {
		ModelAndView mav = new ModelAndView("home/manage/UserList");
		List<User> userList = userAccountCatalog.getUserList();
		for(User u : userList) {
			u.toString();
		}
		mav.addObject("userList", userList);
		return mav;
	}
	
	@RequestMapping(value="/manage/userDuplicationCheck.html")
	public ModelAndView userDuplicationCheck(User user, BindingResult br) {
		System.out.println("userDuplicationCheck :: " + user);
		ModelAndView mav = new ModelAndView("home/manage/UserDuplicationCheck");
		Company company = companyCatalog.getCompany("DM");
		mav.addObject("company_id", company.getCompany_id());
		
		userIdValidator.validate(user, br);
		
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
	
	
	@RequestMapping(value="/manage/userAdd.html", method=RequestMethod.GET )
	public ModelAndView userAdd(User user) {
		ModelAndView mav = new ModelAndView();
		System.out.println("userAdd : GET : " + user);
		mav.setViewName("home/manage/UserAdd");
		return mav;
	}
	
	@RequestMapping(value="/manage/userAdd.html", method=RequestMethod.POST)
	public ModelAndView userAdd(User user, BindingResult br) {
		System.out.println("userAdd : POST : " + user);
		ModelAndView mav = new ModelAndView();
		userEntryValidator.validate(user, br);
		if( br.hasErrors()) {
			mav.getModel().putAll(br.getModel());
			mav.setViewName("home/manage/UserAdd");
			return mav;
		}
		
		mav.setViewName("home/manage/UserAddResult");
		
		Integer result = userAccountCatalog.insertUser(user);
		if( result == 1) {
			mav.addObject("result", "등록되었습니다");
		}else {
			mav.addObject("result", "오류가 발생했습니다");
		}
		return mav;
	}
	
	
	@RequestMapping(value="/manage/userAddResult.html")
	public ModelAndView userAddRegist(User user) {
		ModelAndView mav = new ModelAndView("home/manage/UserAddResult");
		System.out.println("userAdd : "+ user);
		mav.addObject("user", user);
		return mav;
	}
	
	@RequestMapping(value="/manage/teamCheck.html", method=RequestMethod.GET)
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
	
	@RequestMapping(value="/manage/managePermission.html", method=RequestMethod.GET)
	public ModelAndView managePermission(User user) {
		System.out.println("managePermission");
		ModelAndView mav = new ModelAndView("home/manage/ManagePermission");
		return mav;
	}
	
	/* Admin */
	
	@RequestMapping(value="/manage/loginAdmin.html", method=RequestMethod.GET)
	public ModelAndView loginAdmin() {
		System.out.println("loginAdmin : GET");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home/manage/AdminLogin");
		return mav;
	}
	
	@RequestMapping(value="/manage/loginAdmin.html", method=RequestMethod.POST)
	public ModelAndView loginAdmin(HttpServletRequest request, SgwAdmin sgwAdmin, BindingResult br) {
		System.out.println("loginAdmin : POST");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home/manage/AdminLogin");
		
		adminLoginValidator.validate(sgwAdmin, br);
		
		if( br.hasErrors()) {
			mav.getModel().putAll(br.getModel());
			return mav;
		}else {
			
			// DB 조회
			
			mav.setViewName("home/admin/AdminLoginSuccess");
			return mav;	
		}
	}
	
	@RequestMapping(value="/manage/adminAccountList.html", method=RequestMethod.GET)
	public ModelAndView adminAccountList() {
		System.out.println("adminAccountList : GET");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home/manage/AdminAccountList");
		
		// TODO: DB
		List<SgwAdmin> sgwAdminList = sgwAdminCatalog.getAdminAccountList();
		if(sgwAdminList.isEmpty()) {
			mav.addObject("noResult", "yes");
			return mav;
		}else {
			System.out.println(sgwAdminList);
			mav.addObject("sgwAdminList", sgwAdminList);
			return mav;	
		}
	}
	
	@RequestMapping(value="/manage/adminAccountAdd.html", method=RequestMethod.GET)
	public ModelAndView adminAccountAdd() {
		System.out.println("adminAccountAdd : GET");
		
		SgwAdmin sgwAdmin = new SgwAdmin();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home/manage/AdminAccountAdd");
		mav.addObject("sgwAdmin", sgwAdmin);
		
		return mav;
	}
	
	@RequestMapping(value="/manage/adminAccountAdd.html", method=RequestMethod.POST)
	public ModelAndView adminAccountAdd(HttpServletRequest request, SgwAdmin sgwAdmin, BindingResult br) {
		System.out.println("adminAccountAdd : POST");
		ModelAndView mav = new ModelAndView();
		
		adminAccountValidator.validate(sgwAdmin, br);
		
		if(br.hasErrors()) {
			mav.setViewName("home/manage/AdminAccountAdd");
			mav.getModel().putAll(br.getModel());
			return mav;
		}else {
			sgwAdminCatalog.insertSgwAdmin(sgwAdmin);
			mav.setViewName("home/manage/AdminAccountAddSuccess");
			mav.addObject("msg", "정상적으로 등록 되었습니다");
			return mav;
		}
	}
	
	@RequestMapping(value="/manage/adminDuplicationCheck.html")
	public ModelAndView adminDuplicationCheck(SgwAdmin sgwAdmin, BindingResult br) {
		System.out.println("adminDuplicationCheck :: " + sgwAdmin);
		ModelAndView mav = new ModelAndView("home/manage/AdminDuplicationCheck");
		
		adminDuplicationValidator.validate(sgwAdmin, br);
		
		if( br.hasErrors()) {
			mav.getModel().putAll(br.getModel());
			return mav;
		}else {
			Integer cnt = sgwAdminCatalog.getAdminAccountCnt(sgwAdmin.getAdmin_id());
			
			if(sgwAdmin.getAdmin_id() != null) {
				if( cnt > 0) {
					mav.addObject("isDuplicated", "yes");
				}else {
					mav.addObject("isDuplicated", "no");
					mav.addObject("user_id" , sgwAdmin.getAdmin_id());
				}
			}
			return mav;
		}
	}
}

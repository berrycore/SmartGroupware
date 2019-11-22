package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CompanyDao;
import dao.UserDao;
import model.User;
import util.Encrypter;

@Service
public class UserAccountCatalogImpl implements UserAccountCatalog {

	@Autowired
	private UserDao userDao;
	
	@Autowired
	private CompanyDao companyDao;
	
	public User getUserAccount(String user_id) {
		return userDao.getUserAccount(user_id);
	}
	
	public Integer getUserAccountCount(String user_id) {
		return userDao.getUserAccountCount(user_id);
	}

	public void updateUserAccount(User user) {
		userDao.updateUserAccount(user);
	}

	public List<User> getUserList() {
		return userDao.getUserList();
	}

	public Integer insertUser(User user) {
		//TODO : user_password	
		StringBuffer buffer = new StringBuffer().append("#Gw").append(user.getUser_id().substring(2, 8));
		String origin = buffer.toString();
		String encrypted = Encrypter.sha256(origin);
		user.setUser_password(encrypted);
		
		//TODO : user_email
		user.setUser_email( user.getUser_id() + "@" + companyDao.getCompany("DM").getCompany_domain() );
		// 3. user_employement -> Next?
		// 4. user_retirement -> Next?
		
		return userDao.insertUser(user);
	}


}

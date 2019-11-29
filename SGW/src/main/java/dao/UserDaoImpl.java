package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.User;
import util.Encrypter;
import util.Utils;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SqlSession session;
	
	/**
	 * @deprecated
	 * */
	public User getUserAccount(String user_id) {
		return session.selectOne("mapper.myMapper.getUserAccount", user_id);
	}
	
	public List<User> getUserAccountByName(String user_name) {
		return session.selectList("mapper.myMapper.getUserAccountByName", user_name);
	}
	
	public Integer getUserAccountCount(String user_id) {
		return session.selectOne("mapper.myMapper.getUserAccountCount", user_id);
	}

	public Integer updateUserInfoByUser(User user) {
		return session.update("mapper.myMapper.updateUserInfoByUser", user);
	}
	
	public Integer updateUserInfoByAdmin(User user) {
		return session.update("mapper.myMapper.updateUserInfoByAdmin", user);
	}
	
	public void updateUserPassword(User user) {
		
		// user_password encryption
		String encrypted = Encrypter.sha256(user.getUser_password());
		user.setUser_password(encrypted);
		
		// user_passwowrd last changed
		String currentTime = Utils.generateCurrentTime();
		user.setUser_date_last_pw_changed(currentTime);
		
		session.update("mapper.myMapper.updateUserPassword", user);
	}

	public List<User> getUserList() {
		List<User> userList = session.selectList("mapper.myMapper.getUserList");
		return userList;
	}

	public User getUserByUserId(String user_id) {
		return session.selectOne( "mapper.myMapper.getUserByUserId", user_id);
	}

	public Integer insertUser(User user) {
		return session.insert("mapper.myMapper.insertUser", user);
	}

	public void updateUserLastLoginTime(String user_id) {
		User user = new User();
		user.setUser_id(user_id);
		user.setUser_date_last_login(Utils.generateCurrentTime());
		session.update("mapper.myMapper.updateUserLastLoginTime", user);
	}

}

package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.SgwAccess;
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
		Integer resultCodeUser = session.insert("mapper.myMapper.insertUser", user);
		Integer resultCodeAccess = insertSgwAccess(user);
		if( resultCodeUser == 1 && resultCodeAccess == 1) {
			return 1;
		}else {
			return -1;
		}
	}
	
	private Integer insertSgwAccess(User user) {
		SgwAccess sgwAccess = new SgwAccess();
		sgwAccess.setUser_id( user.getUser_id());
		sgwAccess.setAccess_email("deny");
		sgwAccess.setAccess_elec_document("deny");
		sgwAccess.setAccess_board("deny");
		return session.insert("mapper.myMapper.insertSgwAccess", sgwAccess);
	}

	public void updateUserLastLoginTime(String user_id) {
		User user = new User();
		user.setUser_id(user_id);
		user.setUser_date_last_login(Utils.generateCurrentTime());
		session.update("mapper.myMapper.updateUserLastLoginTime", user);
	}

}

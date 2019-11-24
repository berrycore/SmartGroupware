package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SqlSession session;
	
	public User getUserAccount(String user_id) {
		return session.selectOne("mapper.myMapper.getUserAccount", user_id);
	}
	
	public Integer getUserAccountCount(String user_id) {
		return session.selectOne("mapper.myMapper.getUserAccountCount", user_id);
	}

	public void updateUserAccount(User user) {
		// TODO : mapper setting
		session.update("mapper.myMapper.updateUserAccount", user);
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

}

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
		return session.selectList("mapper.myMapper.getUserList");
	}

}

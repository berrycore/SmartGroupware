package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.SgwAccess;

@Repository
public class SgwAccessDaoImpl implements SgwAccessDao {

	@Autowired
	private SqlSession session;
	
	public List<SgwAccess> getSgwAccessList() {
		return session.selectList("mapper.myMapper.getSgwAccessList");
	}

	public SgwAccess getSgwAccess(String user_id) {
		return session.selectOne("mapper.myMapper.getSgwAccess", user_id);
	}
	
	public void updateSgwAccess(SgwAccess sgwAccess) {
		session.update("mapper.myMapper.updateSgwAccess", sgwAccess);
	}
}

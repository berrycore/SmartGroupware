package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Team;

@Repository
public class TeamDaoImpl implements TeamDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<Team> getTeamList() {
		return sqlSession.selectList("mapper.myMapper.getTeamList");
	}
	
	public Integer getTeamCount() {
		return sqlSession.selectOne("mapper.myMapper.getTeamCount");
	}	

	public Team selectTeam(String team_name) {
		// TODO Auto-generated method stub
		return null;
	}

	public void insertTeam(Team team) {
		sqlSession.insert("mapper.myMapper.insertTeam", team);
	}

}

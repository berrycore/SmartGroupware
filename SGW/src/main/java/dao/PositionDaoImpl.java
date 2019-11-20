package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Position;

@Repository
public class PositionDaoImpl implements PositionDao {
	
	@Autowired
	private SqlSession sqlSession;

	public List<Position> getPositionList() {
		return sqlSession.selectList("mapper.myMapper.getPositionList");
	}

	public Position selectPosition(String position_name) {
		// TODO Auto-generated method stub
		return null;
	}

	public void insertPosition(Position position) {
		sqlSession.insert("mapper.myMapper.insertPosition", position);
	}
	
	public Integer getPositionCount() {
		return sqlSession.selectOne("mapper.myMapper.getPositionCount");
	}

	public void updatePosition(Position position) {
		// TODO Auto-generated method stub

	}



}

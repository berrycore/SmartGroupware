package dao;

import java.util.List;

import model.Position;

public interface PositionDao {

	List<Position> getPositionList();
	Position selectPosition(String position_name);
	Integer getPositionCount();
	void insertPosition(Position position);
	void updatePosition(Position position);
	
}

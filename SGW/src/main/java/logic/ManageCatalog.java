package logic;

import java.util.List;

import model.Position;
import model.SgwAccess;
import model.Team;
import model.User;

public interface ManageCatalog {

	void updateAdminAccessip(String addresses);
	
	void insertUserAccount(User user);
	
	void selectUserId(String user_id);
	void selectTeamId(String team_name);
	void selectPosition(String position_name);
	List<Position> getPositionList();
	
	void insertTeam(Team team);
	List<Team> getTeamList();
	
	void insertPosition(Position position);
	
	List<SgwAccess> getSgwAccessList();
	void updateSgwAccess(SgwAccess sgwAccess);
}

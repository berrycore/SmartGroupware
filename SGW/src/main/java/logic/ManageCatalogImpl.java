package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.PositionDao;
import dao.SgwAccessDao;
import dao.TeamDao;
import model.Position;
import model.SgwAccess;
import model.Team;
import model.User;

@Service
public class ManageCatalogImpl implements ManageCatalog {
	
	@Autowired
	private PositionDao positionDao;
	
	@Autowired
	private TeamDao teamDao;
	
	@Autowired
	private SgwAccessDao sgwAccessDao;

	public void updateAdminAccessip(String addresses) {
		// TODO Auto-generated method stub

	}

	public void insertUserAccount(User user) {
		// TODO Auto-generated method stub

	}

	public void selectUserId(String user_id) {
		// TODO Auto-generated method stub

	}

	public void selectTeamId(String team_name) {
		// TODO Auto-generated method stub

	}

	public void selectPosition(String position_name) {
		// TODO Auto-generated method stub

	}
	

	public List<Position> getPositionList() {
		return positionDao.getPositionList();
	}

	public void insertTeam(Team team) {
		
		// team_id
		Integer teamCount = teamDao.getTeamCount();
		if( teamCount == null || teamCount == 0 ) {
			teamCount = 1;
		}else {
			teamCount++;
		}
		String team_id = "T" + teamCount;
		team.setTeam_id(team_id);
		
		// team_parent_id 
		if( team.getTeam_parent_id() == null || team.getTeam_parent_id().equals("")) {
			team.setTeam_parent_id(team_id);
		}
		
		teamDao.insertTeam(team);
	}
	
	public List<Team> getTeamList() {
		return teamDao.getTeamList();
	}

	public void insertPosition(Position position) {
		Integer positionCount = positionDao.getPositionCount();
		if( positionCount == null || positionCount == 0) {
			positionCount = 1;
		}else {
			positionCount++;
		}
		String position_id = "P" + positionCount;
		position.setPosition_id(position_id);
		positionDao.insertPosition(position);
	}

	public List<SgwAccess> getSgwAccessList() {
		return sgwAccessDao.getSgwAccessList();
	}

	public SgwAccess getSgwAccess(String user_id) {
		return sgwAccessDao.getSgwAccess(user_id);
	}
	
	public void updateSgwAccess(SgwAccess sgwAccess) {
		sgwAccessDao.updateSgwAccess(sgwAccess);
	}
}

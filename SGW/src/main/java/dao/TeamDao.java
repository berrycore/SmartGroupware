package dao;

import java.util.List;

import model.Team;

public interface TeamDao {

	List<Team> getTeamList();
	Team selectTeam(String team_name);
	void insertTeam(Team team);
}

package dao;

import java.util.List;

import model.Team;

public interface TeamDao {

	List<Team> getTeamList();
	Integer getTeamCount();
	Team selectTeam(String team_name);
	void insertTeam(Team team);
}

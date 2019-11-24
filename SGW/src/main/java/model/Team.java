package model;

public class Team {

	private String team_id;
	private String team_name;
	private String team_parent_id;

	public String getTeam_id() {
		return team_id;
	}

	public void setTeam_id(String team_id) {
		this.team_id = team_id;
	}

	public String getTeam_name() {
		return team_name;
	}

	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}

	public String getTeam_parent_id() {
		return team_parent_id;
	}

	public void setTeam_parent_id(String team_parent_id) {
		this.team_parent_id = team_parent_id;
	}

	@Override
	public String toString() {
		return "Team [team_id=" + team_id + ", team_name=" + team_name + ", team_parent_id=" + team_parent_id + "]";
	}

}

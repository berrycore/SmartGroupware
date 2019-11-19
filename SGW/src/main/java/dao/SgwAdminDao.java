package dao;

import model.SgwAdmin;

public interface SgwAdminDao {

	String getPassword(String admin_id);
	Integer getAdminIdCnt(String admin_id);
	void insertSgwAdmin(SgwAdmin admin);
	SgwAdmin getUser(String admin_id);
}

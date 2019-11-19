package logic;

import model.SgwAdmin;

public interface SgwAdminCatalog {

	String getPassword(String admin_id);
	Integer getAdminIdCnt(String admin_id);
	void insertSgwAdmin(SgwAdmin admin);
	SgwAdmin getUser(String admin_id);
}

package logic;

import java.util.List;

import model.SgwAdmin;

public interface SgwAdminCatalog {

	String getPassword(String admin_id);
	Integer getAdminAccountCnt(String admin_id);
	void insertSgwAdmin(SgwAdmin admin);
	SgwAdmin getAdminAccount(String admin_id);
	List<SgwAdmin> getAdminAccountList();
	void updateAdminLastLoginTime(String admin_id);
	void changeAdminPassword(SgwAdmin sgwAdmin);
}

package dao;

import java.util.List;

import model.SgwAdmin;

public interface SgwAdminDao {

	String getPassword(String admin_id);
	Integer getAdminAccountCnt(String admin_id);
	void insertSgwAdmin(SgwAdmin admin);
	SgwAdmin getAdminAccount(String admin_id);
	List<SgwAdmin> getAdminAccountList();
}

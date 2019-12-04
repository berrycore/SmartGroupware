package dao;

import java.util.List;

import model.SgwAccess;

public interface SgwAccessDao {

	List<SgwAccess> getSgwAccessList();
	SgwAccess getSgwAccess(String user_id);
	void updateSgwAccess(SgwAccess sgwAccess);
}

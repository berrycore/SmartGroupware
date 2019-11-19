package dao;

import java.util.List;

import model.SgwAccess;

public interface SgwAccessDao {

	List<SgwAccess> getSgwAccessList();
	void updateSgwAccess(SgwAccess sgwAccess);
}

package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.SgwAdminDao;
import model.SgwAdmin;

@Service
public class SgwAdminCatalogImpl implements SgwAdminCatalog {

	@Autowired
	private SgwAdminDao sgwAdminDao;
	
	public String getPassword(String admin_id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Integer getAdminAccountCnt(String admin_id) {
		return sgwAdminDao.getAdminAccountCnt(admin_id);
	}

	public void insertSgwAdmin(SgwAdmin admin) {
		// TODO Auto-generated method stub

	}

	public SgwAdmin getAdminAccount(String admin_id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<SgwAdmin> getAdminAccountList() {
		// TODO Auto-generated method stub
		return null;
	}

}

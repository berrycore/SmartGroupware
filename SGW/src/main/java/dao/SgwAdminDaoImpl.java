package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.SgwAdmin;
import util.Encrypter;
import util.Utils;

@Repository
public class SgwAdminDaoImpl implements SgwAdminDao {

	@Autowired
	private SqlSession session;
	
	public String getPassword(String admin_id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Integer getAdminAccountCnt(String admin_id) {
		return session.selectOne("mapper.myMapper.getAdminAccountCnt", admin_id);
	}

	public void insertSgwAdmin(SgwAdmin admin) {
		String originPwd = admin.getAdmin_password();
		admin.setAdmin_date_created(Utils.generateCurrentTime());
		admin.setAdmin_password(Encrypter.sha256(originPwd));
		session.insert("mapper.myMapper.insertSgwAdmin", admin);
	}

	public SgwAdmin getAdminAccount(String admin_id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<SgwAdmin> getAdminAccountList() {
		return session.selectList("mapper.myMapper.getAdminAccountList");
	}

}

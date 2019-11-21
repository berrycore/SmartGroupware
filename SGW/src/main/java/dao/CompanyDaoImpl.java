package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Company;

@Repository
public class CompanyDaoImpl implements CompanyDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<Company> getCompanyList() {
		// TODO Auto-generated method stub
		return null;
	}

	public Company getCompany(String company_id) {
		return sqlSession.selectOne("mapper.myMapper.getCompany", company_id);
	}

	public void updateCompany(Company company) {
		// TODO Auto-generated method stub

	}

}

package dao;

import java.util.List;

import model.Company;

public interface CompanyDao {

	List<Company> getCompanyList();
	Company selectCompany(String company_id);
	void updateCompany(Company company);
}

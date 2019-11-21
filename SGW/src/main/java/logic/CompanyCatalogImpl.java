package logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CompanyDao;
import model.Company;

@Service
public class CompanyCatalogImpl implements CompanyCatalog {

	@Autowired
	private CompanyDao companyDao;
	
	public Company getCompany(String company_id) {
		return companyDao.getCompany(company_id);
	}

}

package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.ElecDocument;
import model.User;
import util.Utils;

@Repository
public class ElecDocumentDaoImpl implements ElecDocumentDao {
	
	@Autowired
	private SqlSession session;

	public List<ElecDocument> getElecDocumentList() {
		// TODO Auto-generated method stub
		return null;
	}

	public ElecDocument selectElecDocument(String document_id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Integer writeNewElecDocument(ElecDocument document) {
		User writer =  getUserByUserId( document.getFirst_id());
		
		String company_id = "DM";
		String team_name = writer.getTeam().getTeam_name();
		String year = Utils.generateCurrentYear();
		Integer documentCount = session.selectOne("mapper.myMapper.getDocumentCount");
		
		StringBuilder sb = new StringBuilder();
		sb.append(company_id).append("-").append(team_name).append("-").append(year).append("-").append(documentCount+1);
		
		if( document.getSecond_id() == null) {
			document.setSecond_approval_date("-");
			document.setSecond_status("unnecessary");
		}else {
			document.setSecond_approval_date( Utils.generateCurrentTime());
		}
		
		if( document.getThird_id() == null) {
			document.setThird_approval_date("-");
			document.setThird_status("unnecessary");
		}else {
			document.setThird_approval_date( Utils.generateCurrentTime());
		}
		
		if( document.getFourth_id() == null) {
			document.setFourth_approval_date("-");
			document.setFourth_status("unnecessary");
		}else {
			document.setFourth_approval_date( Utils.generateCurrentTime());
		}
		
		if( document.getDocument_attached_file_name() == null || document.getDocument_attached_file_name().isEmpty()) {
			document.setDocument_attached_file_name("-");
		}
				
		document.setFirst_approval_date( Utils.generateCurrentTime());
		document.setFinal_approval_date("-");
		document.setDocument_id( sb.toString());
		document.setFirst_status("completed");
		document.setFinal_status("onProcessing");
		return session.insert("mapper.myMapper.writeNewElecDocument", document);
	}
	
	private User getUserByUserId(String user_id) {
		return session.selectOne("mapper.myMapper.getUserByUserId", user_id);
	}

	public Integer updateElecDocument(ElecDocument document) {
		// TODO Auto-generated method stub
		return null;
	}

}

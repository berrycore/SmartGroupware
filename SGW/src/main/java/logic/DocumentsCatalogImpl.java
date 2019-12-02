package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ElecDocumentDao;
import model.ElecDocument;

@Service
public class DocumentsCatalogImpl implements DocumentsCatalog {

	@Autowired
	private ElecDocumentDao documentsDao;
	
	public List<ElecDocument> getElecDocumentList() {
		// TODO Auto-generated method stub
		return null;
	}

	public ElecDocument selectElecDocument(String document_id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Integer writeNewElecDocument(ElecDocument document) {
		return documentsDao.writeNewElecDocument(document);
	}

	public Integer updateElecDocument(ElecDocument document) {
		// TODO Auto-generated method stub
		return null;
	}

	public void uploadAttachedFile() {
		// TODO Auto-generated method stub

	}

	public void downloadAttachedFile() {
		// TODO Auto-generated method stub

	}

}

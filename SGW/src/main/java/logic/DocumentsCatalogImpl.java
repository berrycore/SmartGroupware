package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ElecDocumentDao;
import model.DocumentSign;
import model.ElecDocument;
import model.Pagination;

@Service
public class DocumentsCatalogImpl implements DocumentsCatalog {

	@Autowired
	private ElecDocumentDao documentsDao;
	
	public List<ElecDocument> getElecDocumentList(Pagination pagination) {
		return documentsDao.getElecDocumentList(pagination);
	}

	public ElecDocument selectElecDocument(String document_id) {
		return documentsDao.selectElecDocument(document_id);
	}

	public Integer writeNewElecDocument(ElecDocument document) {
		return documentsDao.writeNewElecDocument(document);
	}

	public void approveElecDocument(DocumentSign documentSign) {
		documentsDao.approveElecDocument(documentSign);		
	}

	public void rejectElecDocument(DocumentSign documentSign) {
		documentsDao.rejectElecDocument(documentSign);
	}
	
	public List<ElecDocument> selectProcessingDocumentList(String user_id) {
		return documentsDao.selectProcessingDocumentList(user_id);
	}

	public List<ElecDocument> selectCompletedDocumentList(Pagination pagination) {
		return documentsDao.selectCompletedDocumentList(pagination);
	}

	public Integer getElecDocumentCount() {
		return documentsDao.getElecDocumentCount();
	}

	public Integer getCompletedElecDocumentCount() {
		return documentsDao.getCompletedElecDocumentCount();
	}
}

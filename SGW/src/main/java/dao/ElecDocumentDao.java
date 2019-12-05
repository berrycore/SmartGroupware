package dao;

import java.util.List;

import model.DocumentSign;
import model.ElecDocument;
import model.Pagination;

public interface ElecDocumentDao {

	List<ElecDocument> getElecDocumentList(Pagination pagination);
	ElecDocument selectElecDocument(String document_id);
	Integer writeNewElecDocument(ElecDocument document);
	void approveElecDocument(DocumentSign documentSign);
	void rejectElecDocument(DocumentSign documentSign);
	List<ElecDocument> selectProcessingDocumentList(String user_id);
	List<ElecDocument> selectCompletedDocumentList(Pagination pagination);
	Integer getCompletedElecDocumentCount();
	Integer getElecDocumentCount();
}

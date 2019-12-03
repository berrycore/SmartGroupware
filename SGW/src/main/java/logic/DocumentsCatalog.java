package logic;

import java.util.List;

import model.DocumentSign;
import model.ElecDocument;

public interface DocumentsCatalog {

	List<ElecDocument> getElecDocumentList();
	ElecDocument selectElecDocument(String document_id);
	Integer writeNewElecDocument(ElecDocument document);
	void approveElecDocument(DocumentSign documentSign);
	void rejectElecDocument(DocumentSign documentSign);
	List<ElecDocument> selectProcessingDocumentList(String user_id);
	List<ElecDocument> selectCompletedDocumentList(String user_id);
}

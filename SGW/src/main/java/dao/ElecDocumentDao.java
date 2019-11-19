package dao;

import java.util.List;

import model.ElecDocument;

public interface ElecDocumentDao {

	List<ElecDocument> getElecDocumentList();
	ElecDocument selectElecDocument(String document_id);
	void insertElecDocument(ElecDocument document);
	void updateElecDocument(ElecDocument document);
}

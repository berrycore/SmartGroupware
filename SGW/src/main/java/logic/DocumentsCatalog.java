package logic;

import java.util.List;

import model.ElecDocument;

public interface DocumentsCatalog {

	List<ElecDocument> getElecDocumentList();
	ElecDocument selectElecDocument(String document_id);
	Integer writeNewElecDocument(ElecDocument document);
	Integer updateElecDocument(ElecDocument document);
	
	void uploadAttachedFile();
	void downloadAttachedFile();
	
}

package logic;

import java.util.List;

import model.ElecDocument;
import model.User;

public interface DocumentsCatalog {

	List<ElecDocument> getElecDocumentList();
	ElecDocument selectElecDocument(String document_id);
	User getUsers(String user_name);
	void insertElecDocument(ElecDocument document);
	void updateElecDocument(ElecDocument document);
	
	void uploadAttachedFile();
	void downloadAttachedFile();
	
}

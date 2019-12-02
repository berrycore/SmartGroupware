package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logic.DocumentsCatalog;
import logic.UserAccountCatalog;
import model.DocumentSign;
import model.ElecDocument;
import model.User;
import validator.DocumentValidator;

@Controller
public class ApprovalController {
	
	@Autowired
	private DocumentValidator documentValidator;
		
	@Autowired
	private UserAccountCatalog userAccountCatalog;
	
	@Autowired
	private DocumentsCatalog documentsCatalog;

	@RequestMapping(value="/approval/DocumentWriteNew.html", method=RequestMethod.GET)
	public ModelAndView documentWriteNew(HttpServletRequest request, ElecDocument elecDocument, BindingResult br) {
		System.out.println("documentWriteNew");
		ModelAndView mav = new ModelAndView("main");
		mav.addObject("BODY", "/home/approval/DocumentWriteNew.jsp");
		User user = (User)request.getSession().getAttribute("loginUser");
		mav.addObject("user", user);
		System.out.println(user.toString());
		return mav;
	}
	
	@RequestMapping(value="/approval/DocumentWriteNewSubmit.html", method=RequestMethod.POST)
	public ModelAndView documentWriteNewSubmit(HttpServletRequest request, ElecDocument elecDocument, BindingResult br) {
		System.out.println("documentWriteNewSubmit");
		ModelAndView mav = new ModelAndView();
		User user = (User)request.getSession().getAttribute("loginUser");
		mav.addObject("user", user);
		
		System.out.println(elecDocument);
		
		documentValidator.validate(elecDocument, br);
		
		if( br.hasErrors()) {
			mav.setViewName("main");
			mav.addObject("BODY", "/home/approval/DocumentWriteNew.jsp");
			return mav;
		}else {
			// TODO : DB 처리
			elecDocument.setFirst_id( user.getUser_id() );
			elecDocument.setFirst_name( user.getUser_name() );
			Integer result = documentsCatalog.writeNewElecDocument(elecDocument);
			
			if( result == 1) {
				mav.addObject("msg", "결재 문서가 등록되었습니다");	
			}else {
				mav.addObject("msg", "오류가 발생하였습니다");
			}
			
			mav.setViewName("home/approval/DocumentWriteNewSuccess");
			return mav;
		}
	}
	
	@RequestMapping(value="/approval/UserSearch.html", method=RequestMethod.GET)
	public ModelAndView userSearch() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home/approval/UserSearch");
		return mav;	
	}
	
	@RequestMapping(value="/approval/UserSearch.html", method=RequestMethod.POST)
	public ModelAndView userSearch(HttpServletRequest request, String user_name) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home/approval/UserSearch");
		
		System.out.println("userSearch : POST : " + user_name);
				
		List<User> userList = userAccountCatalog.getUserAccountByName(user_name);
		if( userList.isEmpty()) {
			mav.addObject("hasResult", "no");
		}else {
			mav.addObject("hasResult", "yes");
			mav.addObject("userList", userList);
		}
		return mav;		
	}
	
	@RequestMapping(value="/approval/getElecDocumentList.html", method=RequestMethod.GET)
	public ModelAndView getElecDocumentList() {
		ModelAndView mav = new ModelAndView("main");
		mav.addObject("BODY", "/home/approval/DocumentListView.jsp");
		
		List<ElecDocument> documentList = documentsCatalog.getElecDocumentList();
		if( documentList.isEmpty()) {
			mav.addObject("hasResult", "no");
			return mav;
		}else {
			mav.addObject("hasResult", "yes");
			mav.addObject("documentList", documentList);
			return mav;
		}
	}
	
	@RequestMapping(value="/approval/DocumentView.html", method=RequestMethod.GET)
	public ModelAndView selectDocument(String document_id) {
		ModelAndView mav = new ModelAndView();
		ElecDocument elecDocument = documentsCatalog.selectElecDocument(document_id);
		mav.addObject("elecDocument", elecDocument);
		mav.setViewName("home/approval/DocumentView");
		return mav;
	}
	
	@RequestMapping(value="/approval/ProcessingDocumentView.html", method=RequestMethod.GET)
	public ModelAndView onProcessingDocumentView(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("main");
		mav.addObject("BODY", "/home/approval/ProcessingDocumentView.jsp");
		
		User user = (User)request.getSession().getAttribute("loginUser");
		List<ElecDocument> documentList = documentsCatalog.selectProcessingDocumentList(user.getUser_id());
		if( documentList.isEmpty()) {
			mav.addObject("hasResult", "no");
			return mav;
		}else {
			mav.addObject("hasResult", "yes");
			mav.addObject("documentList", documentList);
			return mav;
		}
	}
	
	@RequestMapping(value="/approval/DocumentApproval.html", method=RequestMethod.GET)
	public ModelAndView documentApproval(HttpServletRequest request, String document_id) {
		ModelAndView mav = new ModelAndView();
		ElecDocument elecDocument = documentsCatalog.selectElecDocument(document_id);
		mav.addObject("elecDocument", elecDocument);
		mav.setViewName("home/approval/DocumentApproval");
		return mav;
	}
	
	@RequestMapping(value="/approval/ApproveDocument.html", method=RequestMethod.POST)
	public ModelAndView approveDocument(HttpServletRequest request, String document_id) {
		ModelAndView mav = new ModelAndView();
		User user = (User)request.getSession().getAttribute("loginUser");
		DocumentSign documentSign = new DocumentSign();
		documentSign.setUser_id(user.getUser_id());
		documentSign.setDocument_id(document_id);
		documentsCatalog.approveElecDocument(documentSign);
		mav.setViewName("home/approval/ApproveDocumentResult");
		mav.addObject("msg", "승인 되었습니다");
		return mav;
	}
	
	@RequestMapping(value="/approval/RejectDocument.html", method=RequestMethod.POST)
	public ModelAndView rejectDocument(HttpServletRequest request, String document_id) {
		ModelAndView mav = new ModelAndView();
		User user = (User)request.getSession().getAttribute("loginUser");
		DocumentSign documentSign = new DocumentSign();
		documentSign.setUser_id(user.getUser_id());
		documentSign.setDocument_id(document_id);
		documentsCatalog.rejectElecDocument(documentSign);
		mav.setViewName("home/approval/RejectDocumentResult");
		mav.addObject("msg", "부결 되었습니다");
		return mav;
	}
}
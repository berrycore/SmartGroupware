<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/css/w3.css">
<link rel="stylesheet" href="/css/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title><spring:message code="sgw.dash.title"/></title>
</head>
<body class="w3-dark-grey">
<div class="container">
  <h3> &nbsp; <spring:message code="sgw.dash.title" /> </h3>
  
  
  	<c:if test="${notice != null }">
  			<div class="w3-card-4">
  				 <div class="card-header">
  				 	<h5><span class="badge badge-danger"><spring:message code="sgw.dash.notice"/></span></h5>
  				 	<h5> ${notice.notice_title } </h5>
  				 </div>
		      <div class="card-body">
		    		<p class="card-text">${notice.notice_content }</p>
		      </div>
		      <div class="card-footer">
      			<a href="board/NoticeListView.html" class="btn btn-secondary btn-sm btn-block"><spring:message code="sgw.dash.goto"/></a>
      		</div>
		    </div>
  	</c:if>
  
  	<br/>
  	   
    <c:if test="${sessionScope.sgwAccess.access_elec_document eq 'allow' }" >
	    <div class="w3-card-4">
	    	<div class="card-header">
	    		<h5><span class="badge btn btn-warning"><spring:message code="sgw.dash.awaiting.document"/></span></h5>
	    	</div>
	      <div class="card-body">
	    		<p class="card-text">
	   			  <c:choose>
				    	<c:when test="${document_noResult eq 'yes' }">
				    		<spring:message code="sgw.dash.teamboard.noresult"/>
				    	</c:when>
				    	<c:otherwise>
				    		<c:forEach items="${documentList }" var="document">
				    			<p>${document.document_title }</p>
				    		</c:forEach>
				    	</c:otherwise>
				    </c:choose>
	    		</p>
	      </div>
	      <div class="card-footer">
	      		<a href="/approval/ProcessingDocumentView.html" class="btn btn-secondary btn-sm btn-block"><spring:message code="sgw.dash.goto"/></a>
	      </div>
	    </div>
    </c:if>
    
    <br/>
    
    <c:if test="${sessionScope.sgwAccess.access_board eq 'allow' }">
	    	<c:choose>
	    	<c:when test="${board_noResult eq 'yes' }">
			    		<div class="w3-card-4">
					    	<div class="card-header">
					    		<h5><span class="badge badge-primary"><spring:message code="sgw.dash.team"/></span> </h5>
					    	</div>
					      <div class="card-body">
					    		<p class="card-text"> <spring:message code="sgw.dash.teamboard.noresult"/></p>
					      </div>
					      <div class="card-footer">
					      		<a href="/board/TeamBoardListView.html" class="btn btn-secondary btn-sm btn-block"><spring:message code="sgw.dash.goto"/></a>
					      </div>
					    </div>
					    <br/>
	    	</c:when>
	    	<c:otherwise>
	    			<c:forEach items="${boardList}" var="board">
			    				<div class="w3-card-4">
							    	<div class="card-header">
							    		<h5><span class="badge badge-primary"><spring:message code="sgw.dash.team"/></span> <span class="badge badge-dark"> ${board.board_writer_name }</span> </h5>
							    		<h5>${board.board_title }</h5> 
							    	</div>
							      <div class="card-body">
							    		<p class="card-text"> ${board.board_content }</p>
							      </div>
							      <div class="card-footer">
							      		<a href="/board/TeamBoardView.html?board_id=${board.board_id}" class="btn btn-secondary btn-sm btn-block"><spring:message code="sgw.dash.goto"/></a>
							      </div>
							    </div>
							    <br/>
	    			</c:forEach>
	    	</c:otherwise>	
	    </c:choose>
    </c:if>
    
    <c:if test="${sessionScope.sgwAccess.access_email eq 'allow' }">
		    <div class="w3-card-4">
		    	<div class="card-header">
		    		<h5><span class="badge badge-danger"><spring:message code="sgw.dash.email"/></span></h5>
		    	</div>
		      <div class="card-body">
		    		<p class="card-text">서비스 준비중</p>
		      </div>
		      <div class="card-footer">
		      </div>
	    	</div>
    	</c:if>
   <br/>
 </div>
	  

</body>
</html>
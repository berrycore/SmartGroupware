<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/css/w3.css">
<link rel="stylesheet" href="/css/bootstrap.css">
<script src="/ckeditor/ckeditor.js"></script>


<title><spring:message code="sgw.board.view" /></title>
</head>
<body class="w3-dark-grey">
<div class="w3-container">
    <div class="w3-card-4"> 
      <header class="w3-container">
        <h1>${board.board_title}</h1>
      </header>
  
  	 <div class="w3-container">
  		
  			<form:form action="appendReply.html" method="post" modelAttribute="reply">
  			 			 
  			 <div class="input-group mb-3">
  			    <div class="input-group-prepend">
  			       <span class="input-group-text"><spring:message code="sgw.board.writer" /></span>
  			       <input type="text" class="form-control bg-light" value="${board.board_writer_name}" readonly="readonly">
  			    </div>
  			    <div class="input-group-prepend">
  			       <span class="input-group-text"><spring:message code="sgw.board.registdate" /></span>
  			       <input type="text" class="form-control bg-light" value="${board.board_date_regist}" readonly="readonly">
  			    </div>
  			    <div class="input-group-prepend">
  			       <span class="input-group-text"><spring:message code="sgw.board.attachedfile" /></span>
  			       <input type="text" class="form-control bg-light" value="" readonly="readonly">
  			    </div>
  			    
  			 </div>
  			
  			<div>
  				<div class="form-group">
  					<textarea id="editor" name="board_content" readonly="readonly" >${board.board_content }</textarea>
  				</div>
  			</div>
  
  			<p><spring:message code="sgw.board.comment" /> </p>
  			
  			<!-- comment here -->
  			<c:forEach items="${replyList }" var="reply">
  				<div class="card" style="margin-top: 5px">
  				    <h5 class="card-header">
  				    	<span class="badge badge-dark" style="margin-left: 5px">${reply.reply_writer_name }</span>
  				    	<span class="badge badge-info" style="margin-left: 5px">${reply.reply_date_regist }</span>
  				    </h5>
  				    <div class="card-body">
  				      <p class="card-text">${reply.reply_content }</p>
  				  </div>
  				</div>
  			</c:forEach>
  			
  			<!-- leave comment -->
  				<input type="hidden" name="board_id" value="${board.board_id }" />
  				<div class="card" style="margin-top:10px">
  					<h6 class="card-header"><spring:message code="sgw.board.leave.comment" /></h6>
  					<div class="card-body">
  						<textarea class="form-control" rows="3" name="reply_content" placeholder='<spring:message code="sgw.board.please.input.comment" />'></textarea>
  						<font color="red"><form:errors path="reply_content"/></font>
  						<button type="submit" class="btn btn-primary" style="margin-top: 2px"><spring:message code="sgw.board.leave.comment" /></button>
  					</div>
  				</div>
  			</form:form>
    </div>
    <div class="w3-container">
      <footer class="mb-3 mt-3">
          <button type="button" class="btn btn-warning"><spring:message code="sgw.board.delete" /></button>
          <a href="/board/TeamBoardListView.html"> <button type="button" class="btn btn-primary"><spring:message code="sgw.notice.to.list" /></button> </a>
      </footer>
    </div>
  </div>
</div>	
	<!-- ckeditor -->
	<script>
		CKEDITOR.replace("editor", {
			width:'100%',
			height:'160px',
			removePlugins: 'elementspath',
			toolbar:[]
		});

		
	</script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<title><spring:message code="sgw.notice.view" /></title>
</head>
<body class="w3-dark-grey">

<div class="w3-container">
		
    <div class="w3-card-4"> 
      <header class="w3-container">
        <h1>${notice.notice_title}</h1>
      </header>
			
		<div class="w3-container">
    	 
			 <div class="input-group mb-3">
			    <div class="input-group-prepend">
			       <span class="input-group-text"><spring:message code="sgw.notice.writer" /></span>
			       <input type="text" class="form-control bg-light" value="${notice.notice_writer_name}" readonly="readonly">
			    </div>
			    <div class="input-group-prepend">
			       <span class="input-group-text"><spring:message code="sgw.notice.registdate" /></span>
			       <input type="text" class="form-control bg-light" value="${notice.notice_date_regist}" readonly="readonly">
			    </div>
<!-- 			    <div class="input-group-prepend"> -->
<%-- 			       <span class="input-group-text"><spring:message code="sgw.notice.attachedfile" /></span> --%>
<%-- 			       <input type="text" class="form-control bg-light" value="${notice.notice_attached_file_name }" readonly="readonly"> --%>
<!-- 			    </div> -->
			    
			 </div>
			
  			<div>
  				<div class="form-group">
  					<textarea id="editor" name="notice_content" readonly="readonly" >${notice.notice_content }</textarea>
  				</div>
  			</div>
			
			
      </div>
      
      <div class="w3-container">
        <footer class="mb-3">
<%--           <button type="button" class="btn btn-success" ><spring:message code="sgw.notice.close" /></button> --%>
          <a href="/board/NoticeDelete.html?notice_id=${notice.notice_id}"> <button type="button" class="btn btn-danger" ><spring:message code="sgw.notice.delete" /></button></a>
          <a href="/board/NoticeUpdate.html?notice_id=${notice.notice_id}"> <button type="button" class="btn btn-warning" ><spring:message code="sgw.notice.modify" /></button></a>
          <a href="/board/NoticeListView.html"> <button type="button" class="btn btn-light" ><spring:message code="sgw.notice.to.list" /></button> </a>  
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
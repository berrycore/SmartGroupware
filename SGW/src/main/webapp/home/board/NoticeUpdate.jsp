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
<link rel="stylesheet" href="../css/w3.css">
<link rel="stylesheet" href="../css/bootstrap.css">
<script src="../ckeditor/ckeditor.js"></script>

<title>공지사항 수정</title>
</head>
<body>

	<div class="w3-container">
		<form:form modelAttribute="notice" action="/board/NoticeUpdate.html" method="post">
			<form:hidden path="notice_id"/>
			<h2>공지사항 수정</h2>
		
			<div class="mb-1">
    		<form:input path="notice_title" class="form-control"/>
    		<font color="red"><form:errors path="notice_title"/></font>
  		</div>
  		
  		<form:textarea id="editor" path="notice_content"/>

	    <font color="red"><form:errors path="notice_content" /></font>
	    
			<div class="mt-3">
				<input type="file" id="myFile" name="filename2" >
				<button type="submit" class="btn btn-primary">등록</button>
			</div>
			
		</form:form>
	</div>

	<!-- ckeditor -->
	<script>
		CKEDITOR.replace("editor",{
			width:'100%',
			height:'300px',
			removePlugins: 'elementspath'
		});
	</script>
	
</body>
</html>
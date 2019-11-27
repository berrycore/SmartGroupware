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
<link rel="stylesheet" href="../css/w3.css">
<link rel="stylesheet" href="../css/bootstrap.css">
<script src="../ckeditor/ckeditor.js"></script>

<title>새 글 작성</title>
</head>
<body>

	<div class="w3-container">
		<form:form modelAttribute="board" action="../board/BoardWrite.html" method="post">
		
			<h2>새 글 작성</h2>
		
			<div class="mb-1">
    		<input type="text" class="form-control" placeholder="제목" name="board_title">
    		<font color="red"><form:errors path="board_title"/></font>
  		</div>
  
			
			
	    <textarea id="editor" name="board_content" ></textarea>
	    
	    <font color="red"><form:errors path="board_content" /></font>
	    
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
			height:'300px'
		});
	</script>
	
</body>
</html>

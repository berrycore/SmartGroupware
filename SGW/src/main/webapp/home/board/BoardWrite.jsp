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

<!-- summer note editor -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>

<title>새 글 작성</title>
</head>
<body>
<script>
// summer note
$(document).ready(function(){
	$('#summernote').summernote({
		placeholder: '',
    tabsize: 2,
    height: 300
	});
});
</script>
	<div class="w3-container">
		<form:form modelAttribute="board" action="../board/BoardWrite.html" method="post">
		
			<h2>새 글 작성</h2>
		
			<div class="mb-1">
    		<input type="text" class="form-control" placeholder="제목" name="board_title">
    		<font color="red"><form:errors path="board_title"/></font>
  		</div>
  
			
			
	    <textarea id="summernote" name="board_content" ></textarea>
	    
	    <font color="red"><form:errors path="board_content" /></font>
	    
			<div class="mt-3">
				<input type="file" id="myFile" name="filename2" >
				<button type="submit" class="btn btn-primary">등록</button>
			</div>
			
		</form:form>
	</div>


	

</body>
</html>

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

<title><spring:message code="sgw.board.write.new" /></title>
</head>
<body class="w3-dark-grey">

  <form:form modelAttribute="board" action="/board/BoardWrite.html" method="post">

	<div class="w3-container">
		
    <div class="w3-card-4"> 
      <header class="w3-container">
        <h1><spring:message code="sgw.board.write.new" /></h1>
      </header>
      <div class="w3-container">
		
			<div class="mb-1">
    		<input type="text" class="form-control" placeholder='<spring:message code="sgw.board.title"/>' name="board_title">
    		<font color="white"><form:errors path="board_title"/></font>
  		</div>
  
			
			
	    <textarea id="editor" name="board_content" ></textarea>
	    
	    <font color="white"><form:errors path="board_content" /></font>
	    
			<div class="mt-3 mb-3">
<!-- 				<input type="file" id="myFile" name="filename2" > -->
				<button type="submit" class="btn btn-light"><spring:message code="sgw.board.submit" /></button>
			</div>
			
	
  	 </div>
    </div>
  </div>

	<!-- ckeditor -->
	<script>
		CKEDITOR.replace("editor",{
			width:'100%',
			height:'300px',
			removePlugins: 'elementspath'
		});
	</script>
	 </form:form>
   
</body>
</html>

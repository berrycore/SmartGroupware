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

<title><spring:message code="sgw.mail.title.writenew"/></title>
</head>
<body class="w3-dark-grey">

<div class="container">
	
	<form:form modelAttribute="email" action="/mail/sendMail.html" method="post">
	
	<div class="w3-card-4">	
		<header class="w3-container">
	  	<h1><spring:message code="sgw.mail.newmail" /></h1>
		</header>
		<div class="w3-container">	
				<div class="form-group">
					<label for="receiver_name"><spring:message code="sgw.mail.recipient" /></label> 
					<input type="text" class="form-control" name="receiver_name">
				</div>
				<div class="form-group">
					<label for="cc_name"><spring:message code="sgw.mail.cc" /></label> 
					<input type="text" class="form-control" name="cc_name">
				</div>
				<div class="form-group">
					<label for="mail_title"><spring:message code="sgw.mail.subject" /></label> 
					<input type="text" class="form-control" name="mail_title">
				</div>
<!-- 				<div class="custom-file"> -->
<!-- 					<input type="file" class="custom-file-input" id="customFile"> -->
<!-- 					<label class="custom-file-label" for="customFile">Choose file</label> -->
<!-- 				</div> -->
				<div class="form-group">
	        <textarea id="editor" name="mail_content" ></textarea>
				</div>
		</div>	
			
		<footer class="w3-container w3-dark-grey">
		  <button type="submit" class="btn btn-light mb-3"><spring:message code="sgw.mail.send" /></button>
		</footer>
		
	</div>
	</form:form>
</div>

	<script>
	// Add the following code if you want the name of the file appear on select
	$(".custom-file-input").on("change", function() {
	  var fileName = $(this).val().split("\\").pop();
	  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
	});
	</script>

  <!-- ckeditor -->
  <script>
    CKEDITOR.replace("editor",{
      width:'100%',
      height:'200px',
      uiColor: '#f1f1f1',
      removePlugins: 'elementspath'
    });
  </script>

</body>
</html>
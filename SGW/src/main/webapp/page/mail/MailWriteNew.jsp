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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<title>MailWriteNew.jsp</title>
</head>
<body>

	<div class="container">
		<form action="#">
			<h2>새 메일</h2>
	
			<div class="form-group">
				<label for="receiver_name">받는사람</label> 
				<input type="text" class="form-control" id="receiver_name">
			</div>
			<div class="form-group">
				<label for="cc_name">참조</label> 
				<input type="text" class="form-control" id="cc_name">
			</div>
			<div class="form-group">
				<label for="mail_title">제목</label> 
				<input type="text" class="form-control" id="mail_title">
			</div>
			<div class="custom-file">
				<input type="file" class="custom-file-input" id="customFile">
				<label class="custom-file-label" for="customFile">Choose file</label>
			</div>
			<div class="form-group">
				<label for="comment">본문</label>
				<textarea class="form-control" rows="5" id="comment"></textarea>
			</div>
			
			<button type="submit" class="btn btn-primary">보내기</button>
		
		</form>
	</div>

	<script>
	// Add the following code if you want the name of the file appear on select
	$(".custom-file-input").on("change", function() {
	  var fileName = $(this).val().split("\\").pop();
	  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
	});
	</script>

</body>
</html>
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<title>ChangePassword</title>
</head>
<body>
	<div class="container">
		<form action="/action_page.php" class="was-validated">
		
			<h3 class="bg-dark text-light">관리자 - 패스워드 설정</h3>
		
			<div class="alert alert-success">
	 			 <strong>패스워드 복잡도 : </strong> 영문 대소문자 , 숫자 , 특수문자 조합<br/>
	 			 <strong>패스워드 길이   : </strong> 최소 8 자 이상 20자 이하
			</div>
		
			<div class="form-group">
				<label for="password">Password:</label> 
				<input type="text"class="form-control" id="password" >
			</div>
			<div class="form-group">
				<label for="password">Password 확인:</label> 
				<input type="text"class="form-control" id="password" >
			</div>
			
			<button type="submit" class="btn btn-primary">Confirm</button>
		</form>

	</div>

</body>
</html>
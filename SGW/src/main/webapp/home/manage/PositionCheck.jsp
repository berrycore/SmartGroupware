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
<title>직급조회</title>
</head>
<body>
	<h2>직급조회</h2>
	<div>
		<form class="form-inline my-2 my-lg-0">
			
			<select class="form-control" id="position">
				<option>인턴</option>
				<option>사원</option>
				<option>대리</option>
				<option>과장</option>
				<option>차장</option>
				<option>부장</option>
				<option>부사장</option>
				<option>대표이사</option>
			</select>
			&nbsp;
			<button class="btn btn-warning my-2 my-sm-0" type="button">Confirm</button>
		</form>
	</div>

</body>
</html>

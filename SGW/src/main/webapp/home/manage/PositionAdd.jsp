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


<title>title</title>
</head>
<body>


<div class="container">
	
	<form action="positionAdd.html" method="POST">
		
		<h2>직급 추가하기</h2>
		
		<div class="form-group">
			<label for="position_id">직급 ID</label>
			<input type="text" class="form-control" name="position_id" placeholder="자동생성됨" readonly="readonly">
		</div>
		<div class="form-group">
			<label for="position_name">직급 이름</label>
			<input type="text" class="form-control" name="position_name" >
		</div>
		<div class="form-group">
			<input type="submit" class="btn btn-primary" value="등록">
		</div>
	</form>
</div>
</body>
</html>
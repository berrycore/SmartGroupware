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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<title>title</title>
</head>
<body>


<div class="container">
	
	<form action="teamAdd.html" method="POST">
		
		<h2>팀 추가하기</h2>
		
		<div class="form-group">
			<label for="team_id">팀ID</label>
			<input type="text" class="form-control" name="team_id" placeholder="자동생성됨" readonly="readonly">
		</div>
		<div class="form-group">
			<label for="team_name">팀이름</label>
			<input type="text" class="form-control" name="team_name" >
		</div>
		<div class="form-group">
			<label for="parent_team_id">상위부서 ID</label>
			<input type="text" class="form-control" name="team_parent_id" >
		</div>
		<div class="form-group">
			<input type="submit" class="btn btn-primary" value="등록" >
		</div>
	</form>
</div>
</body>
</html>
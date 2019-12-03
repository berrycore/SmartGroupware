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


<title>팀 정보 수정</title>
</head>
<body>

<div class="container">
	
	<form action="#" >
		
		<h2>팀 정보 수정</h2>
		
		<div class="form-group">
			<label for="team_id">팀ID</label>
			<input type="text" class="form-control" id="team_id" placeholder="T0002" readonly="readonly">
		</div>
		<div class="form-group">
			<label for="team_name">팀이름</label>
			<input type="text" class="form-control" id="team_name" placeholder="팀이름을 입력해주세요">
		</div>
		<div class="form-group">
			<label for="parent_team_id">상위부서 ID</label>
			<input type="text" class="form-control" id="parent_team_id" placeholder="상위부서 ID 를 입력하세요">
		</div>
		<div class="form-group">
			<button class="btn btn-primary ma-6">저장</button>
		</div>
	</form>
</div>

</body>
</html>
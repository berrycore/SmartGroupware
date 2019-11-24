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
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">

<title>AccountStatusView.jsp</title>
</head>
<body>

	
<div class="container">
	<table class="table">
		<thead>
			<tr>
				<th colspan="2">
					<h2>회원 정보</h2>	
				</th>
			</tr>
		</thead>
		<tr>
			<td>이름</td>
			<td>
				<input class="form-control" id="user_name" type="text" value="${sessionScope.loginUser.user_name }" disabled="disabled">
			</td>
		</tr>
		<tr>
			<td>ID</td>
			<td><input class="form-control" id="user_id" type="text" value="${sessionScope.loginUser.user_id }" disabled="disabled"></td>
		</tr>
		<tr>
			<td>패스워드 변경</td>
			<td><input type="text" value="correct value"
				class="form-control is-valid" id="password">
				<div class="valid-feedback">Success! You've done it.</div></td>
		</tr>
		<tr>
			<td>패스워드 변경 확인</td>
			<td><input type="text" value="incorrect value"
				class="form-control is-invalid" id="password_re">
				<div class="invalid-feedback">Sorry, that username's taken.
					Try another?</div></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td>
				<input type="text" class="form-control" id="user_phone" value="${sessionScope.loginUser.user_phone }">
			</td>
		</tr>
		<tr>
			<td>부서명</td>
			<td>
				<input class="form-control" id="team_name" type="text" value="${sessionScope.loginUser.team.team_name }" readonly="readonly">
			</td>
		</tr>
		<tr>
			<td>직급</td>
			<td>
				<input class="form-control" id="position_name" type="text" value="${sessionScope.loginUser.position.position_name }" readonly="readonly">
			</td>
		</tr>
		<tr>
			<td>업무소개</td>
			<td>
				<textarea class="form-control" id="exampleTextarea" rows="3" >${sessionScope.loginUser.user_description }</textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<button type="button" class="btn btn-dark">저장하기</button>
			</td>
		</tr>
	</table>
</div>
</body>
</html>
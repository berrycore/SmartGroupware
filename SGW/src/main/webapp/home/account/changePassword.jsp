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

<title>changePassword</title>
</head>
<body>

	
<div class="container">
	<form:form action="../account/changePassword.html" method="POST" modelAttribute="user">
		<table class="table table-sm">
			<thead>
				<tr>
					<th colspan="2">
						<h2>패스워드 변경</h2>	
            <div>${message }</div>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>이름</td>
					<td>
						<input class="form-control" name="user_name" type="text" value="${you.user_name }" readonly="readonly">
					</td>
				</tr>
				<tr>
					<td>ID</td>
					<td><input class="form-control" name="user_id" type="text" value="${you.user_id }" readonly="readonly"></td>
				</tr>
				<tr>
					<td>부서명</td>
					<td>
						<input class="form-control" id="team_name" type="text" value="${you.team.team_name }" readonly="readonly">
					</td>
				</tr>
				<tr>
					<td>직급</td>
					<td>
						<input class="form-control" id="position_name" type="text" value="${you.position.position_name }" readonly="readonly">
					</td>
				</tr>
				<tr>
					<td>패스워드 변경</td>
					<td>
						<input type="password" class="form-control" name="user_password">
						<font color="red"><form:errors path="user_password" /></font> 
					</td>
				</tr>
				<tr>
					<td>패스워드 변경 확인</td>
					<td><input type="password" class="form-control" name="password_re">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit" class="btn btn-primary">저장하기</button>
					</td>
				</tr>
			</tbody>
		</table>
	</form:form>
</div>
</body>
</html>
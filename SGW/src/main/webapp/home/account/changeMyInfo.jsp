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

<title>AccountStatusView.jsp</title>
</head>
<body>

	
<div class="container">
	<form:form action="changeMyInfo.html" method="POST" modelAttribute="user">
		<table class="table table-sm">
			<thead>
				<tr>
					<th colspan="2">
						<h2>내 정보</h2>	
					</th>
				</tr>
			</thead>
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
				<td>전화번호</td>
				<td>
					<input type="text" class="form-control" name="user_phone" value="${you.user_phone }">
					<font color="red"><form:errors path="user_phone" /></font> 
				</td>
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
				<td>업무소개</td>
				<td>
					<textarea class="form-control" name="user_description" id="exampleTextarea" rows="3" >${you.user_description }</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" class="btn btn-primary">저장하기</button>
				</td>
			</tr>
		</table>
	</form:form>
</div>
</body>
</html>
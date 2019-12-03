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

<title><spring:message code="sgw.account.myinfo" /></title>
</head>
<body>

	
<div class="container">
	<form:form action="changeMyInfo.html" method="POST" modelAttribute="user">
		<table class="table table-sm">
			<thead>
				<tr>
					<th colspan="2">
						<h2><spring:message code="sgw.account.myinfo" /></h2>	
					</th>
				</tr>
			</thead>
			<tr>
				<td><spring:message code="sgw.account.name" /></td>
				<td>
					<input class="form-control" name="user_name" type="text" value="${you.user_name }" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td><spring:message code="sgw.account.user_id" /></td>
				<td><input class="form-control" name="user_id" type="text" value="${you.user_id }" readonly="readonly"></td>
			</tr>
			<tr>
				<td><spring:message code="sgw.account.tel.number" /></td>
				<td>
					<input type="text" class="form-control" name="user_phone" value="${you.user_phone }">
					<font color="red"><form:errors path="user_phone" /></font> 
				</td>
			</tr>
			<tr>
				<td><spring:message code="sgw.account.team.name" /></td>
				<td>
					<input class="form-control" id="team_name" type="text" value="${you.team.team_name }" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td><spring:message code="sgw.account.position.name" /></td>
				<td>
					<input class="form-control" id="position_name" type="text" value="${you.position.position_name }" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td><spring:message code="sgw.account.job.description" /></td>
				<td>
					<textarea class="form-control" name="user_description" id="exampleTextarea" rows="3" >${you.user_description }</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" class="btn btn-primary"><spring:message code="sgw.account.save" /></button>
				</td>
			</tr>
		</table>
	</form:form>
</div>
</body>
</html>
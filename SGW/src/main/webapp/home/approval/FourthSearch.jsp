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

<script >
	function idOK() {
		opener.document.frm_document.fourth_id.value = document.frm.fourth_id.value;
		opener.document.frm_document.fourth_name.value = document.frm.fourth_name.value;
		opener.document.frm_document.fourth_position.value = document.frm.fourth_position.value;
		self.close();
	}
</script>

<title><spring:message code="sgw.document.user.search" /></title>
</head>
<body class="w3-dark-gray">

	<div class="container">
		<spring:message code="sgw.document.user.search" />
		<form action="FourthSearch.html" name="frm" method="post">
			<div>
				<input type="text" name="user_name">
				<button class="btn btn-warning btn-small" type="submit"><spring:message code="sgw.document.search" /></button>&nbsp;
			</div>

			<table class="w3-table w3-dark w3-bordered">
				<thead>
					<tr>
						<td><spring:message code="sgw.document.user.id" /></td>
						<td><spring:message code="sgw.document.user.name" /></td>
						<td><spring:message code="sgw.document.team.name" /></td>
						<td><spring:message code="sgw.document.position" /></td>
						<td><spring:message code="sgw.document.select" /></td>
					</tr>
				</thead>
				<tbody>
					<c:if test="${ hasResult eq 'yes' }">
						<c:forEach var="user" items="${userList}">
							<tr>
								<td>${user.user_id } <input type="hidden" name="fourth_id" value="${user.user_id }"> </td>
								<td>${user.user_name } <input type="hidden" name="fourth_name" value="${user.user_name }"></td>
								<td>${user.team.team_name }</td>
								<td>${user.position.position_name } <input type="hidden" name="fourth_position" value="${user.position.position_name }"></td>
								<td>
									<button class="btn btn-light btn-small" type="button" onclick="idOK()"><spring:message code="sgw.document.confirm"/></button>
								</td>
							</tr>
						</c:forEach>
					</c:if>
					
					<c:if test="${ hasResult eq 'no' }">
						<tr>
							<td colspan="5">
								<font color="red"> <spring:message code="sgw.document.noresult" /></font>
							</td>
						</tr>
					</c:if>
					
				</tbody>
				
			</table>
		</form>
	</div>
</body>
</html>
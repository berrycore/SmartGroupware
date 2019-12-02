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
<link rel="stylesheet" href="/css/bootstrap.css">

<script >
	function idOK() {
		opener.document.frm_document.final_id.value = document.frm.final_id.value;
		opener.document.frm_document.final_name.value = document.frm.final_name.value;
		opener.document.frm_document.final_position.value = document.frm.final_position.value;
		self.close();
	}
</script>

<title>UserIdSearch</title>
</head>
<body>

	<div class="container">
	User Search by Name	
		<form action="UserSearch.html" name="frm" method="post">
			<div>
				<input type="text" name="user_name">
				<button class="btn btn-success btn-small" type="submit">Search</button>&nbsp;
			</div>

			<table class="table table-bordered table-sm">
				<thead>
					<tr>
						<td>ID</td>
						<td>이름</td>
						<td>부서</td>
						<td>직급</td>
						<td>선택</td>
					</tr>
				</thead>
				<tbody>
					<c:if test="${ hasResult eq 'yes' }">
						<c:forEach var="user" items="${userList}">
							<tr>
								<td>${user.user_id } <input type="hidden" name="final_id" value="${user.user_id }"> </td>
								<td>${user.user_name } <input type="hidden" name="final_name" value="${user.user_name }"></td>
								<td>${user.team.team_name }</td>
								<td>${user.position.position_name } <input type="hidden" name="final_position" value="${user.position.position_name }"></td>
								<td>
									<button class="btn btn-primary btn-small" type="button" onclick="idOK()">Confirm</button>
								</td>
							</tr>
						</c:forEach>
					</c:if>
					
					<c:if test="${ hasResult eq 'no' }">
						<tr>
							<td colspan="5">
								<font color="red">조회 결과가 없습니다</font>
							</td>
						</tr>
					</c:if>
					
				</tbody>
				
			</table>
		</form>
	</div>
</body>
</html>
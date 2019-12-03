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
<link rel="stylesheet" type="text/css" href="/css/w3.css">
<link rel="stylesheet" type="text/css" href="/css/bootstrap.css">

<title><spring:message code="sgw.admin.password.change" /></title>
</head>
<body>
	<div class="container">
	<form:form action="adminPasswordChange.html" method="POST" modelAttribute="sgwAdmin">
		<table class="table table-sm">
			<thead>
				<tr>
					<th colspan="2">
						<h2><spring:message code="sgw.admin.password.change" /></h2>	
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><spring:message code="sgw.admin.account.name" /></td>
					<td>
						<input class="form-control" name="admin_name" type="text" value="${sgwAdmin.admin_name }" readonly="readonly">
					</td>
				</tr>
				<tr>
					<td>ID</td>
					<td><input class="form-control" name="admin_id" type="text" value="${sgwAdmin.admin_id }" readonly="readonly"></td>
				</tr>
				<tr>
					<td><spring:message code="sgw.admin.password"/></td>
					<td>
						<input type="password" class="form-control" name="admin_password">
						<font color="red"><form:errors path="admin_password" /></font> 
					</td>
				</tr>
				<tr>
					<td><spring:message code="sgw.admin.password.re" /></td>
					<td>
						<input type="password" class="form-control" name="admin_password_re"> 
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit" class="btn btn-primary"><spring:message code="sgw.admin.password.save" /></button>
					</td>
				</tr>
			</tbody>
		</table>
	</form:form>
</div>

</body>
</html>
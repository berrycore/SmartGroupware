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
<link rel="stylesheet" type="text/css" href="/css/w3.css">
<link rel="stylesheet" type="text/css" href="/css/bootstrap.css">

<title><spring:message code="sgw.admin.list" /></title>
</head>
<body class="w3-indigo">

<div class="container">

	<div class="w3-card-4">
		<header class="w3-container">
			<h1><spring:message code="sgw.admin.list" /></h1>
		</header>

		<div class="w3-container">
			<div class="w3-responsive">
	
				<table class="w3-table w3-dark">
							<thead class="w3-bordered">
								<tr>
									<th><spring:message code="sgw.admin.account.id" /></th>
									<th><spring:message code="sgw.admin.account.name" /></th>
									<th><spring:message code="sgw.admin.accessible.ip" /></th>
									<th><spring:message code="sgw.admin.account.created.date" /></th>
									<th><spring:message code="sgw.admin.last.login.date" /></th>
									<th><spring:message code="sgw.admin.last.password.changed.date" /></th>
								</tr>
							</thead>
							
							<tbody>
								<c:choose>
									<c:when test="${noResult eq 'yes' }">	
										<tr>
											<td colspan="6"><spring:message code="sgw.admin.account.no.result" /></td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach items="${sgwAdminList}" var="sgwAdmin">
											<tr>
												<td>${sgwAdmin.admin_id }</td>
												<td>${sgwAdmin.admin_name }</td>
												<td>${sgwAdmin.admin_access_ip }</td>
												<td>${sgwAdmin.admin_date_created }</td>
												<td>${sgwAdmin.admin_date_last_login }</td>
												<td>${sgwAdmin.admin_date_last_pw_changed }</td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</tbody>
					</table>
				</div>
			</div>
	</div>
</div>
</body>
</html>

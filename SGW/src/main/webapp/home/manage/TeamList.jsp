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

<title><spring:message code="sgw.dash.team.list" /></title>
</head>

<body class="w3-indigo">

<div class="container">

	<div class="w3-card-4">
		<header class="w3-container">
			<h1><spring:message code="sgw.dash.team.list" /></h1>
		</header>

		<div class="w3-container">
			<div class="w3-responsive">

				<c:choose>
					<c:when test="${noResult eq 'yes' }">
						<spring:message code="sgw.manage.user.no.result"/>
					</c:when>
					<c:otherwise>
							<table class="w3-table w3-dark">
								<thead class="w3-bordered">
									<tr>
										<th><spring:message code="sgw.manage.user.team.id"/></th>
										<th><spring:message code="sgw.manage.user.team.name"/></th>
										<th><spring:message code="sgw.manage.user.team.parent"/> </th>
									</tr>
								</thead>
								<tbody>
									<tbody>
										<c:forEach items="${teamList }" var="team">
											<tr>
												<td>${team.team_id }</td>
												<td>${team.team_name }</td>
												<td>${team.team_parent_id }</td>
											</tr>
										</c:forEach>
									</tbody>
								</tbody>
							</table>
						</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</div>
</body>
</html>
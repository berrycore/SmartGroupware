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


<title>user list</title>
</head>
<body class="w3-indigo">

<div class="container">
	
	<div class="w3-card-4">
		<header class="w3-container w3-blue">
			<h1> <spring:message code="sgw.manage.user.list" /></h1>
		</header>

			<table class="w3-table w3-dark">
				<thead class="w3-bordered">
					<tr>
						<th> <spring:message code="sgw.manage.user.list.id" /> </th>
						<th> <spring:message code="sgw.manage.user.list.name" /> </th>
						<th> <spring:message code="sgw.manage.user.list.team" /> </th>
						<th> <spring:message code="sgw.manage.user.list.position" /> </th>
						<th> <spring:message code="sgw.manage.user.list.email" /> </th>
						<th> <spring:message code="sgw.manage.user.list.phone" /> </th>
						<th> <spring:message code="sgw.manage.user.list.description" /> </th>
						<th> <spring:message code="sgw.manage.user.list.last.login" /> </th>
						<th> <spring:message code="sgw.manage.user.list.last.pw.change" /> </th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${userList }" var="user">
					<tr>
						<td>
							${user.user_id}
						</td>
						<td>
							${user.user_name}
						</td>
						<td>
							${user.team.team_name}
						</td>
						<td>
							${user.position.position_name}
						</td>
						<td>
							${user.user_email}
						</td>
						<td>
							${user.user_phone}
						</td>
						<td>
							${user.user_description}
						</td>
						<td>
							${user.user_date_last_login}
						</td>
						<td>
							${user.user_date_last_pw_changed}
						</td>
					</tr>
				</c:forEach>
				</tbody>
				<tfoot>
				</tfoot>
			</table>
	</div>
</div>
</body>
</html>
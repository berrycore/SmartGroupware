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


<title>user list</title>
</head>
<body>

<div class="container">
<h5>SM_USERS</h5>
	<table class="table  table-sm table-bordered table-hover table-responsive-md">
		<thead>
			<tr>
				<th>user_id</th>
				<th>user_name</th>
				<th>team_name</th>
				<th>position_name</th>
				<th>user_email</th>
				<th>user_phone</th>
				<th>user_description</th>
				<th>user_date_last_login</th>
				<th>user_date_last_pw_changed</th>
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
	</table>
</div>
</body>
</html>
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<title>user list</title>
</head>
<body>
<h1>SM_USERS</h1>
userList
<table class="table">
	<tr>
		<td>user_id</td>
		<td>user_password</td>
		<td>user_name</td>
		<td>user_email</td>
		<td>user_phone</td>
		<td>user_description</td>
		<td>user_date_last_login</td>
		<td>user_date_last_pw_changed</td>
		<td>user_date_employement</td>
		<td>user_date_retirement</td>
		<td>team_id</td>
		<td>position_id</td>
	</tr>
</table>
</body>
</html>
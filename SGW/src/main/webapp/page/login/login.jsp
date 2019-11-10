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
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<style type="text/css">
.center {
	position: absolute;
	height: 300px;
	width: 400px;
	margin: -150px 0px 0px -200px;
	top: 50%;
	left: 50%;
	padding: 5px;
}
</style>
<title>Login</title>
</head>
<body>


	<div class="center">

		<div class="card border-primary mb-3" style="max-width: 20rem;">
			<div class="card-header">Smart Group Ware</div>
			<div class="card-body">
				<h4 class="card-title">Login</h4>
				<div style="padding: 2px">
					<input type="text" value="" class="form-control is-invalid"
						id="user_id" placeholder="ID">
				</div>
				<div style="padding: 2px">
					<input type="text" value="" class="form-control is-invalid"
						id="user_password" placeholder="PASSWORD">

				</div>
				<div style="padding: 2px" align="right">
					<button type="button" class="btn btn-primary btn-lg btn-block">submit</button>
					<!-- 					<button type="button" class="btn btn-secondary">submit</button> -->
				</div>

			</div>
		</div>
	</div>
</body>
</html>
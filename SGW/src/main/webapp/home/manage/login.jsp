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


<style type="text/css">
/* .center { */
/* 	position: absolute; */
/* 	height: 300px; */
/* 	width: 400px; */
/* 	margin: -150px 0px 0px -200px; */
/* 	top: 50%; */
/* 	left: 50%; */
/* 	padding: 5px; */
/* } */
</style>
<title>Login</title>
</head>
<body>
	<div class="container-fluid">

		<div class="row">
			<div class="col-xs-6 col-md-4"></div>
			<div class="col-xs-6 col-md-4" style="padding-top: 20%">
				<div class="card-body border" >
					<h4 class="card-header bg-warning">SmartGroupWare : AdminLogin</h4>
					<div style="padding: 2px">
						<input type="text" value="" class="form-control is-invalid" id="user_id" placeholder="ID">
					</div>
					<div style="padding: 2px">
						<input type="text" value="" class="form-control is-invalid" id="user_password" placeholder="PASSWORD">
					</div>
					<div style="padding: 2px" align="right">
						<button type="button" class="btn btn-secondary">submit</button>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-6 col-md-4"></div>
	</div>

</body>
</html>
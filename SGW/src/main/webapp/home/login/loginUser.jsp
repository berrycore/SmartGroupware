<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/login.css">


<title>Login</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
				<div class="card card-signin my-5">
					<form:form modelAttribute="user" name="frm_login" class="form-signin" action="login/loginUser.html" method="POST">
						<div class="card-body">
							<h5 class="card-title text-center">Smart Group Ware</h5>
							
								<div class="form-label-group">
									<input type="text" id="user_id" name="user_id" class="form-control" placeholder="ID" autofocus> 
									<label for="user_id">ID</label>
								</div>

								<div class="form-label-group">
									<input type="password" id="user_password" name="user_password" class="form-control" placeholder="Password" > 
									<label for="user_password">Password</label>
								</div>
								
	
								<button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
								<hr class="my-4">
								아이디는 관리자에게 문의 바랍니다.<br /> 첫 로그인시 #Gw사번 입니다
								<hr class="my-4">
								<div>
									<font color="red"><form:errors path="user_id"/></font>
								</div>
								<div>
									<font color="red"><form:errors path="user_password"/></font>
								</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
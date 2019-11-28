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
<style type="text/css">
body {
  background: #007bff;
  background: linear-gradient(to right, #E66200, #FFAE33);
}
#submit{
  background: #FF4500;
  border-color: #FFA500;
}
</style>
<title>AdminLogin</title>
</head>
<body>
	<div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <form:form modelAttribute="sgwAdmin" name="frm_login" class="form-signin" action="loginAdmin.html" method="POST">
            <div class="card-body">
              <h5 class="card-title text-center">Smart Group Ware</h5>
              
                <div class="form-label-group">
                  <input type="text" id="admin_id" name="admin_id" class="form-control" placeholder="Admin ID" autofocus> 
                  <label for="admin_id">Admin ID</label>
                </div>

                <div class="form-label-group">
                  <input type="password" id="admin_password" name="admin_password" class="form-control" placeholder="Password" > 
                  <label for="admin_password">Password</label>
                </div>
                
  
                <button id="submit" class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
                <hr class="my-4">
                	경고 !<br />비인가자의 접속을 금지합니다 
                <hr class="my-4">
                <div>
                  <font color="red"><form:errors path="admin_id"/></font>
                </div>
                <div>
                  <font color="red"><form:errors path="admin_password"/></font>
                </div>
            </div>
          </form:form>
        </div>
      </div>
    </div>
  </div>

</body>
</html>
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
<title><spring:message code="sgw.admin.admin.account.add" /></title>
</head>
<body class="w3-indigo">

<script>
	function popup_admin_id_check(){
		var url = "adminDuplicationCheck.html"
		var name = "AdminDuplicationCheck"
		var option = "width = 600, height = 400, top = 100, left = 200, location = no";
		window.open(url, name, option);
		return false;
	}
</script>

<div class="container" >
	  <form:form modelAttribute="sgwAdmin" method="POST" action="adminAccountAdd.html" name="frm_admin">
	  
	  <div class="w3-card-4">
		<header class="w3-container w3-blue">
			<h1><spring:message code="sgw.admin.admin.account.add" /></h1>
		</header>
	  
	  <div class="w3-container">
		  <div class="w3-responsive">
		    <table class="w3-table w3-dark" style="margin-top: 5px;">
		      <tbody>
			      <tr>
			        <td><spring:message code="sgw.admin.account.name" /></td>
			        <td>
			          <form:input path="admin_name" name="admin_name" class="form-control"/>
			          <font color="red"><form:errors path="admin_name" /></font>
			        </td>
			      </tr>
			      <tr>
			        <td><spring:message code="sgw.admin.account.id" /></td>
			        <td>
			          <div class="input-group">
			            <form:input path="admin_id" name="admin_id" class="form-control" readonly="true"/>
			            <div class="input-group-append">
			              <button class="btn btn-primary" onclick="return popup_admin_id_check()"><spring:message code="sgw.admin.duplicate.check" /></button>  
			            </div>  
			          </div>
			          
			          <font color="red"><form:errors path="admin_id" /></font> 
			        </td>
			      </tr>
			      <tr>
			        <td><spring:message code="sgw.account.password" /></td>
			        <td>
			          <input type="password" id="admin_password" name="admin_password" class="form-control"/>
			          <font color="red"><form:errors path="admin_password" /></font>
			        </td>
			      </tr>
			      <tr>
			        <td><spring:message code="sgw.account.password.re" /></td>
			        <td>
			        	<input type="password" id="admin_password_re" name="admin_password_re" class="form-control"/>
			        </td>
			      </tr>
			      <tr>
			        <td><spring:message code="sgw.admin.accessible.ip" /><br/> <spring:message code="sgw.admin.accessible.ip.ex" /></td>
			        <td>
			          <form:input path="admin_access_ip" name="admin_access_ip" class="form-control"/>
			          <font color="red"><form:errors path="admin_access_ip" /></font>
			        </td>
			      </tr>
		      </tbody>
		      <tfoot>
			      <tr>
			        <td colspan="2">
			          <button type="submit" class="btn btn-light"><spring:message code="sgw.admin.submit" /></button>
			          <a href="/main_admin.html"><button type="button" class="btn btn-warning"><spring:message code="sgw.admin.to.main" /></button></a>
			        </td>
			      </tr>
		      </tfoot>
		    </table>
	    </div>
	     </div>
	  </div>
  </form:form>
	 
</div>

</body>
</html>

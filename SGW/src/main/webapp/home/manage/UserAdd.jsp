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


<script>
	function popup_team_check() {
		var url = "teamCheck.html";
		var name = "TeamCheck";
		var option = "width = 600, height = 200, top = 100, left = 200, location = no";
		window.open(url, name, option);
		return false;
	}
	
	function popup_position_check(){
		var url = "positionCheck.html";
		var name = "PositionCheck";
		var option = "width = 600, height = 200, top = 100, left = 200, location = no";
		window.open(url, name, option);
		return false;
	}
	
	function popup_user_id_check(){
		var url = "userDuplicationCheck.html"
		var name = "UserDuplicationCheck"
		var option = "width = 600, height = 400, top = 100, left = 200, location = no";
		window.open(url, name, option);
		return false;
	}
</script>

<title> <spring:message code="sgw.manage.user.add" /> </title>
</head>
<body>

<div >

	<form:form modelAttribute="user" method="POST" action="userAdd.html" name="frm_user">
		<table class="table" style="margin-top: 5px;">
			<thead>
				<tr>
					<th colspan="2">
						<h4> <spring:message code="sgw.manage.user.add" /> </h4>	
					</th>
				</tr>
			</thead>
			<tr>
				<td> <spring:message code="sgw.manage.user.add.name" /> </td>
				<td>
					<form:input path="user_name" name="user_name" class="form-control"/>
					<font color="red"><form:errors path="user_name" /></font>
				</td>
			</tr>
			<tr>
				<td>ID</td>
				<td>
					<div class="input-group mb-3">
						<form:input path="user_id" name="user_id" class="form-control" readonly="true"/>
						<div class="input-group-append">
							<button class="btn btn-primary" onclick="return popup_user_id_check()"> <spring:message code="sgw.manage.user.add.duplicate.check" /></button>	
						</div>	
					</div>
					
					<font color="red"><form:errors path="user_id" /></font> 
				</td>
			</tr>
			
			<tr>
				<td> <spring:message code="sgw.manage.user.add.telephone" /> </td>
				<td>
					<form:input path="user_phone" name="user_phone" class="form-control" />
					<font color="red"><form:errors path="user_phone" /></font>
				</td>
			</tr>
			<tr>
				<td> <spring:message code="sgw.manage.user.add.team.name" /></td>
				<td>
					<div class="input-group mb-3">
						<input class="form-control" name="team_name" id="team_name" type="text" readonly="readonly">
						<div class="input-group-append">
							<form:hidden path="team_id" name="team_id" value="" />
							<button class="btn btn-primary" onclick="return popup_team_check()"> <spring:message code="sgw.manage.user.add.team.lookup" /></button>		
						</div>	
					</div>
					<font color="red"><form:errors path="team_id" /></font>
				</td>
			</tr>
			<tr>
				<td><spring:message code="sgw.manage.user.add.position.name" /></td>
				<td>
					<div class="input-group mp-3">
						<input class="form-control" name="position_name" id="position_name" type="text" readonly="readonly">
						<div class="input-group-append">
							<form:hidden path="position_id" name="position_id" value="" />
							<button class="btn btn-primary" onclick="return popup_position_check()"> <spring:message code="sgw.manage.user.add.position.lookup" /></button>	
						</div>					
					</div>
					<font color="red"><form:errors path="position_id" /></font>
				</td>
			</tr>
			<tr>
				<td><spring:message code="sgw.manage.user.add.description" /></td>
				<td>
					<form:textarea path="user_description" name="user_description" rows="3" class="form-control"/>
					<font color="red"><form:errors path="user_description" /></font>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" class="btn btn-dark"> <spring:message code="sgw.manage.user.add.submit" /></button>
					<a href="/main_admin.html"><button type="button" class="btn btn-warning"> <spring:message code="sgw.manage.user.add.to.main" /> </button></a>
				</td>
			</tr>
		</table>
	</form:form>
</div>

</body>
</html>
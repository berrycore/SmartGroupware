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


<title><spring:message code="sgw.manage.team.add" /></title>
</head>
<body>


<div class="container">
	
	<form action="teamAdd.html" method="POST">
		
		<h4><spring:message code="sgw.manage.team.add" /></h4>
		
		<div class="form-group">
			<label for="team_id"> <spring:message code="sgw.manage.team.id" /></label>
			<input type="text" class="form-control" name="team_id" placeholder='<spring:message code="sgw.manage.team.add.id.auto" />' readonly="readonly">
		</div>
		<div class="form-group">
			<label for="team_name"> <spring:message code="sgw.manage.team.name" /></label>
			<input type="text" class="form-control" name="team_name" >
		</div>
		<div class="form-group">
			<label for="parent_team_id"> <spring:message code="sgw.manage.team.parent.id" /></label>
			<input type="text" class="form-control" name="team_parent_id" >
		</div>
		<div class="form-group">
			<button type="submit" class="btn btn-primary" ><spring:message code="sgw.manage.team.add.confirm" /></button>
		</div>
	</form>
</div>
</body>
</html>
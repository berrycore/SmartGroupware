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


<title> <spring:message code="sgw.manage.position.add" /> </title>
</head>
<body class="w3-indigo">


<div class="container">
	
	<form action="positionAdd.html" method="POST">
		
		<h4> <spring:message code="sgw.manage.position.add" /> </h4>
		
		<div class="form-group">
			<label for="position_id"> <spring:message code="sgw.manage.position.add.id" /></label>
			<input type="text" class="form-control" name="position_id" placeholder='<spring:message code="sgw.manage.position.add.id.auto" />' readonly="readonly">
		</div>
		<div class="form-group">
			<label for="position_name"> <spring:message code="sgw.manage.position.add.name" /></label>
			<input type="text" class="form-control" name="position_name" >
		</div>
		<div class="form-group">
			<button type="submit" class="btn btn-primary" ><spring:message code='sgw.manage.position.add.confirm'/></button>
		</div>
	</form>
</div>
</body>
</html>
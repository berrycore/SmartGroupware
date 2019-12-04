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

<title> <spring:message code="sgw.manage.team.lookup" /></title>
</head>
<body class="w3-indigo">

	<script>
		function teamOK() {
			var teams = document.getElementById("teams");
			opener.document.frm_user.team_name.value = teams.options[teams.selectedIndex].text;
			opener.document.frm_user.team_id.value = teams.options[teams.selectedIndex].value;
			self.close();
		}
	</script>

<div class="w3-container mt-3">
     <div class="w3-card-4">
      <header class="w3-container w3-blue">
        <h3> <spring:message code="sgw.manage.team.lookup" /> </h3>
      </header>

    <div class="container">
      <div class="mb-6">
      	<form class="form-inline my-2 my-lg-0" name="frm">
      		<select class="form-control" id="teams">
      			<c:forEach var="team" items="${teamList}">
      				<option value="${team.team_id}" >${team.team_name }</option>
      			</c:forEach>
      		</select>
      		
      		&nbsp;
      		<button class="btn btn-info my-2 my-sm-0" type="button" onClick="teamOK()"> <spring:message code="sgw.manage.team.add.confirm" /></button>
      	</form>
      </div>
    </div>
  </div>
</div>
</body>
</html>

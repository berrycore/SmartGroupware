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

<title>팀 조회</title>
</head>
<body>

	<script>
		function teamOK() {
			var teams = document.getElementById("teams");
			opener.document.frm_user.team_name.value = teams.options[teams.selectedIndex].text;
			opener.document.frm_user.team_id.value = teams.options[teams.selectedIndex].value;
			self.close();
		}
	</script>

<h2>팀 조회</h2>
<div>
	<form class="form-inline my-2 my-lg-0" name="frm">
		<select class="form-control" id="teams">
			<c:forEach var="team" items="${teamList}">
				<option value="${team.team_id}" >${team.team_name }</option>
			</c:forEach>
		</select>
		
		&nbsp;
		<button class="btn btn-info my-2 my-sm-0" type="button" onClick="teamOK()">Confirm</button>
	</form>
</div>
</body>
</html>

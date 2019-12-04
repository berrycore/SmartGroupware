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
<link rel="stylesheet" href="/css/w3.css">
<link rel="stylesheet" href="/css/bootstrap.css">

<title>Dash</title>
</head>
<body class="w3-indigo">
	<div class="w3-card-4  w3-margin-top">
		<header class="w3-container w3-blue">
	  	<h3><spring:message code="sgw.admin.list" /></h3>
		</header>
		<div class="w3-container">
		  <div class="w3-responsive">
				  <table class="w3-table w3-dark">
						<thead>
							<tr>
								<th><spring:message code="sgw.admin.account.id" /></th>
								<th><spring:message code="sgw.admin.account.name" /></th>
								<th><spring:message code="sgw.admin.last.login.date" /></th>
								<th><spring:message code="sgw.admin.last.password.changed.date" /></th>
							</tr>
						</thead>
					
						<tbody>
							<c:choose>
								<c:when test="${noResult_adminList eq 'yes' }">	
									<tr>
										<td colspan="4"><spring:message code="sgw.admin.account.no.result" /></td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${sgwAdminList}" var="sgwAdmin">
										<tr>
											<td>${sgwAdmin.admin_id }</td>
											<td>${sgwAdmin.admin_name }</td>
											<td>${sgwAdmin.admin_date_last_login }</td>
											<td>${sgwAdmin.admin_date_last_pw_changed }</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
				</table>
		  </div>
		</div>
		<footer class="w3-container w3-blue">
		  <a href="/manage/adminAccountList.html"><button type="button" class="w3-button w3-white w3-border w3-border-blue w3-padding-small"><spring:message code="sgw.dash.goto"/></button></a>
		</footer>
	</div>
	
	<br/>
	
	<div class="w3-card-4">
		<header class="w3-container w3-blue">
	  	<h3><spring:message code="sgw.manage.user.list" /></h3>
		</header>
		<div class="w3-container">
		  <div class="w3-responsive">
				<table class="w3-table w3-dark">
					<thead>
						<tr>
							<th> <spring:message code="sgw.manage.user.list.name" /> </th>
							<th> <spring:message code="sgw.manage.user.list.team" /> </th>
							<th> <spring:message code="sgw.manage.user.list.last.login" /> </th>
							<th> <spring:message code="sgw.manage.user.list.last.pw.change" /> </th>
						</tr>
					</thead>
					<tbody>
					
					<c:choose>
						<c:when test="${noResult_userList eq 'yes' }">
							<spring:message code="sgw.admin.account.no.result" />
						</c:when>
						<c:otherwise>
							<c:forEach items="${userList }" var="user">
									<tr>
										<td>
											${user.user_name}
										</td>
										<td>
											${user.team.team_name}
										</td>
										<td>
											${user.user_date_last_login}
										</td>
										<td>
											${user.user_date_last_pw_changed}
										</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
		  	</table>
	  	</div>
		</div>
		<footer class="w3-container w3-blue">
		  <a href="/manage/userList.html"><button type="button" class="w3-button w3-white w3-border w3-border-blue w3-padding-small"><spring:message code="sgw.dash.goto"/></button></a>
		</footer>
	</div>
	
	<br/>
	
	<div class="w3-card-4">
		<header class="w3-container w3-blue">
	  	<h3><spring:message code="sgw.dash.team.list"/></h3>
		</header>
		<div class="w3-container">
		  
		  <c:choose>
				<c:when test="${noResult_teamList eq 'yes' }">
					<spring:message code="sgw.manage.user.no.result"/>
				</c:when>
				<c:otherwise>
						<table class="w3-table w3-dark">
							<thead>
								<tr>
									<th><spring:message code="sgw.manage.user.team.id"/></th>
									<th><spring:message code="sgw.manage.user.team.name"/></th>
									<th><spring:message code="sgw.manage.user.team.parent"/> </th>
								</tr>
							</thead>
							<tbody>
								<tbody>
									<c:forEach items="${teamList }" var="team">
										<tr>
											<td>${team.team_id }</td>
											<td>${team.team_name }</td>
											<td>${team.team_parent_id }</td>
										</tr>
									</c:forEach>
								</tbody>
							</tbody>
						</table>
					</c:otherwise>
			</c:choose>
		  
		</div>
		<footer class="w3-container w3-blue">
		  <a href="/manage/teamList.html"><button type="button" class="w3-button w3-white w3-border w3-border-blue w3-padding-small"><spring:message code="sgw.dash.goto"/></button></a>
		</footer>
	</div>
	
	<br/>
	
</body>
</html>
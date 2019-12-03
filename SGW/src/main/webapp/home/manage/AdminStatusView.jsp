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


<title><spring:message code="sgw.admin.setting" /></title>
</head>
<body>

	<div class="container">
	

		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">

			<a class="navbar-brand" href="#"><spring:message code="sgw.admin.setting" /></a>
	
			<!-- Links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#"><spring:message code="sgw.admin.setting.user" /></a></li>
				<li class="nav-item"><a class="nav-link" href="#"><spring:message code="sgw.admin.setting.team" /></a></li>
				<li class="nav-item"><a class="nav-link" href="#"><spring:message code="sgw.admin.setting.board" /></a></li>
			</ul>
		</nav>
	
	 개발중	
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>이름</th>
					<th>소속</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>19113</td>
					<td>베란다</td>
					<th>영업1팀</th>
					<th> <button class="btn btn-primary btn-sm">수정하기</button> </th>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="4"></td>
				</tr>
			</tfoot>
		</table>
		
	</div>
</body>
</html>
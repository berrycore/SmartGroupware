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
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">

<title>AdminAccountList</title>
</head>
<body>
<div class="container">
	관리자 계정 리스트
	sgwAdminList
	
	<table class="table table-sm table-bordered table-hover table-responsive-md">
			<thead>
				<tr>
					<th>admin_id</th>
					<th>admin_name</th>
					<th>admin_access_ip</th>
					<th>admin_date_created</th>
					<th>admin_date_last_login</th>
					<th>admin_date_last_pw_changed</th>
				</tr>
			</thead>
			
			<tbody>
				<c:choose>
					<c:when test="${noResult eq 'yes' }">	
						<tr>
							<td colspan="6">조회 결과가 없습니다</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${sgwAdminList}" var="sgwAdmin">
							<tr>
								<td>${sgwAdmin.admin_id }</td>
								<td>${sgwAdmin.admin_name }</td>
								<td>${sgwAdmin.admin_access_ip }</td>
								<td>${sgwAdmin.admin_date_created }</td>
								<td>${sgwAdmin.admin_date_last_login }</td>
								<td>${sgwAdmin.admin_date_last_pw_changed }</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
	</table>
</div>
</body>
</html>

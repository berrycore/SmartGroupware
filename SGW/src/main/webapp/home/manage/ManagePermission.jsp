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
<link rel="stylesheet" href="../css/bootstrap.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.js" ></script>
<title> <spring:message code="sgw.manage.user.permission" /> </title></head>
<body>

<script>
	function popup_user_modify(user_id){
		var url = "userModify.html?user_id="+user_id
		var name = "UserModify"
		var option = "width = 600, height =600, top = 100, left = 200, location = no";
		window.open(url, name, option);
		return false;
	}
</script>

	<div class="container-fluid">
		<h2><spring:message code="sgw.manage.user.permission" /></h2>
		<br>
		<!-- Nav tabs -->
		<ul class="nav nav-tabs" role="tablist">
			<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#home"><spring:message code="sgw.manage.user.account" /></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu1"><spring:message code="sgw.manage.user.account.add" /></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu2"><spring:message code="sgw.manage.team"/></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu3"><spring:message code="sgw.manage.position"/></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu4"><spring:message code="sgw.manage.menu"/></a></li>
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			<div id="home" class="container tab-pane active">
				<br>
				<h4><spring:message code="sgw.manage.user.list"/></h4>
					<table class="table">
						<thead>
							<tr>
								<th><spring:message code="sgw.manage.user.id" /></th>
								<th><spring:message code="sgw.manage.user.name" /></th>
								<th><spring:message code="sgw.manage.user.team" /></th>
								<th><spring:message code="sgw.manage.user.position" /></th>
								<th><spring:message code="sgw.manage.user.email" /></th>
								<th><spring:message code="sgw.manage.user.control" /></th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${noResult eq 'yes' }">	
									<tr>
										<td colspan="6"> <spring:message code="sgw.manage.user.no.result" /></td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${userList}" var="user">
										<tr>
											<td>${user.user_id }</td>
											<td>${user.user_name }</td>
											<td>${user.team.team_name }</td>
											<td>${user.position.position_name }</td>
											<td>${user.user_email }</td>
											<td>
												<button class="btn btn-info btn-sm" onclick="return popup_user_modify('${user.user_id }')" > <spring:message code="sgw.manage.user.modify" /></button>
											</td>
										</tr>		
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>			
					</table>
			</div>
			
			<div id="menu1" class="container tab-pane fade">
				<jsp:include page="UserAdd.jsp" flush="false" />				
			</div>
			<div id="menu2" class="container tab-pane fade">
				<jsp:include page="TeamAdd.jsp" flush="false"/>
			</div>
			<div id="menu3" class="container tab-pane fade">
				<jsp:include page="PositionAdd.jsp" flush="false"/>
			</div>
			<div id="menu4" class="container tab-pane fade">
				<jsp:include page="MenuAccessManage.jsp" flush="false"/>	
			</div>
		</div>
	</div>
</body>
</html>
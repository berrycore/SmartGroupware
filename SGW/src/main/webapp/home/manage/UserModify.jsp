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
<link rel="stylesheet" href="../css/bootstrap.css">

<title>사용자 정보 수정</title>
</head>
<body>
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
	</script>
	
<div class="container">

	<form:form modelAttribute="user" method="POST" action="userModify.html" name="frm_user">

		<table class="table">
			<thead>
				<tr>
					<th colspan="2">
						<h2>사용자 정보 수정</h2>	
					</th>
				</tr>
			</thead>
			<tr>
				<td>이름</td>
				<td>
					<form:input path="user_name" name="user_name" class="form-control" />
					<font color="red"><form:errors path="user_name" /></font>
				</td>
			</tr>
			<tr>
				<td>ID</td>
				<td>
					<form:input path="user_id" class="form-control" readonly="true" />
				</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>
					<form:input path="user_phone" name="user_phone" class="form-control" />
					<font color="red"><form:errors path="user_phone" /></font>
				</td>
			</tr>
			<tr>
				<td>부서명</td>
				<td>
					<div class="input-group mb-3">
						<input class="form-control" value="부서를 선택해 주세요" name="team_name" id="team_name" type="text" readonly="readonly">
						<div class="input-group-append">
							<input type="hidden" value="${user.team.team_id }" name="team_id" id="team_id" />
							<button class="btn btn-primary" onclick="return popup_team_check()">부서조회</button>		
						</div>	
					</div>
					<font color="red"><form:errors path="team_id" /></font>
				</td>
			</tr>
			<tr>
				<td>직급</td>
				<td>
					<div class="input-group mp-3">
						<input class="form-control" value="직급을 선택해 주세요" name="position_name" id="position_name" type="text" readonly="readonly">
						<div class="input-group-append">
							<input type="hidden" value="${user.position.position_id }" name="position_id" id="position_id"/>
							<button class="btn btn-primary" onclick="return popup_position_check()">직급조회</button>	
						</div>					
					</div>
					<font color="red"><form:errors path="position_id" /></font>
				</td>
			</tr>
			<tr>
				<td>업무소개</td>
				<td>
					<form:textarea path="user_description" name="user_description" rows="3" class="form-control"/>
					<font color="red"><form:errors path="user_description" /></font>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<button type="submit" class="btn btn-dark">저장하기</button>
				</td>
			</tr>
		</table>
	
	</form:form>
	
</div>

</body>
</html>
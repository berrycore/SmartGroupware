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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<script>
	function popup_team_check() {
		var url = "teamCheck.html";
		var name = "TeamCheck";
		var option = "width = 600, height = 200, top = 100, left = 200, location = no";
		window.open(url, name, option);
	}
	
	function popup_position_check(){
		var url = "positionCheck.html";
		var name = "PositionCheck";
		var option = "width = 600, height = 200, top = 100, left = 200, location = no";
		window.open(url, name, option);
	}
	
	function popup_user_id_check(){
		var url = "userDuplicationCheck.html"
		var name = "UserDuplicationCheck"
		var option = "width = 600, height = 400, top = 100, left = 200, location = no";
		window.open(url, name, option);
	}
</script>

<title>사용자 추가</title>
</head>
<body>

<div >
	
	<table class="table" style="margin-top: 5px;">
		<thead>
			<tr>
				<th colspan="2">
					<h2>사용자 추가</h2>	
				</th>
			</tr>
		</thead>
		<tr>
			<td>이름</td>
			<td><input class="form-control" id="user_name" type="text" value="베란다" ></td>
		</tr>
		<tr>
			<td>ID</td>
			<td>
				<form action="#" name="frm_user_id">
					<input class="form-control" name="user_id" type="text" value="DM191103" disabled="disabled">
				</form>
			</td>
			<td><button class="btn-info" onclick="popup_user_id_check()">중복조회</button> </td>
		</tr>
		
		<tr>
			
			<td>전화번호</td>
			<td><input type="text" class="form-control" placeholder="Tel" id="user_phone"></td>
		</tr>
		<tr>
			<td>부서명</td>
			<td>
				<form action="#" name="frm_team">
					<input class="form-control" name="team_name" id="team_name" type="text" readonly="readonly">
					<input type="hidden" name="team_id" value="">
				</form>
			</td>
			<td><button class="btn-primary btn-sm" onclick="popup_team_check()">부서조회</button></td>
		</tr>
		<tr>
			<td>직급</td>
			<td>
				<form action="#" name="frm_position">
					<input class="form-control" name="position_name" id="position_name" type="text" readonly="readonly">
					<input type="hidden" name="position_id" value="" >
				</form>
			</td>
			<td><button class="btn-primary btn-sm" onclick="popup_position_check()">직급조회</button></td>
		</tr>
		<tr>
			<td>업무소개</td>
			<td><textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<button type="button" class="btn btn-dark">저장하기</button>
			</td>
		</tr>
	</table>
	
</div>

</body>
</html>
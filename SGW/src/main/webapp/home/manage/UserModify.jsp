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


<title>사용자 정보 수정</title>
</head>
<body>

<div class="container">
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
			<td><input class="form-control" id="user_name" type="text" value="베란다" ></td>
		</tr>
		<tr>
			<td>ID</td>
			<td><input class="form-control" id="user_id" type="text"
				value="S10001" disabled="disabled"></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" class="form-control" placeholder="Tel" id="user_phone"></td>
		</tr>
		<tr>
			<td>부서명</td>
			<td><input class="form-control" id="team_name" type="text" value="기관영업1팀" readonly="readonly"></td>
			<td><button class="btn-primary btn-sm">부서조회</button></td>
		</tr>
		<tr>
			<td>직급</td>
			<td><input class="form-control" id="position_name" type="text" value="대리" readonly="readonly"></td>
			<td><button class="btn-primary btn-sm">직급조회</button></td>
		</tr>
		<tr>
			<td>업무소개</td>
			<td><textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="3">
				<button type="button" class="btn btn-dark">저장하기</button>
			</td>
		</tr>
	</table>
</div>

</body>
</html>
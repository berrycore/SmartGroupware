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
<link rel="stylesheet" type="text/css" href="../../css/template.css">
<title>title</title>
</head>
<body>
<table>
	<tr>
		<td colspan="2"> <h2>계정 설정</h2></td>
	<tr/>
	<tr>
		<td>이름</td>
		<td>베란다</td>
	</tr>
	<tr>
		<td>ID</td>
		<td>S10001</td>
	</tr>
	<tr>
		<td>패스워드 변경</td>
		<td><input type="password" /></td>
	</tr>
	<tr>
		<td>패스워드 변경 확인</td>
		<td><input type="password" /></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td>TEL : 02-XXX-XXXX <input type="button" value="변경하기"></td>
	</tr>
	<tr>
		<td>부서명</td>
		<td>기관영업1팀</td>
	</tr>
	<tr>
		<td>직급</td>
		<td>대리</td>
	</tr>
	<tr>
		<td>업무소개</td>
		<td>제 주특기는 로비입니다.</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="button" value="저장하기" >
		</td>
	</tr>
</table>

</body>
</html>
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
MailListView.jsp

<div>
	<h1>Smart Email</h1>
	<table>
		<tr bgcolor="yellow">
			<td>메일ID</td>
			<td>발신자</td>
			<td>수신자</td>
			<td>제목</td>
			<td>보낸날짜</td>
			<td>첨부파일</td>
		</tr>
		<tr>
			<td>E102005</td>
			<td>김형관</td>
			<td>영업1팀</td>
			<td>FW: RE: 요청자료 보내드립니다</td>
			<td>2019-11-07 15:22:30</td>
			<td>폰트파일_최종.zip</td>
		</tr>
		<tr>
			<td>E100001</td>
			<td>베란다</td>
			<td>김형관</td>
			<td>RE: 요청자료 보내드립니다</td>
			<td>2019-11-07 14:22:30</td>
			<td>폰트파일_최종.zip</td>
		</tr>
		<tr>
			<td>E100021</td>
			<td>김형관</td>
			<td>베란다</td>
			<td>요청자료 보내드립니다</td>
			<td>2019-11-05 09:52:20</td>
			<td>폰트파일.zip</td>
		</tr>
		<tr>
			<td>E090014</td>
			<td>파송송</td>
			<td>영업1팀</td>
			<td>본부별 취합 자료 요청의 건</td>
			<td>2019-11-03 11:55:40</td>
			<td>-</td>
		</tr>
	</table>
</div>
</body>
</html>
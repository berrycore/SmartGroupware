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
<link rel="stylesheet" type="text/css" href="../../css/template.css">
<title>title</title>
</head>
<body>
	<table>
		<tr>
			<td colspan="2">
				<h2>문서함</h2>
			</td>
		</tr>
		<tr>
			<td>새 문서작성</td>
			<td>불러오기</td>
		</tr>
	</table>
	<br />
	<div>
		<table>
			<tr>
				<td colspan="4"><h4>완료문서</h4></td>
			</tr>
			<tr>
				<td>문서번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>완료일</td>
			</tr>

			<!-- sample -->
			<tr>
				<td>DX-IT-2019-0003</td>
				<td>2019년 1분기 법인카드 사용내역</td>
				<td>김현관</td>
				<td>2019년4월2일</td>
			</tr>
			<tr>
				<td>DX-IT-2019-0002</td>
				<td>2019년 월간 실적 보고</td>
				<td>베란다</td>
				<td>2019년2월5일</td>
			</tr>
			<tr>
				<td>DX-IT-2019-0001</td>
				<td>2019년 예산 수립 보고</td>
				<td>베란다</td>
				<td>2019년1월10일</td>
			</tr>
			<tr>
				<td>...</td>
				<td>...</td>
				<td>...</td>
				<td>...</td>
			</tr>
			<tr>
				<td>...</td>
				<td>...</td>
				<td>...</td>
				<td>...</td>
			</tr>
		</table>
		< 1  2  3  4  5 ... 80 >
	</div>
</body>
</html>
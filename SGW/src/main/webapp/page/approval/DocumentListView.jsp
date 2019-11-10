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
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<title>DocumentListView.jsp</title>
</head>
<body>
	<table>
		<tr>
			<td colspan="2">
				<h2>문서함</h2>
			</td>
		</tr>
		<tr>
			<td>
				<button type="button" class="btn btn-primary">새 문서작성</button>
			</td>
			<td>
				<button type="button" class="btn btn-primary">불러오기</button>
			</td>
		</tr>
	</table>
	<br />
	<div>
	
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		  <a class="navbar-brand" href="#">완료문서</a>
		  <div class="collapse navbar-collapse" id="navbarColor01">
			
		    <form class="form-inline my-2 my-lg-0">
		    	<select class="form-control" id="exampleSelect1">
	        		<option>문서번호</option>
	        		<option>제목</option>
	        		<option>작성자</option>
	      		</select>
	      		&nbsp;
		      <input class="form-control mr-sm-2" type="text" placeholder="Search">
		      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
		    </form>
		  </div>
		</nav>
	
		<table class="table-light">
			<tr class="table-dark">
				<td colspan="4" ><h4>검색결과</h4></td>
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
		
		<!-- navi -->
		<div>
		  <ul class="pagination">
		    <li class="page-item disabled">
		      <a class="page-link" href="#">&laquo;</a>
		    </li>
		    <li class="page-item active">
		      <a class="page-link" href="#">1</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">2</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">3</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">4</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">5</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">&raquo;</a>
		    </li>
		  </ul>
		</div>
		
	</div>
</body>
</html>
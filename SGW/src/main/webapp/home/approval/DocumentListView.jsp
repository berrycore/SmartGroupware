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
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<title>DocumentListView.jsp</title>
</head>
<body>

<div class="container">
		<h2>Documents</h2>

			<nav class="navbar navbar-expand-lg navbar-dark bg-primary"
				style="margin: 24px 0;">
				<a class="navbar-brand" href="javascript:void(0)">문서함</a>
				<button class="navbar-toggler navbar-toggler-right" type="button"
					data-toggle="collapse" data-target="#navb">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navb">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item"><a class="nav-link" href="javascript:void(0)">새문서 작성</a></li>
						
						<!-- Dropdown -->
					    <li class="nav-item dropdown">
					      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
					        문서함
					      </a>
					      <div class="dropdown-menu">
					        <a class="dropdown-item" href="#">완료문서</a>
					        <a class="dropdown-item" href="#">결재중 문서</a>
					      </div>
					    </li>
					</ul>
					
					
					<!-- search -->			
					<form class="form-inline my-2 my-lg-0">
						<input class="form-control mr-sm-2" type="text"
							placeholder="Search">
						<button class="btn btn-success my-2 my-sm-0" type="button">Search</button>
					</form>
				</div>
			</nav>
				
		

		<table class="table table-hover">
			<thead>
				<tr>
					<th>문서번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>완료일</th>
				</tr>
			</thead>
			<tbody>
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
		
		<!-- pagination -->
		<ul class="pagination">
			<li class="page-item"><a class="page-link" href="#">Previous</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item active"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">Next</a></li>
		</ul>
		
	</div><!-- end of container -->

</body>
</html>
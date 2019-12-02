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
<link rel="stylesheet" href="/css/w3.css">
<link rel="stylesheet" href="/css/bootstrap.css">

<title>MailViewList.jsp</title>
</head>
<body>
	
	<div class="container">
		<h2>Smart Email</h2>

			<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
				style="margin: 24px 0;">
				<a class="navbar-brand" href="javascript:void(0)">전체메일</a>
				<div class="collapse navbar-collapse" id="navb">
				<button class="navbar-toggler navbar-toggler-right" type="button"
					data-toggle="collapse" data-target="#navb">
					<span class="navbar-toggler-icon"></span>
				</button>

					<div class="collapse navbar-collapse" id="navb">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item"><a class="nav-link"
								href="javascript:void(0)">편지쓰기</a></li>
							<li class="nav-item"><a class="nav-link"
								href="javascript:void(0)">받은편지</a></li>
							<li class="nav-item"><a class="nav-link"
								href="javascript:void(0)">보낸편지</a></li>
						</ul>
						<form class="form-inline my-2 my-lg-0">
							<input class="form-control mr-sm-2" type="text"
								placeholder="Search">
							<button class="btn btn-success my-2 my-sm-0" type="button">Search</button>
						</form>
					</div>
				</div>
			</nav>
				
		

		<table class="table table-sm table-hover">
			<thead class="thead-dark">
				<tr>
					<th>메일ID</th>
					<th>발신</th>
					<th>수신</th>
					<th>제목</th>
					<th>받은시간</th>
					<th>첨부파일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>E102005</td>
					<td>김형관</td>
					<td>영업1팀</td>
					<td>
						<span class="badge badge-warning">New</span>&nbsp; 
						<a href="#">
							FW: RE: 요청자료 보내드립니다
						</a> 
					</td>
					<td>2019-11-07 15:22:30</td>
					<td>폰트파일_최종.zip</td>
				</tr>
				<tr>
					<td>E100001</td>
					<td>베란다</td>
					<td>김형관</td>
					<td>
						<a href="#">
							RE: 요청자료 보내드립니다
						</a>
					</td>
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
		
		<!-- pagination -->
		<ul class="pagination" >
			<li class="page-item"><a class="page-link" href="#">Previous</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item active"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">Next</a></li>
		</ul>
		
	</div><!-- end of container -->
</body>
</html>
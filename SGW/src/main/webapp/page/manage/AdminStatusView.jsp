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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<title>관리 설정</title>
</head>
<body>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<!-- Brand/logo -->
		<a class="navbar-brand" href="#">관리설정</a>

		<!-- Links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="#">계정설정</a></li>
			<li class="nav-item"><a class="nav-link" href="#">부서설정</a></li>
			<li class="nav-item"><a class="nav-link" href="#">게시판설정</a></li>
		</ul>
	</nav>
	
	
		
		<form class="form-inline my-2 my-lg-0">
			
			<!-- Dropdown -->
			<ul class="navbar-nav">
		    <li class="nav-item dropdown">
		      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
		      	검색조건
		      </a>
		      <div class="dropdown-menu">
		        <a class="dropdown-item" href="#">ID</a>
		        <a class="dropdown-item" href="#">이름</a>
		      </div>
		    </li>
		    </ul>
			 
			<input class="form-control mr-sm-2" type="text" placeholder="Search">
			<button class="btn btn-success my-2 my-sm-0" type="button">Search</button>
		</form>
	
	<table class="table">
		<thead>
			<tr>
				<th>ID</th>
				<th>이름</th>
				<th>소속</th>
				<th>관리</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>19113</td>
				<td>베란다</td>
				<th>영업1팀</th>
				<th> <button class="btn btn-primary btn-sm">수정하기</button> </th>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="4"></td>
			</tr>
		</tfoot>
	</table>
		
</body>
</html>
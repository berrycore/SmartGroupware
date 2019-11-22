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
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<title>Smart Group Ware</title>
</head>

<body>

	<a href="login/loginUser.html"><button >로그인</button></a> 

	<div class="wrapper">
		<!-- Sidebar Holder -->
		<nav id="sidebar">
			<div class="sidebar-header">
				<h3>Smart</h3>
				<h4>GroupWare</h4>
			</div>

			<ul class="list-unstyled components">
				<h4 style="padding-left: 5px">김현관</h4>
				<span class="badge badge-light">Manager</span>

				<li class="active"><a href="#homeSubmenu"
					data-toggle="collapse" aria-expanded="false"> 메일 <span
						class="badge badge-danger">1</span>
				</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						<li><a href="#">Inbox</a></li>
						<li><a href="#">보낸편지함</a></li>
						<li><a href="#">휴지통</a></li>
					</ul>
				</li>
				<li>
					<!--                         <a href="#">About</a> --> <a
					href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">
						전자결재 <span class="badge badge-danger">3</span>
				</a>
					<ul class="collapse list-unstyled" id="pageSubmenu">
						<li><a href="#">기안하기</a></li>
						<li><a href="#">결재할 문서</a></li>
						<li><a href="#">완료 문서</a></li>
						<li><a href="#">결재 조회</a></li>
					</ul>
				</li>
				<li><a href="#boardSubmenu" data-toggle="collapse"
					aria-expanded="false">게시판</a>
					<ul class="collapse list-unstyled" id="boardSubmenu">
						<li><a href="#">전사공지</a></li>
						<li><a href="#">Team 게시판</a></li>
					</ul></li>
				<li><a href="#">내 정보</a></li>
				<li><a href="manage/userList.html">사용자 리스트</a></li>
				<li><a href="manage/userAdd.html">사용자 등록</a></li>
				<li><a href="manage/managePermission.html">권한관리</a></li>
			</ul>

			<!--                 <ul class="list-unstyled CTAs"> -->
			<!--                     <li><a href="#" class="download">Download</a></li> -->
			<!--                     <li><a href="#" class="article">Back to</a></li> -->
			<!--                 </ul> -->
		</nav>

		<!-- Page Content Holder -->
		<div id="content">

			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<div class="navbar-header navbar-left">
						<button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
							<i class="glyphicon glyphicon-align-left"></i> 
							<span>Toggle Sidebar</span>
						</button>
						<a href="#"> <button type="button" class="btn btn-warning">Logout</button> </a>
						
						
							<div class="dropdown">
								
									<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
								    	Language
								  	</button>
								  	<div class="dropdown-menu">
								    	<a class="dropdown-item" href="#">Korean</a>
								    	<a class="dropdown-item" href="#">English</a>
								  	</div>
							</div>
							
					</div>	
					
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							
						</ul>
					</div>
				</div>
			</nav>

			<jsp:include page="main.jsp" />

		</div>
	</div>





	<!-- jQuery CDN -->
	<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
	<!-- Bootstrap Js CDN -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


	<script type="text/javascript">
		$(document).ready(function() {
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
			});
		});
	</script>
</body>
</html>
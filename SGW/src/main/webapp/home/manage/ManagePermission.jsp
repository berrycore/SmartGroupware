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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<title>권한 관리</title>
</head>
<body>
	<div class="container-fluid">
		<h2>권한 관리</h2>
		<br>
		<!-- Nav tabs -->
		<ul class="nav nav-tabs" role="tablist">
			<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#home">시스템 설정</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu1">사용자 설정</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu2">부서 설정</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu3">직급 설정</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu4">메뉴 설정</a></li>
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			<div id="home" class="container tab-pane active">
				<br>
				<h3>접속 가능 IP 설정</h3>
				
				<div class="input-group mb-3">
 						<input type="text" class="form-control" value="127.0.0.1,192.168.0.100">
 						<div class="input-group-append">
   						<button class="btn btn-success" type="submit">저장</button>
				  	</div>
				</div>
				
				<div class="toast" data-autohide="false">
			 		<div class="toast-header">
			 			<strong class="mr-auto text-primary">유의사항</strong>
			    	
			    	 <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
			 		 </div>
			 		
			  	<div class="toast-body">
			    	콤마 , 단위로 구분합니다
			  	</div>

				<!-- Toast script -->			  	
			  	<script>
			  		$(document).ready(function(){
						$('.toast').toast('show');
					});
				</script>
			  	
			</div>
				
			</div>
			
			<div id="menu1" class="container tab-pane fade">
				<jsp:include page="UserAdd.jsp"></jsp:include>
			</div>
			
			<div id="menu2" class="container tab-pane fade">
				<jsp:include page="TeamAdd.jsp"></jsp:include>
			</div>
			<div id="menu3" class="container tab-pane fade">
				<jsp:include page="PositionAdd.jsp"></jsp:include>	
			</div>
			<div id="menu4" class="container tab-pane fade">
				<jsp:include page="MenuAccessManage.jsp"></jsp:include>	
			</div>
		</div>
	</div>
</body>
</html>
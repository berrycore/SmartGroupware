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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>사용자 ID 중복체크</title>
</head>
<body>

	<script >
		//TODO user_id_OK function
	</script>

<h2>사용자 ID 중복체크</h2>
<div style="margin: 10px">
	<form class="form-inline my-2 my-lg-0">
		<input class="form-control mr-sm-2" type="text" placeholder="ID">
		<button class="btn btn-success my-2 my-sm-0" type="button">Search</button>
		&nbsp;
		<button class="btn btn-success my-2 my-sm-0" type="button">Confirm</button>
		
		<div style="margin-top: 10px" class="toast" data-autohide="false">
	 		<div class="toast-header">
	 			<strong class="mr-auto text-primary">유의사항</strong>
	    		<button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
	 		</div>
			 		
			<div class="toast-body">
				<p>
			         회사코드 2자리를 제외한 숫자6개만 입력해 주세요 <br/>
			         예) 191103 <br/>
			      19년도 11월 3번째 입사자 <br/>
			    </p>
			</div>

			<!-- Toast script -->			  	
		  	<script>
		  		$(document).ready(function(){
					$('.toast').toast('show');
				});
			</script>
		</div>
	</form>
</div>
</body>
</html>

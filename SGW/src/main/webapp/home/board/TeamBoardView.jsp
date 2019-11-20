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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<title>글 보기</title>
</head>
<body>

	<div class="container">
		<form action="">
			
			 <div class="input-group mb-3">
			    <div class="input-group-prepend">
			       <span class="input-group-text">제목</span>
			    </div>
			    <input type="text" class="form-control bg-light" value="팀회식 합시다" disabled="disabled">
			 </div>
			 
			 <div class="input-group mb-3">
			    <div class="input-group-prepend">
			       <span class="input-group-text">작성자</span>
			       <input type="text" class="form-control bg-light" value="베란다" disabled="disabled">
			    </div>
			    <div class="input-group-prepend">
			       <span class="input-group-text">작성시간</span>
			       <input type="text" class="form-control bg-light" value="2019-11-10" disabled="disabled">
			    </div>
			    <div class="input-group-prepend">
			       <span class="input-group-text">첨부파일</span>
			       <input type="text" class="form-control bg-light" value="" disabled="disabled">
			    </div>
			    
			 </div>
			
			<div>
				<div class="form-group">
					<textarea class="form-control" rows="10" id="board_content">

    - 다 음 -

1) 장소 : 북한산 둘레길(우이동)
2) 시간 : 2019년 12월 7일(토) 14:00 까지

※ 유의사항 : 참석이 어려우신 분은 댓글 달아주세요 


					</textarea>
				</div>

				
			</div>

			<p>댓글 : </p>
			
			<!-- 댓글 위치 -->
			<div class="card" style="margin-top: 5px">
			    <h5 class="card-header">
			    	<span class="badge badge-dark" style="margin-left: 10px">최팀장</span>
			    	<span class="badge badge-info" style="margin-left: 10px">2019-11-10 20:01:40</span>
			    </h5>
			    <div class="card-body">
			      
			      <p class="card-text">개인사정으로 불참합니다 죄송합니다</p>
			  </div>
			</div>
			
			<!-- 댓글 위치 -->
			<div class="card" style="margin-top: 5px">
			    <h5 class="card-header">
			    	<span class="badge badge-dark" style="margin-left: 10px">김현관</span>
			    	<span class="badge badge-info" style="margin-left: 10px">2019-11-10 21:20:25</span>
			    </h5>
			    <div class="card-body">
			      <p class="card-text">저는 그날 당직이라 불참 합니다</p>
			  </div>
			</div>
			
			<!-- 댓글 위치 -->
			<div class="card" style="margin-top: 5px">
			    <h5 class="card-header">
			    	<span class="badge badge-dark" style="margin-left: 10px">박수범</span>
			    	<span class="badge badge-info" style="margin-left: 10px">2019-11-12 09:10:42</span>
			    </h5>
			    <div class="card-body">
			      <p class="card-text">헉 저도 참석이 어렵습니다 ㅠㅠ</p>
			  </div>
			</div>
			
			<!-- 댓글 남기기 -->
			<div class="card" style="margin-top:10px">
				<h6 class="card-header">댓글 남기기</h6>
				<div class="card-body">
					<textarea class="form-control" rows="3" id="board_content" placeholder="댓글을 입력해주세요">
					</textarea>
					<button type="submit" class="btn btn-primary" style="margin-top: 2px">댓글남기기</button>
				</div>
			</div>

			<button type="button" class="btn btn-success" style="margin: 5px">닫기</button>
			<button type="button" class="btn btn-warning" style="margin: 5px">삭제</button>
		</form>
	</div>

</body>
</html>
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

<!-- summer note editor -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">

<title>글 보기</title>
</head>
<body>
<script>
// summer note
$(document).ready(function(){
	$('#summernote').summernote({
		placeholder: '',
    tabsize: 2,
    height: 300
	});
});
</script>
	<div class="container">
		
			<form:form action="appendReply.html" method="post" modelAttribute="reply">
			 <div class="input-group mb-3">
			    <div class="input-group-prepend">
			       <span class="input-group-text">제목</span>
			       <input type="text" class="form-control bg-light" value="${board.board_title}" readonly="readonly">
			    </div>
			 </div>
			 
			 <div class="input-group mb-3">
			    <div class="input-group-prepend">
			       <span class="input-group-text">작성자</span>
			       <input type="text" class="form-control bg-light" value="${board.board_writer_name}" readonly="readonly">
			    </div>
			    <div class="input-group-prepend">
			       <span class="input-group-text">작성시간</span>
			       <input type="text" class="form-control bg-light" value="${board.board_date_regist}" readonly="readonly">
			    </div>
			    <div class="input-group-prepend">
			       <span class="input-group-text">첨부파일</span>
			       <input type="text" class="form-control bg-light" value="" readonly="readonly">
			    </div>
			    
			 </div>
			
			<div>
				<div class="form-group">
					<textarea id="summernote" name="board_content" >${board.board_content }</textarea>
<%-- 					<textarea class="form-control" rows="10" id="board_content">${board.board_content }</textarea> --%>
				</div>
			</div>

			<p>댓글 : </p>
			
			<!-- 댓글 위치 -->
			<c:forEach items="${replyList }" var="reply">
				<div class="card" style="margin-top: 5px">
				    <h5 class="card-header">
				    	<span class="badge badge-dark" style="margin-left: 5px">${reply.reply_writer_name }</span>
				    	<span class="badge badge-info" style="margin-left: 5px">${reply.reply_date_regist }</span>
				    </h5>
				    <div class="card-body">
				      <p class="card-text">${reply.reply_content }</p>
				  </div>
				</div>
			</c:forEach>
			
			<!-- 댓글 남기기 -->
			
				<input type="hidden" name="board_id" value="${board.board_id }" />
				<div class="card" style="margin-top:10px">
					<h6 class="card-header">댓글 남기기</h6>
					<div class="card-body">
						<textarea class="form-control" rows="3" name="reply_content" placeholder="댓글을 입력해주세요"></textarea>
						<font color="red"><form:errors path="reply_content"/></font>
						<button type="submit" class="btn btn-primary" style="margin-top: 2px">댓글남기기</button>
					</div>
				</div>
			</form:form>

			<button type="button" class="btn btn-success" style="margin: 5px">닫기</button>
			<button type="button" class="btn btn-warning" style="margin: 5px">삭제</button>
			<a href="board/TeamBoardList.html"> <button type="button" class="btn btn-primary" style="margin: 5px">목록으로</button> </a>
	</div>

</body>
</html>
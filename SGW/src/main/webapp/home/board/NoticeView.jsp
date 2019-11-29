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
<link rel="stylesheet" href="../css/w3.css">
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../ckeditor/contents.css">
<script src="../ckeditor/ckeditor.js"></script>

<title>글 보기</title>
</head>
<body>

	<div class="container">
		
			
			 <div class="input-group mb-3">
			    <div class="input-group-prepend">
			       <span class="input-group-text">제목</span>
			       <input type="text" class="form-control bg-light" value="${notice.notice_title}" readonly="readonly">
			    </div>
			 </div>
			 
			 <div class="input-group mb-3">
			    <div class="input-group-prepend">
			       <span class="input-group-text">작성자</span>
			       <input type="text" class="form-control bg-light" value="${notice.notice_writer_name}" readonly="readonly">
			    </div>
			    <div class="input-group-prepend">
			       <span class="input-group-text">작성시간</span>
			       <input type="text" class="form-control bg-light" value="${notice.notice_date_regist}" readonly="readonly">
			    </div>
			    <div class="input-group-prepend">
			       <span class="input-group-text">첨부파일</span>
			       <input type="text" class="form-control bg-light" value="${notice.notice_attached_file_name }" readonly="readonly">
			    </div>
			    
			 </div>
			
			<div>
				<div class="form-group">
					<textarea id="editor" name="notice_content" readonly="readonly" >${notice.notice_content }</textarea>
				</div>
			</div>
			
			<button type="button" class="btn btn-success" style="margin: 5px">닫기</button>
			<a href="/board/NoticeDelete.html?notice_id=${notice.notice_id}"> <button type="button" class="btn btn-warning" style="margin: 5px"> 삭제 </button></a>
			<a href="/board/NoticeUpdate.html?notice_id=${notice.notice_id}"> <button type="button" class="btn btn-secondary" style="margin: 5px">수정</button></a>
			<a href="/board/NoticeListView.html"> <button type="button" class="btn btn-primary" style="margin: 5px">목록으로</button> </a>
	</div>
	
	<!-- ckeditor -->
	<script>
		CKEDITOR.replace("editor", {
			width:'100%',
			height:'300px',
			removePlugins: 'elementspath',
			toolbar:[]
		});

		
	</script>

</body>
</html>
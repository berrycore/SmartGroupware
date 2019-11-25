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

<title>새 글 작성</title>
</head>
<body>

	<div class="container">
		<form action="">
			<h2>새 글 작성</h2>
		
			<div class="form-group">
				<label for="board_title">제목:</label> 
				<input type="text" class="form-control" id="board_title">
			</div>
			<div>
				<label for="board_content">본문:</label> 
				<textarea class="form-control" id="board_content" rows="10"></textarea>
			</div>
			
			<div class="custom-file">
				<input type="file" class="custom-file-input" id="customFile">
				<label class="custom-file-label" for="customFile">Choose file</label>
			</div>
			
			<button type="submit" class="btn btn-primary">등록</button>
		</form>
	</div>


	<script>
		// Add the following code if you want the name of the file appear on select
		$(".custom-file-input").on("change", function() {
		  var fileName = $(this).val().split("\\").pop();
		  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
		});
	</script>

</body>
</html>

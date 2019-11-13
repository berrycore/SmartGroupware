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

<title>DocumentWriteNew.jsp</title>
</head>
<body>

<div class="container">
	
	<!-- document interface -->
	<table class="table">
		<thead>
			<tr>
				<td >
					<form class="form-inline" action="#">
						  <button type="button" class="btn btn-danger btn-sm m-1">결재올림</button>
<!-- 						  <button type="button" class="btn btn-secondary btn-sm m-1">결재선</button> -->
						  <button type="button" class="btn btn-secondary btn-sm m-1">임시저장</button>
						  <button type="button" class="btn btn-warning btn-sm m-1">문서삭제</button>
					</form>
				</td>
			</tr>
		</thead>
		
		<tbody>
			<tr>
				<td>
					<!-- approval line-->
					<!-- approval line-->
					<table class="table-bordered table-sm">
						<tr>
							<td>
								<small>대리</small>								
							</td>
							<td><small>-</small></td>
							<td><small>-</small></td>
							<td><small>-</small></td>
							<td><small>-</small></td>
						</tr>
						<tr>
							<td style="height:50px;width:60px">
								<small>베란다</small>
							</td>
							<td style="height:50px;width:60px">
								<small> <a href=""><span class="badge badge-info">설정하기</span></a> </small>
							</td>
							<td style="height:50px;width:60px">
								<small> <a href=""><span class="badge badge-info">설정하기</span></a> </small>
							</td>
							<td style="height:50px;width:60px">
								<small> <a href=""><span class="badge badge-info">설정하기</span></a> </small>
							</td>
							<td style="height:50px;width:60px">
								<small> <a href=""><span class="badge badge-warning">설정하기</span></a> </small>
							</td>
						</tr>
						<tr>
							<td><small>-</small></td>
							<td><small>-</small></td>
							<td><small>-</small></td>
							<td><small>-</small></td>
							<td><small>-</small></td>
						</tr>
					</table>
					
				</td>
			</tr>
			
			<tr>
				<td>
					
					<table class="table">
						<thead>
							<tr>
								<th>
									<div class="input-group mb-3">
									    <div class="input-group-prepend">
									      <span class="input-group-text">제목</span>
									    </div>
									    <input type="text" class="form-control">
									</div>	
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<textarea class="form-control" rows="10" id="document_content"></textarea>
								</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td>
									<div class="custom-file">
										<input type="file" class="custom-file-input" id="customFile">
										<label class="custom-file-label" for="customFile">Choose file</label>
									</div>
								</td>
							</tr>
						</tfoot>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
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
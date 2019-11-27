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
<script src="../ckeditor/ckeditor.js"></script>

<title>DocumentWriteNew.jsp</title>
</head>
<body>

	<div class="container">
		<form:form action="../approval/DocumentWriteNewSubmit.html" modelAttribute="elecDocument" method="post">
			<!-- document interface -->
			<table class="table table-sm">
				<thead>
					<tr>
						<td>
							<div class="form-inline" >
								<button type="submit" class="btn btn-danger btn-sm m-1">결재올림</button>
								<!-- 						  <button type="button" class="btn btn-secondary btn-sm m-1">결재선</button> -->
								<button type="button" class="btn btn-secondary btn-sm m-1">임시저장</button>
								<button type="button" class="btn btn-warning btn-sm m-1">문서삭제</button>
							</div>
						</td>
					</tr>
				</thead>

				<tbody>
					<tr>
						<td>
							<!-- approval line--> <!-- approval line-->
							<table class="table-bordered table-sm">
								<tr>
									<td><small>${user.position.position_name }</small></td>
									<td><small>-</small></td>
									<td><small>-</small></td>
									<td><small>-</small></td>
									<td><small>대표이사</small></td>
								</tr>
								<tr>
									<td style="height: 50px; width: 60px">
										<small>${user.user_name }</small>
									</td>
									<td style="height: 50px; width: 60px">
										<div><small>-</small></div>
										<small><a href=""><span class="badge badge-info">설정하기</span></a></small>
									</td>
									<td style="height: 50px; width: 60px">
										<div><small>-</small></div>
										<small><a href=""><span class="badge badge-info">설정하기</span></a></small>
									</td>
									<td style="height: 50px; width: 60px">
										<div><small>-</small></div>
										<small><a href=""><span class="badge badge-info">설정하기</span></a></small>
									</td>
									<td style="height: 50px; width: 60px">
										<div><small>나사장</small></div>
										<small><a href=""><span class="badge badge-warning" id="approval_final_name">설정하기</span></a></small>
										<input type="hidden" name="final_id">
									</td>
								</tr>
								<tr>
									<!-- approval date -->
									<td><small>-</small></td>
									<td><small>-</small></td>
									<td><small>-</small></td>
									<td><small>-</small></td>
									<td><small>-</small></td>
								</tr>
							</table>
							
							<font color="red"><form:errors path="final_id" /></font>
							
						</td>
					</tr>

					<tr>
						<td>

							<table class="table">
								<thead>
									<tr>
										<th>
											<div class="input-group">
												<div class="input-group-prepend">
													<span class="input-group-text">제목</span>
												</div>
												<input type="text" name="document_title" class="form-control">
											</div>
											<font color="red"><form:errors path="document_title" /></font>
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
										  <textarea name="document_content" id="editor"></textarea>
											<font color="red"><form:errors path="document_content" /></font>
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
		</form:form>
	</div>

	<script>
		// Add the following code if you want the name of the file appear on select
		$(".custom-file-input").on(
				"change",
				function() {
					var fileName = $(this).val().split("\\").pop();
					$(this).siblings(".custom-file-label").addClass("selected")
							.html(fileName);
				});
	</script>

	<!-- ckeditor -->
	<script>
		CKEDITOR.replace("editor", {
			width : '100%',
			height : '300px'
		});
	</script>

</body>
</html>
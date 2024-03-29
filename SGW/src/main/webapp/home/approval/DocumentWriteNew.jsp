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
<link rel="stylesheet" href="/css/w3.css">
<link rel="stylesheet" href="/css/bootstrap.css">
<script src="/ckeditor/ckeditor.js"></script>

<script>
  function popup_second_search(){
  	var url = "SecondSearch.html"
  	var name = "UserSearch"
  	var option = "width = 700, height = 400, top = 100, left = 200, location = no";
  	window.open(url, name, option);
  	return false;
  }
  function popup_third_search(){
	  	var url = "ThirdSearch.html"
	  	var name = "UserSearch"
	  	var option = "width = 700, height = 400, top = 100, left = 200, location = no";
	  	window.open(url, name, option);
	  	return false;
	}
  function popup_fourth_search(){
	  	var url = "FourthSearch.html"
	  	var name = "UserSearch"
	  	var option = "width = 700, height = 400, top = 100, left = 200, location = no";
	  	window.open(url, name, option);
	  	return false;
	}
	function popup_final_search(){
		var url = "FinalSearch.html"
		var name = "UserSearch"
		var option = "width = 700, height = 400, top = 100, left = 200, location = no";
		window.open(url, name, option);
		return false;
	}
</script>

<title><spring:message code="sgw.document.newdocument"/></title>
</head>
<body class="w3-dark-grey">

	<div class="container">
		<form:form action="/approval/DocumentWriteNewSubmit.html" modelAttribute="elecDocument" method="post" name="frm_document">
			
		<div class="w3-card-4">	
			<header class="w3-container">
	  		<h1><spring:message code="sgw.document.newdocument" /></h1>
			</header>
			
			<div class="w3-container">
			
			<table class="table table-sm w3-white">
				<thead>
					<tr>
						<td>
							<div class="form-inline" >
								<button type="submit" class="btn btn-danger btn-sm m-1"><spring:message code="sgw.document.draftout"/></button>
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
									<td><small><input type="text" name="second_position" value="-" maxlength="4" size="4" readonly="readonly"  style="border: 0px;" /></small></td>
									<td><small><input type="text" name="third_position" value="-" maxlength="4" size="4" readonly="readonly"  style="border: 0px;" /></small></td>
									<td><small><input type="text" name="fourth_position" value="-" maxlength="4" size="4" readonly="readonly"  style="border: 0px;" /></small></td>
									<td><small><input type="text" name="final_position" value="-" maxlength="4" size="4" readonly="readonly"  style="border: 0px;" /></small></td>
								</tr>
								<tr>
									<td style="height: 50px; width: 60px">
										<small>${user.user_name }</small>
									</td>
									<td style="height: 50px; width: 60px">
										<div>
											<small>
												<input type="hidden" name="second_id" value="-">
												<input type="text" name="second_name" value="-" maxlength="4" size="4" readonly="readonly"  style="border: 0px;" />
											</small>
										</div>
										<small><button class="btn btn-info btn-sm" style="padding: 0.25em 0.4em;font-size: 75%;" id="approval_second_name" onclick="return popup_second_search(id)"><spring:message code="sgw.document.setting"/></button></small>
									</td>
									<td style="height: 50px; width: 60px">
										<div>
											<small>
												<input type="hidden" name="third_id" value="-">
												<input type="text" name="third_name" value="-" maxlength="4" size="4" readonly="readonly"  style="border: 0px;" />
											</small>
										</div>
										<small><button class="btn btn-info btn-sm" style="padding: 0.25em 0.4em;font-size: 75%;" id="approval_third_name" onclick="return popup_third_search(id)"><spring:message code="sgw.document.setting"/></button></small>
									</td>
									<td style="height: 50px; width: 60px">
										<div>
											<small>
												<input type="hidden" name="fourth_id" value="-">
												<input type="text" name="fourth_name" value="-" maxlength="4" size="4" readonly="readonly"  style="border: 0px;" />
											</small>
										</div>
										<small><button class="btn btn-info btn-sm" style="padding: 0.25em 0.4em;font-size: 75%;" id="approval_fourth_name" onclick="return popup_fourth_search(id)"><spring:message code="sgw.document.setting"/></button></small>
									</td>
									<td style="height: 50px; width: 60px">
										<div>
											<small>
												<input type="hidden" name="final_id">
												<input type="text" name="final_name" value="-" maxlength="4" size="4" readonly="readonly"  style="border: 0px;" />
											</small>
										</div>
										<small><button class="btn btn-primary btn-sm" style="padding: 0.25em 0.4em;font-size: 75%;" id="approval_final_name" onclick="return popup_final_search(id)"><spring:message code="sgw.document.setting"/></button></small>
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
													<span class="input-group-text"><spring:message code="sgw.document.title"/></span>
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
<!-- 											<div class="custom-file"> -->
<!-- 												<input type="file" class="custom-file-input" id="customFile"> -->
<!-- 												<label class="custom-file-label" for="customFile">Choose file</label> -->
<!-- 											</div> -->
										</td>
									</tr>
								</tfoot>
							</table>

						</td>
					</tr>
				</tbody>
			</table>
			</div>
			</div>
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
			height : '200px',
			removePlugins: 'elementspath'
		});
	</script>

</body>
</html>
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

<title>DocumentView</title>
</head>
<body>

<div class="container">
	
	<!-- document interface -->
	<table class="table">
		<thead>
			<tr>
				<td >
					<form class="form-inline" action="#">
						  <button type="button" class="btn btn-secondary btn-sm m-1">닫기</button>
					</form>
				</td>
			</tr>
		</thead>
		
		<tbody>
			<tr>
				<td>
					<!-- approval line-->
					<table class="table-bordered table-sm">
						<tr>
							<td>
								<small>기안자</small>								
							</td>
							<td><small>결재선2</small></td>
							<td><small>결재선3</small></td>
							<td><small>결재선4</small></td>
							<td><small>Final직급</small></td>
						</tr>
						<tr>
							<td style="height:50px;width:60px">
								<small>베란다</small>
							</td>
							<td style="height:50px;width:60px">
								<small>이름2</small>
							</td>
							<td style="height:50px;width:60px">
								<small>이름3</small>
							</td>
							<td style="height:50px;width:60px">
								<small>이름4</small>
							</td>
							<td style="height:50px;width:60px">
								<small>Final이름</small>
							</td>
						</tr>
						<tr>
							<td><small>2019/11/03</small></td>
							<td><small>-</small></td>
							<td><small>-</small></td>
							<td><small>-</small></td>
							<td><small>2019/11/11</small></td>
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
									    <input type="text" value="2019년 3분기 실적 보고" class="form-control" id="document_title" disabled="disabled" >
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
									<!-- attached file -->
									<a href="#">보고자료.zip</a>	
								</td>
							</tr>
						</tfoot>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
</div>

</body>
</html>
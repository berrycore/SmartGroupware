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


<title>title</title>
</head>
<body>
<h2>부서 설정</h2>
<div class="container">
	<div class="row">
		<div class="col-xs-6">
		
				<!-- tree viewer -->
				<ul id="myUL" class="border">
				  <li><span class="caret">우리회사</span>
				    <ul class="nested">
				      <li>임원실</li>
				      <li><span class="caret">경영본부</span>
				        <ul class="nested">
				          <li>업무지원팀</li>
				          <li>회계팀</li>
				        </ul>
				      </li>
				      <li>개발팀</li>
				    </ul>
				  </li>
				</ul>
		</div>
		<div class="col-xs-6">
			
			<!-- team list -->
			<table class="table border">
				<thead>
					<tr>
						<th>부서ID</th>
						<th>부서명</th>
						<th>상위부서명</th>
						<th>설정</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>T0001</td>
						<td>우리회사</td>
						<td>-</td>
						<td> <button class="btn btn-warning">삭제</button>
							<button class="btn btn-primary">수정</button> 
						</td>
					</tr>
					<tr>
						<td>T0002</td>
						<td>임원실</td>
						<td>우리회사</td>
						<td> <button class="btn btn-warning">삭제</button>
							<button class="btn btn-primary">수정</button> 
						</td>
					</tr>
					<tr>
						<td>T0003</td>
						<td>경영본부</td>
						<td>우리회사</td>
						<td> <button class="btn btn-warning">삭제</button>
							<button class="btn btn-primary">수정</button> 
						</td>
					</tr>
					<tr>
						<td>T0004</td>
						<td>업무지원팀</td>
						<td>경영본부</td>
						<td> <button class="btn btn-warning">삭제</button>
							<button class="btn btn-primary">수정</button> 
						</td>
					</tr>
					<tr>
						<td>T0005</td>
						<td>회계팀</td>
						<td>경영본부</td>
						<td> <button class="btn btn-warning">삭제</button>
							<button class="btn btn-primary">수정</button> 
						</td>
					</tr>
					<tr>
						<td>T0006</td>
						<td>개발팀</td>
						<td>우리회사</td>
						<td> <button class="btn btn-warning">삭제</button>
							<button class="btn btn-primary">수정</button> 
						</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="4">
							<button class="btn btn-secondary">추가하기</button>
							
						</td>
					</tr>
				</tfoot>
			</table>
			
		</div>
	</div>
</div>


 




</body>
</html>
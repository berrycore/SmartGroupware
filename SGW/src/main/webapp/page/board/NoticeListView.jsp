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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<title>NoticeListView.jsp</title>
</head>
<body>
	<div>
		<div class="container">
			<h2>Notice</h2>

			<nav class="navbar navbar-expand-lg navbar-light bg-light"
				style="margin: 24px 0;">
				<a class="navbar-brand" href="javascript:void(0)">게시판</a>
				<div class="collapse navbar-collapse" id="navb">
					<button class="navbar-toggler navbar-toggler-right" type="button"
						data-toggle="collapse" data-target="#navb">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navb">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item"><a class="nav-link"
								href="javascript:void(0)">전사공지</a></li>
							<li class="nav-item"><a class="nav-link"
								href="javascript:void(0)">Team 게시판</a></li>
						</ul>
						<form class="form-inline my-2 my-lg-0">
							<input class="form-control mr-sm-2" type="text"
								placeholder="Search">
							<button class="btn btn-success my-2 my-sm-0" type="button">Search</button>
						</form>
					</div>
				</div>
			</nav>



			<table class="table table-sm table-bordered table-hover">
				<thead>
					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>21</td>
						<td>창립기념일 공지</td>
						<td>베란다</td>
						<td>2019-11-07</td>
					</tr>
					<tr>
						<td>20</td>
						<td>추석 선물 안내</td>
						<td>김현관</td>
						<td>2019-11-01</td>
					</tr>
					<tr>
						<td>19</td>
						<td>2018년도 종무식 공지!!</td>
						<td>베란다</td>
						<td>2018-12-26</td>
					</tr>
					<tr>
						<td>18</td>
						<td>수소전지 사업 관련 전임직원 필독</td>
						<td>베란다</td>
						<td>2018-11-04</td>
					</tr>
					<tr>
						<td>17</td>
						<td>한글날입니다</td>
						<td>베란다</td>
						<td>2018-10-09</td>
					</tr>
					<tr>
						<td>...</td>
						<td>...</td>
						<td>...</td>
						<td>...</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="4">
							<!-- pagination -->
							<ul class="pagination">
								<li class="page-item"><a class="page-link" href="#">Previous</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item active"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a></li>
							</ul>
						</td>
					</tr>
				</tfoot>

			</table>
		</div>
	</div>
</body>
</html>
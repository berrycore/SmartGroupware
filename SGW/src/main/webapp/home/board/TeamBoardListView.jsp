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

<title>팀 게시판</title>
</head>
<body>
	<div>
		<div class="w3-container">
			<h2>팀 게시판</h2>

			<a href="../board/BoardWrite.html">
				<button class="w3-button w3-black w3-padding-small" style="margin-bottom: 5px">새글작성</button>
			</a>
			<table class="w3-table-all w3-small">
				<thead>
					<tr class="w3-blue">
						<th>글번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>10</td>
						<td>
							<a href="#"> 팀회식 합시다 </a> 
							<span class="w3-badge w3-teal" style="margin-left: 10px"> 3 </span>
						</td>
						<td>베란다</td>
						<td>2019-11-10</td>
					</tr>
					<tr>
						<td>9</td>
						<td>지각하는 팀장은 각성하라</td>
						<td>김현관</td>
						<td>2019-11-09</td>
					</tr>
					<tr>
						<td>8</td>
						<td>매주 금요일 본부회의</td>
						<td>베란다</td>
						<td>2018-11-08</td>
					</tr>
					<tr>
						<td>7</td>
						<td>회사생활 백서</td>
						<td>베란다</td>
						<td>2018-11-06</td>
					</tr>
					<tr>
						<td>6</td>
						<td>Excel 팁입니다</td>
						<td>베란다</td>
						<td>2018-10-29</td>
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
							<div class="w3-bar w3-border w3-round">
								<a href="#" class="w3-button">&#10094; Previous</a>
							  <a href="#" class="w3-button">1</a>
							  <a href="#" class="w3-button">2</a>
							  <a href="#" class="w3-button">3</a>
							  <a href="#" class="w3-button">4</a>
							  <a href="#" class="w3-button">5</a>
							  <a href="#" class="w3-button w3-right">Next &#10095;</a>
							</div>

						</td>
					</tr>
				</tfoot>

			</table>

		</div>
	</div>
</body>
</html>
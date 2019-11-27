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
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">

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
					<c:forEach items="${boardList }" var="board">
						<tr>
							<td> ${board.board_id } </td>
							<td> <a href="TeamBoardView.html?board_id=${board.board_id}"> ${board.board_title } </a> 
							     <c:if test="${ board.reply_count != 0 }">
                    <span class="w3-badge w3-teal" style="margin-left: 10px"> ${board.reply_count } </span>
                   </c:if> 
                   
						  </td>
						  <td>${board.board_writer_name }</td>
						  <td>${board.board_date_regist }</td>
					</tr>
					</c:forEach>
				</tbody>
				

			</table>
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
		</div>
	</div>
</body>
</html>
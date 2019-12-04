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
<link rel="stylesheet" type="text/css" href="/css/bootstrap.css">

<title><spring:message code="sgw.board.teamboard" /></title>
</head>
<body class="w3-dark-grey">

<div class="w3-container">

	<div class="w3-card-4">
		<header class="w3-container">
	  	<h1><spring:message code="sgw.board.teamboard" /></h1>
		</header>
		<div class="w3-container">
	  		<a href="/board/BoardWrite.html">
					<button class="w3-button w3-white w3-padding-small" style="margin: 5px"><spring:message code="sgw.board.teamboard.new" /></button>
				</a>
			<div class="w3-responsive">
				<table class="w3-table w3-dark">
					<thead class="w3-bordered">
						<tr>
							<th><spring:message code="sgw.board.board_id" /></th>
							<th><spring:message code="sgw.board.subject" /></th>
							<th><spring:message code="sgw.board.writer" /></th>
							<th><spring:message code="sgw.board.writer" /></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${boardList }" var="board">
							<tr>
								<td> ${board.board_id } </td>
								<td> <a style="color: white" href="TeamBoardView.html?board_id=${board.board_id}"> ${board.board_title } </a> 
								     <c:if test="${ board.reply_count != 0 }">
	                    	<span class="w3-badge w3-white" style="margin-left: 10px"> ${board.reply_count } </span>
	                   </c:if> 
							  </td>
							  <td>${board.board_writer_name }</td>
							  <td>${board.board_date_regist }</td>
						</tr>
						</c:forEach>
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
</div>
</div>
</body>
</html>
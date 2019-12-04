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

<title><spring:message code="sgw.dash.notice"/></title>
</head>
<body class="w3-dark-grey">
<div class="w3-container">

	<div class="w3-card-4">
		<header class="w3-container">
	  	<h1><spring:message code="sgw.dash.notice"/></h1>
		</header>
	
	<div class="w3-container">
		<div class="w3-responsive">
			<table class="w3-table w3-dark-grey">
				<thead class="w3-bordered">
					<tr>
						<th><spring:message code="sgw.board.board_id" /></th>
						<th><spring:message code="sgw.board.title" /></th>
						<th><spring:message code="sgw.board.writer" /></th>
						<th><spring:message code="sgw.board.registdate" /></th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${noResult eq 'yes' }">
							<tr>
								<td colspan="4">
									<h3><spring:message code="sgw.board.no.result" /></h3>
								</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${noticeList }" var="notice">
								<tr>
									<td>${notice.notice_id }</td>
									<td>
										<a style="color: white" href="/board/NoticeView.html?notice_id=${notice.notice_id}"> ${notice.notice_title } </a>
									</td>
									<td>${notice.notice_writer_name }</td>
									<td>${notice.notice_date_regist }
								</tr>
							</c:forEach>
						</c:otherwise>
				  </c:choose>
				</tbody>
	
				<tfoot>
					<tr>
						<td colspan="4">
							<!-- pagination -->
							<div class="w3-bar">
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
						</td>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
	<footer class="w3-container w3-dark-grey">
  		
	</footer>
</div>
</div>
</body>
</html>
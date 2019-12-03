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

<title>NoticeListView</title>
</head>
<body>
	<div>
		<div class="w3-container">
			<h2>Notice</h2>
			<table class="w3-table-all w3-small">
					<thead>
						<tr class="w3-green">
							<th><spring:message code="sgw.board.board_id" /></th>
							<th><spring:message code="sgw.board.submit" /></th>
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
											<a href="/board/NoticeView.html?notice_id=${notice.notice_id}"> ${notice.notice_title } </a>
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
</body>
</html>
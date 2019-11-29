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

<title>NoticeListView.jsp</title>
</head>
<body>
	<div>
		<div class="w3-container">
			<h2>Notice</h2>
			<table class="w3-table-all w3-small">
					<thead>
						<tr class="w3-green">
							<th>글번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${noResult eq 'yes' }">
								<tr>
									<td colspan="4">
										<h4>등록된 공지사항이 없습니다</h4>
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
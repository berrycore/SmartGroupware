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

<script>
function fn_paging(curPage){
	location.href="/board/NoticeListView.html?curPage="+curPage;
}
</script>
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
<%--                   <c:if test="${pagination.curRange ne 1 }"> --%>
<!--                     <a href="#" onclick="fn_paging(1)">[First]</a> -->
<%--                   </c:if> --%>
                  <c:if test="${pagination.curPage ne 1 }">
                    <a href="#" onClick="fn_paging('${pagination.prevPage  }')" class="w3-button">&#10094; Previous</a>  
                  </c:if>
                  <c:forEach  var="pageNum" begin="${pagination.startPage }" end="${pagination.endPage }">
                    <c:choose>
                      <c:when test="${pageNum eq pagination.curPage }">
                        <span style="font-weight: bold;"><a href="#" onClick="fn_paging('${pageNum }')" class="w3-button">${pageNum }</a></span>
                      </c:when>
                      <c:otherwise>
                        <a href="#" onClick="fn_paging('${pageNum }')" class="w3-button">${pageNum }</a>
                      </c:otherwise>
                    </c:choose>
                  </c:forEach>
	 								<c:if test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0 }">
                    <a href="#" onClick="fn_paging('${pagination.nextPage }')" class="w3-button w3-right">Next &#10095;</a>  
                  </c:if>
<%--                   <c:if test="${pagination.curPage ne pagination.rangeCnt && pagination.rangeCnt > 0 }"> --%>
<%--                     <a href="#" onclick="fn_paging('${pagination.pageCnt}')">[Last]</a> --%>
<%--                   </c:if> --%>
              </div>
<%--                                총 게시글 수 : ${pagination.listCnt } /    총 페이지 수 : ${pagination.pageCnt } / 현재 페이지 : ${pagination.curPage } / 현재 블럭 : ${pagination.curRange } / 총 블럭 수 : ${pagination.rangeCnt } --%>
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
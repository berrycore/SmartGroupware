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

<script>
    function popup(document_id, title){
        var url = "/approval/DocumentView.html?document_id="+document_id;
        var name = title;
        var option = "width = 550, height = 550, top = 100, left = 200, location = no"
        window.open(url, name, option);
    }
    
    function fn_paging(curPage){
        location.href="/approval/CompletedDocumentView.html?curPage="+curPage;
    }
</script>

<title></title>
</head>
<body class="w3-dark-grey">

<div class="container">

	<div class="w3-card-4">	
		<header class="w3-container">
	  	<h1><spring:message code="sgw.document.completed"/></h1>
		</header>
		<div class="w3-container">
    
      <c:choose>
        <c:when test="${hasResult eq 'no' }">
          <spring:message code="sgw.document.noresult" />
        </c:when>
        <c:otherwise>
        	<div class="w3-responsive">
	          <table class="w3-table w3-dark">
			          <thead class="w3-bordered">
			            <tr>
			              <th><spring:message code="sgw.document.document_id" /></th>
			              <th><spring:message code="sgw.document.document_title" /></th>
			              <th><spring:message code="sgw.document.writer" /></th>
			              <th><spring:message code="sgw.document.registdate" /></th>
			              <th><spring:message code="sgw.document.status" /></th>
			            </tr>
			          </thead>
			          <tbody>
			            <c:forEach items="${documentList }" var="document">
			              <tr>
			                <td>${document.document_id }</td>
			                <td> <a style="color: white" href="javascript:popup('${document.document_id }' ,'${document.document_title}')" >${document.document_title}</a></td>
			                <td>${document.first_name }</td>
			                <td>${document.first_approval_date }</td>
			                <td>${document.final_status }</td>
			              </tr>
			            </c:forEach>
			            </tbody>
			           <tfoot>
			           	<tr>
			           		<td colspan="5">
			           		   <!-- pagination -->
                        <div class="w3-bar w3-border w3-round">
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
                      </div>
						       </td>
			           	</tr>
			           </tfoot>
			        </table>
		        </div>
	       </c:otherwise>
	      </c:choose>
	    </div>
    </div>
    <footer class="w3-container w3-dark-grey">
  		
		</footer>
    
 </div><!-- end of container -->
		

</body>
</html>
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
        var option = "width = 550, height = 650, top = 100, left = 200, location = no"
        window.open(url, name, option);
    }
</script>

<title></title>
</head>
<body>

<div class="container">
		<h2>Documents :: <spring:message code="sgw.document.completed"/></h2>
    
      <c:choose>
        <c:when test="${hasResult eq 'no' }">
          <spring:message code="sgw.document.noresult" />
        </c:when>
        <c:otherwise>
          <table class="table table-hover">
          <thead class="thead-dark">
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
                <td> <a href="javascript:popup('${document.document_id }' ,'${document.document_title}')" >${document.document_title}</a></td>
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
        

        
       </c:otherwise>
      </c:choose>
    
 </div><!-- end of container -->
		

</body>
</html>
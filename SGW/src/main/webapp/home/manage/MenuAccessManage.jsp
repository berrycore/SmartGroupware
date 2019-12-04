<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/css/w3.css">
<link rel="stylesheet" href="/css/bootstrap.css">

<title><spring:message code="sgw.manage.user.access.list"/></title>

<script>
	function popup_menu_modify(user_id){
		 var url = "/manage/MenuPermissionChange.html?user_id="+user_id;
	 	 var name = "MenuPermission";
		 var option = "width = 600, height = 200, top = 100, left = 200, location = no";
		 window.open(url, name, option);
		 return false;
	}
</script>

</head>
<body class="w3-indigo">

<div class="w3-container">
  <div class="w3-card-4  w3-margin-top   mb-3">
    <header class="w3-container w3-blue">
      <h3><spring:message code="sgw.manage.user.access.list"/></h3>
      <p><spring:message code="sgw.manage.user.access.description"/></p>
    </header>
  
    <div class="w3-container">
      <div class="w3-responsive">
        <table class="w3-table w3-dark ">
          <thead>
            <tr>
              <th><spring:message code="sgw.manage.user.access.id"/></th>
              <th><spring:message code="sgw.manage.user.access.name"/></th>
              <th><spring:message code="sgw.manage.user.access.email"/></th>
              <th><spring:message code="sgw.manage.user.access.document"/></th>
              <th><spring:message code="sgw.manage.user.access.board"/></th>
              <th><spring:message code="sgw.manage.user.access.control"/></th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${accessList }" var="access">
              <tr>
                <td>${access.user_id}</td>
                <td>${access.user_name}</td>
                <td>
                  <h4>
                    <c:if test="${access.access_email eq 'allow' }">
                      <span class="badge badge-primary">Allow</span>
                    </c:if>
                    <c:if test="${access.access_email eq 'deny' }">
                      <span class="badge badge-danger">Deny</span>
                    </c:if>
                  </h4>
                </td>
                <td>
                  <h4>
                    <c:if test="${access.access_elec_document eq 'allow' }">
                      <span class="badge badge-primary">Allow</span>
                    </c:if>
                    <c:if test="${access.access_elec_document eq 'deny' }">
                      <span class="badge badge-danger">Deny</span>
                    </c:if>
                  </h4>
                </td>
                <td>
                  <h4>
                    <c:if test="${access.access_board eq 'allow' }">
                      <span class="badge badge-primary">Allow</span>
                    </c:if>
                    <c:if test="${access.access_board eq 'deny' }">
                      <span class="badge badge-danger">Deny</span>
                    </c:if>
                  </h4>
                </td>
                <td>
<!--                   <a href="/manage/MenuPermissionChange.html" class="btn btn-secondary btn-sm" role="button" aria-pressed="true">변경</a> -->
                  <button class="btn btn-light btn-sm" onclick="return popup_menu_modify('${access.user_id}')"><spring:message code="sgw.manage.user.access.modify"/></button>
                </td>
              </tr>
             </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
    
    <div class="w3-container">
      <footer >
        <p></p>
      </footer>    
    </div>
   </div>
 </div >
</body>
</html>
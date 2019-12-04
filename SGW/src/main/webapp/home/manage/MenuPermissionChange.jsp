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
<script type="text/javascript" src="/js/bootstrap.js" ></script>

<title><spring:message code="sgw.manage.user.access.setting" /></title>
</head>
<body class="w3-indigo">

<div class="w3-container">

  <div class="w3-card-4  w3-margin-top mb-3">
    <header class="w3-container w3-blue">
      <h3><spring:message code="sgw.manage.user.access.setting" /></h3>    
    </header>
  	<div class="w3-responsive ">
      <form:form modelAttribute="sgwAccess" method="post" action="/manage/MenuPermissionChange.html">
  	    <table class="w3-table w3-dark">
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
  	      	<tr>
  	      		<td>
  	      			<form:input path="user_id" class="form-control form-control-sm input-sm w3-indigo" size="6" readonly="true"/>
  	      		</td>
  	      		<td>
  	      			<form:input path="user_name" class="form-control form-control-sm w3-indigo" size="6" readonly="true"/>
  	      		</td>
  	      		<td>
  	      			<div class="form-group">
                  <form:select path="access_email" class="form-control form-control-sm">
                    <form:option value="allow" label="allow" />
                    <form:option value="deny" label="deny" />
                  </form:select>
                </div>
  	      		</td>
  	      		<td>
  	      			<div class="form-group">
                  <form:select path="access_elec_document" class="form-control form-control-sm">
                    <form:option value="allow" label="allow" />
                    <form:option value="deny" label="deny" />
                  </form:select>
                </div>
  	      		</td>
  	      		<td>
  	      			<div class="form-group">
                  <form:select path="access_board" class="form-control form-control-sm">
                    <form:option value="allow" label="allow" />
                    <form:option value="deny" label="deny" />
                  </form:select>
                </div>
  	      		</td>
  	      		<td>
  	      			<button class="btn btn-warning btn-sm" ><spring:message code="sgw.manage.user.access.save"/></button>
  	      		</td>
  	      	</tr>
  	      </tbody>
  	      </table>
        </form:form>
      </div>
    </div>
</div>
</body>
</html>
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

<title> <spring:message code="sgw.manage.user.add.duplicate.check" /> </title>
</head>
<body class="w3-indigo">

	<script >
		function idOK() {
			if( "${isDuplicated}" == 'no'){
				opener.document.frm_user.user_id.value = "${company_id}"+document.frm.user_id.value;				
				self.close();
			}else{
				alert('<spring:message code="sgw.manage.user.add.duplicate.no" />');
			}
		}
	</script>
  
   <div class="w3-container mt-3">
     <div class="w3-card-4">
      <header class="w3-container w3-blue">
        <h3> <spring:message code="sgw.manage.user.add.duplicate.check" /> </h3>
      </header>


      <div style="margin: 10px">
      	<form:form modelAttribute="user" class="form-inline my-2 my-lg-0" action="userDuplicationCheck.html" name="frm">
      		<table>
      			<tr>
      				<td>
      					<div class="input-group " >
      						<div class="input-group-prepend">
      							<span class="input-group-text">${company_id}</span>
      						</div>
      						<form:input path="user_id" class="form-control mr-sm-2" placeholder="ID" />				
      
      					</div>
      					<font color="white"><form:errors path="user_id" /></font>	
      				</td>
      			</tr>
      			<tr>
      				<td>
      					<button class="btn btn-primary my-2 my-sm-0" type="submit"> <spring:message code="sgw.manage.user.add.search" /></button>&nbsp;
      					<button class="btn btn-light my-2 my-sm-0" type="button" onclick="idOK()"> <spring:message code="sgw.manage.user.add.confirm" /></button>
      				</td>
      			</tr>
      			<tr>
      				<td>
      					<div style="margin: 5px">
      						<c:choose>
      							<c:when test="${isDuplicated eq 'yes' }">
      						   		<div class="alert alert-danger">
      				    				<strong> <spring:message code="sgw.manage.user.add.already" /> </strong>
      				  				</div>
      							</c:when>
      							<c:when test="${isDuplicated eq 'no' }">
      								<div class="alert alert-success">
      				 					<strong> <spring:message code="sgw.manage.user.add.available" /> </strong>
      								</div>
      							</c:when>
      						</c:choose>
      					</div>			
      				</td>
      			</tr>
      		</table>
      		
      		
      		<div style="margin-top: 10px" class="toast" data-autohide="false">
      	 		<div class="toast-header">
      	 			<strong class="mr-auto text-primary"><spring:message code="sgw.manage.user.add.notice" /> </strong>
      	    		<button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
      	 		</div>
      			 		
      			<div class="toast-body">
      				<p> <spring:message code="sgw.manage.user.add.notice.ex" /> </p>
      			</div>
      
      			<!-- Toast script -->			  	
      		  	<script>
      		  		$(document).ready(function(){
      					$('.toast').toast('show');
      				});
      			</script>
      		</div>
    	</form:form>
    </div>
  </div>
</div>
</body>
</html>

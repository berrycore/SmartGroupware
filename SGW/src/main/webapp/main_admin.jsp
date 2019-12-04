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
<link rel="stylesheet" href="/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<title>SGW::Admin</title>
</head>
<body>

<div class="w3-sidebar w3-bar-block w3-collapse w3-card w3-deep-purple w3-animate-left" style="width:200px;" id="mySidebar">
	<button class="w3-bar-item w3-button w3-large w3-hide-large w3-deep-purple" onclick="w3_close()">&times;</button>
<!-- 		<a href="#" class="w3-bar-item w3-button">Link 1</a> -->
<!-- 		<a href="#" class="w3-bar-item w3-button">Link 2</a> -->
		
			<button class="w3-button w3-block w3-left-align w3-deep-purple" onclick="myAccFuncAdmin()">
	  			<i class="fa fa-terminal mr-3"></i><spring:message code="sgw.admin.menu.setting" />
	  		</button>
	  		<div id="Accordion_Mail" class="w3-hide w3-indigo w3-card">
	  			<a href="/manage/adminAccountList.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-th-list mr-3"></i><spring:message code="sgw.admin.menu.setting.list"/></a>
			    <a href="/manage/adminAccountAdd.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-id-badge mr-3"></i><spring:message code="sgw.admin.menu.setting.add" /></a>
			    <a href="/manage/adminPasswordChange.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-keyboard-o mr-3"></i><spring:message code="sgw.admin.menu.setting.password"/></a>
	  		</div>
  		
  			<button class="w3-button w3-block w3-left-align w3-deep-purple" onclick="myAccFuncUser()">
	  			<i class="fa fa-sitemap mr-3"></i><spring:message code="sgw.admin.menu.manage.user" />
	  		</button>
	  		<div id="Accordion_Approval" class="w3-hide w3-indigo w3-card">
			    <a href="/manage/userList.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-th-list mr-3"></i><spring:message code="sgw.admin.menu.manage.user.list"/></a>
			    <a href="/manage/userAdd.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-user-plus mr-3"></i><spring:message code="sgw.admin.menu.manage.user.add"/></a>
			    <a href="/manage/teamList.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-users mr-3"></i><spring:message code="sgw.admin.menu.manage.team.list"/></a>
			    <a href="/manage/managePermission.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-wrench mr-3"></i><spring:message code="sgw.admin.menu.manage.user.permission"/></a>
	  		</div>
	  		
	  		<button class="w3-button w3-block w3-left-align w3-deep-purple" onclick="myAccFuncBoard()">
	  			<i class="fa fa-list mr-3"></i><spring:message code="sgw.admin.menu.manage.board"/> 
	  		</button>
	  		<div id="Accordion_Board" class="w3-hide w3-indigo w3-card">
			    <a href="/board/writeNotice.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-bullhorn mr-3"></i><spring:message code="sgw.admin.menu.manage.board.notice"/></a>    
	  		</div>
	  
		<a href="/login/logoutAdmin.html" class="w3-button w3-block w3-left-align w3-deep-purple"><i class="fa fa-sign-out mr-3"></i><spring:message code="sgw.admin.menu.logout"/></a>
		 <div class="w3-dropdown-click">
			<button onclick="myFunction()" class="w3-button w3-deep-purple"><i class="fa fa-refresh mr-3"></i>Language</button>
	  	<div id="Demo" class="w3-dropdown-content w3-bar-block w3-border">
	    	<a class="w3-bar-item w3-button" href="?lang=ko">Korean</a>
	    	<a class="w3-bar-item w3-button" href="?lang=en">English</a>
	       <a class="w3-bar-item w3-button" href="?lang=ja">Japanese</a>
	  	</div>
		</div>
</div>

<div class="w3-main" style="margin-left:200px">
	<div class="w3-indigo">
    <button class="w3-button w3-indigo w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</button>
    	
  		<div class="w3-container">
        <div class="w3-display-container w3-margin-top" style="height:80px">
          <div class="w3-display">
          
          	<div class="container-fluid">
          		<div class="row">
          			<div class="col-sm-8">
          				<h3><a href="/main_admin.html" style="color: white"><i class="fa fa-cogs mr-3"></i>Smart Group Ware :: Admin</a></h3>
          			</div>
          			<div class="col-sm-4">
       						<span class="w3-tag w3-round w3-white">${sessionScope.authorizedAdmin.admin_id }</span>
			 						<span class="w3-tag w3-round w3-yellow">${sessionScope.authorizedAdmin.admin_name }</span>   				
          			</div>
          		</div>
          	</div>  
          </div>
        </div>
  		</div>
	</div>			
	<div class="w3-container">
		<c:choose>
			<c:when test="${BODY != null }">
				<jsp:include page="${BODY }" />
			</c:when>		
		  <c:otherwise>
		  	<jsp:include page="/dash_admin.html" />
		  </c:otherwise>
	  </c:choose>
	</div>   
</div>


<script>
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
}

function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}

function myAccFuncAdmin() {
  var x = document.getElementById("Accordion_Mail");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
    x.previousElementSibling.className += " w3-green";
  } else { 
    x.className = x.className.replace(" w3-show", "");
    x.previousElementSibling.className = 
    x.previousElementSibling.className.replace(" w3-green", "");
  }
}
function myAccFuncUser() {
  var x = document.getElementById("Accordion_Approval");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
    x.previousElementSibling.className += " w3-green";
  } else { 
    x.className = x.className.replace(" w3-show", "");
    x.previousElementSibling.className = 
    x.previousElementSibling.className.replace(" w3-green", "");
  }
}
function myAccFuncBoard() {
  var x = document.getElementById("Accordion_Board");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
    x.previousElementSibling.className += " w3-green";
  } else { 
    x.className = x.className.replace(" w3-show", "");
    x.previousElementSibling.className = 
    x.previousElementSibling.className.replace(" w3-green", "");
  }
}
function myAccFuncAccount() {
  var x = document.getElementById("Accordion_Account");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
    x.previousElementSibling.className += " w3-green";
  } else { 
    x.className = x.className.replace(" w3-show", "");
    x.previousElementSibling.className = 
    x.previousElementSibling.className.replace(" w3-green", "");
  }
}

function myFunction() {
	  var x = document.getElementById("Demo");
	  if (x.className.indexOf("w3-show") == -1) { 
	    x.className += " w3-show";
	  } else {
	    x.className = x.className.replace(" w3-show", "");
	  }
	}

</script>

</body>
</html>
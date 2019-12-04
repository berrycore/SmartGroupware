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

<title><spring:message code="sgw.title.default"/></title>
</head>
<body>
<script>
function openWindow( url )
{
  window.open(url, '_blank');
  window.focus();
}
</script>

<div class="w3-sidebar w3-bar-block w3-collapse w3-card w3-animate-left w3-dark-gray" style="width:200px;" id="mySidebar">
	<button class="w3-bar-item w3-button w3-large w3-hide-large w3-dark-gray" onclick="w3_close()">&times;</button>
<!-- 		<a href="#" class="w3-bar-item w3-button">Link 1</a> -->
<!-- 		<a href="#" class="w3-bar-item w3-button">Link 2</a> -->
		
			<button class="w3-button w3-block w3-left-align w3-dark-gray" onclick="myAccFuncMail()">
	  			<i class="fa fa-envelope mr-3"></i><spring:message code="sgw.main.menu.email" />
	  		</button>
	  		<div id="Accordion_Mail" class="w3-hide w3-dark-gray w3-card">
			    <a href="/mail/showNewMailList.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-envelope-open-o mr-3"></i><spring:message code="sgw.main.menu.email.inbox" /></a>
          <a href="/mail/sendMail.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-pencil-square-o mr-3"></i><spring:message code="sgw.main.menu.email.write"/></a>
	  		</div>
  		
  			<button class="w3-button w3-block w3-left-align w3-dark-gray" onclick="myAccFuncApproval()">
	  			<i class="fa fa-file-o mr-3"></i><spring:message code="sgw.main.menu.document" />
	  		</button>
	  		<div id="Accordion_Approval" class="w3-hide w3-dark-gray w3-card">
			    <a href="/approval/DocumentWriteNew.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-text-height mr-3"></i><spring:message code="sgw.main.menu.document.draft"/></a>
			    <a href="/approval/ProcessingDocumentView.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-exclamation mr-3"></i><spring:message code="sgw.main.menu.document.awating"/></a>
			    <a href="/approval/CompletedDocumentView.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-check-square-o mr-3"></i><spring:message code="sgw.main.menu.document.completed" /></a>
			    <a href="/approval/getElecDocumentList.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-search mr-3"></i><spring:message code="sgw.main.menu.document.lookup"/></a>
	  		</div>
	  		
	  		<button class="w3-button w3-block w3-left-align w3-dark-gray" onclick="myAccFuncBoard()">
	  			<i class="fa fa-th-list mr-3"></i><spring:message code="sgw.main.menu.board"/>
	  		</button>
	  		<div id="Accordion_Board" class="w3-hide w3-dark-gray w3-card">
			    <a href="/board/NoticeListView.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-bullhorn mr-3"></i><spring:message code="sgw.main.menu.board.notice"/></a>
			    <a href="/board/TeamBoardListView.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-comments mr-3"></i><spring:message code="sgw.main.menu.board.teamboard"/></a>
	  		</div>
	  		
	  		<button class="w3-button w3-block w3-left-align w3-dark-gray" onclick="myAccFuncAccount()">
	  			<i class="fa fa-user mr-3"></i><spring:message code="sgw.main.menu.myinfo"/>
	  		</button>
	  		<div id="Accordion_Account" class="w3-hide w3-dark-gray w3-card">
			    <a href="/account/changeMyInfo.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-cog mr-3"></i><spring:message code="sgw.main.menu.myinfo.modify"/></a>
			    <a href="/account/changePassword.html" class="w3-bar-item w3-button w3-margin-left"><i class="fa fa-key mr-3"></i><spring:message code="sgw.main.menu.myinfo.changepassword"/></a>
	  		</div>
	  
	  <a href="/login/logoutUser.html" class="w3-button w3-block w3-left-align w3-dark-grey"><i class="fa fa-sign-out mr-3"></i><spring:message code="sgw.main.menu.logout"/></a>
	  <a href="/manage/loginAdmin.html" onclick="javascript:openWindow(this.href);return false;" class="w3-bar-item w3-button w3-dark-grey"><i class="fa fa-terminal mr-3"></i><spring:message code="sgw.main.menu.adminlogin"/></a>
	  <div class="w3-dropdown-click">
			<button onclick="myFunction()" class="w3-button w3-dark-gray"><i class="fa fa-refresh mr-3"></i>Language</button>
	  	<div id="Demo" class="w3-dropdown-content w3-bar-block w3-border">
	    	<a class="w3-bar-item w3-button" href="?lang=ko">Korean</a>
	    	<a class="w3-bar-item w3-button" href="?lang=en">English</a>
	      <a class="w3-bar-item w3-button" href="?lang=ja">Japanese</a>
	  	</div>
		</div>
</div>

<div class="w3-main" style="margin-left:200px">
	<div class="w3-dark-grey">
    <button class="w3-button w3-dark-grey w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</button>
    	
  		<div class="w3-container">
        <div class="w3-display-container  w3-margin-top mb-3" style="height:60px">
          <div class="w3-display">
          
	          <div class="container-fluid">
						  <div class="row">
						    <div class="col-sm-8">
						      <h3><a href="/main.html" style="color: white"><i class="fa fa-home mr-3"></i>Smart Group Ware </a> </h3>
						    </div>
						    <div class="col-sm-4">
						      	        
								 <span class="w3-tag w3-round w3-white">${sessionScope.loginUser.user_name }</span>
								 <span class="w3-tag w3-round w3-yellow">${sessionScope.loginUser.team.team_name }</span>
								 <span class="w3-tag w3-round w3-green">${sessionScope.loginUser.position.position_name }</span>
						      
						    </div>
						  </div>
						</div>
          </div>
        </div>

  		</div>
	</div>			
<!-- 	<div class="w3-container"> -->
	<div>
		<c:choose>
			<c:when test="${BODY != null }">
				<jsp:include page="${BODY }" />
			</c:when>		
		  <c:otherwise>		  	
		  	<jsp:include page="/dash.html" />
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

function myAccFuncMail() {
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
function myAccFuncApproval() {
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
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
	  			관리자 설정<i class="fa fa-caret-down"></i>
	  		</button>
	  		<div id="Accordion_Mail" class="w3-hide w3-indigo w3-card">
	  			<a href="/manage/adminAccountList.html" class="w3-bar-item w3-button w3-margin-left"> > 관리자 리스트</a>
			    <a href="/manage/adminAccountAdd.html" class="w3-bar-item w3-button w3-margin-left"> > 관리자 등록</a>
			    <a href="/manage/adminPasswordChange.html" class="w3-bar-item w3-button w3-margin-left"> > 패스워드 변경</a>
	  		</div>
  		
  			<button class="w3-button w3-block w3-left-align w3-deep-purple" onclick="myAccFuncUser()">
	  			사용자 관리<i class="fa fa-caret-down"></i>
	  		</button>
	  		<div id="Accordion_Approval" class="w3-hide w3-indigo w3-card">
			    <a href="/manage/userList.html" class="w3-bar-item w3-button w3-margin-left"> > 사용자 리스트</a>
			    <a href="/manage/userAdd.html" class="w3-bar-item w3-button w3-margin-left"> > 사용자 등록</a>
			    <a href="/manage/managePermission.html" class="w3-bar-item w3-button w3-margin-left"> > 사용자 권한 설정</a>
	  		</div>
	  		
	  		<button class="w3-button w3-block w3-left-align w3-deep-purple" onclick="myAccFuncBoard()">
	  			게시판 관리<i class="fa fa-caret-down"></i>
	  		</button>
	  		<div id="Accordion_Board" class="w3-hide w3-indigo w3-card">
			    <a href="/board/writeNotice.html" class="w3-bar-item w3-button w3-margin-left"> > 공지사항 등록</a>    
	  		</div>
	  
		<a href="/login/logoutAdmin.html" class="w3-button w3-block w3-left-align w3-deep-purple">관리자 로그아웃</a>
		<div class="dropdown">
			<button type="button" class="btn btn-outline-light dropdown-toggle m-2" data-toggle="dropdown">
		    	Language
	  	</button>
	  	<div class="dropdown-menu">
	    	<a class="dropdown-item" href="#">Korean</a>
	    	<a class="dropdown-item" href="#">English</a>
	  	</div>
		</div>
</div>

<div class="w3-main" style="margin-left:200px">
	<div class="w3-indigo">
    <button class="w3-button w3-indigo w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</button>
    	
  		<div class="w3-container">
        <div class="w3-display-container" style="height:60px">
          <div class="w3-display-left">
            <h3><a href="/main_admin.html" style="color: white">Smart Group Ware :: Admin</a></h3>
          </div>
        </div>
        
			 <span class="w3-tag w3-round">${sessionScope.authorizedAdmin.admin_id }</span>
			 <span class="w3-tag w3-round w3-green">${sessionScope.authorizedAdmin.admin_name }</span>
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
</script>


<!-- <p> -->
<%--     <jsp:include page="/home/mail/MailViewList.jsp" />  --%>
<%--     <jsp:include page="/home/account/changeMyInfo.jsp" /> --%>
<%--     <jsp:include page="/home/account/changePassword.jsp" /> --%>
<%-- 	<jsp:include page="/home/approval/DocumentListView.jsp" /> --%>
<%-- 	<jsp:include page="/home/board/NoticeListView.jsp" /> --%>
<%-- 	<jsp:include page="/home/board/TeamBoardListView.jsp" /> --%>
<!-- </p> -->

</body>
</html>
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
<link rel="stylesheet" href="css/w3.css">

<title>Main</title>
</head>
<body>

<div class="w3-sidebar w3-bar-block w3-collapse w3-card w3-animate-left" style="width:200px;" id="mySidebar">
	<button class="w3-bar-item w3-button w3-large w3-hide-large w3-dark-gray" onclick="w3_close()">&times;</button>
<!-- 		<a href="#" class="w3-bar-item w3-button">Link 1</a> -->
<!-- 		<a href="#" class="w3-bar-item w3-button">Link 2</a> -->
		
			<button class="w3-button w3-block w3-left-align w3-dark-gray" onclick="myAccFuncMail()">
	  			메일<i class="fa fa-caret-down"></i>
	  		</button>
	  		<div id="Accordion_Mail" class="w3-hide w3-white w3-card">
			    <a href="#" class="w3-bar-item w3-button w3-margin-left">Inbox</a>
			    <a href="#" class="w3-bar-item w3-button w3-margin-left">보낸편지함</a>
			    <a href="#" class="w3-bar-item w3-button w3-margin-left">휴지통</a>
	  		</div>
  		
  			<button class="w3-button w3-block w3-left-align w3-dark-gray" onclick="myAccFuncApproval()">
	  			전자결재<i class="fa fa-caret-down"></i>
	  		</button>
	  		<div id="Accordion_Approval" class="w3-hide w3-white w3-card">
			    <a href="#" class="w3-bar-item w3-button w3-margin-left">기안하기</a>
			    <a href="#" class="w3-bar-item w3-button w3-margin-left">결재할 문서</a>
			    <a href="#" class="w3-bar-item w3-button w3-margin-left">완료 문서</a>
			    <a href="#" class="w3-bar-item w3-button w3-margin-left">결재 조회</a>
	  		</div>
	  		
	  		<button class="w3-button w3-block w3-left-align w3-dark-gray" onclick="myAccFuncBoard()">
	  			게시판<i class="fa fa-caret-down"></i>
	  		</button>
	  		<div id="Accordion_Board" class="w3-hide w3-white w3-card">
			    <a href="board/NoticeListView.html" class="w3-bar-item w3-button w3-margin-left">전사공지</a>
			    <a href="board/TeamBoardListView.html" class="w3-bar-item w3-button w3-margin-left">Team게시판</a>
	  		</div>
	  		
	  		<button class="w3-button w3-block w3-left-align w3-dark-gray" onclick="myAccFuncAccount()">
	  			내 정보 관리<i class="fa fa-caret-down"></i>
	  		</button>
	  		<div id="Accordion_Account" class="w3-hide w3-white w3-card">
			    <a href="account/changeMyInfo.html" class="w3-bar-item w3-button w3-margin-left">내 정보 수정</a>
			    <a href="account/changePassword.html" class="w3-bar-item w3-button w3-margin-left">패스워드 변경</a>
	  		</div>
	  		
		<a href="manage/userList.html" class="w3-bar-item w3-button">사용자 리스트</a>
		<a href="manage/userAdd.html" class="w3-bar-item w3-button">사용자 등록</a>
		<a href="manage/managePermission.html" class="w3-bar-item w3-button">권한관리</a>  		
</div>

<div class="w3-main" style="margin-left:200px">
	<div class="w3-teal">
    <button class="w3-button w3-teal w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</button>
    	
  		<div class="w3-container">
        <div class="w3-display-container" style="height:60px">
          <div class="w3-display-left">
            <h1>Smart Group Ware</h1>
          </div>
        </div>
        
			 <span class="w3-tag w3-round">${sessionScope.loginUser.user_name }</span>
			 <span class="w3-tag w3-round w3-green">${sessionScope.loginUser.team.team_name }</span>
			 <span class="w3-tag w3-round w3-green">${sessionScope.loginUser.position.position_name }</span>
  		</div>
	</div>			
	<div class="w3-container">
	  <h3>Responsive Sidebar</h3>
	  <p>The sidebar in this example will always be displayed on screens wider than 992px, and hidden on tablets or mobile phones (screens less than 993px wide).</p>
	  <p>On tablets and mobile phones the sidebar is replaced with a menu icon to open the sidebar.</p>
	  <p>The sidebar will overlay of the page content.</p>
	  <p><b>Resize the browser window to see how it works.</b></p>
	</div>   
</div>




		
		
		
			<div class="dropdown">
				
					<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
				    	Language
				  	</button>
				  	<div class="dropdown-menu">
				    	<a class="dropdown-item" href="#">Korean</a>
				    	<a class="dropdown-item" href="#">English</a>
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
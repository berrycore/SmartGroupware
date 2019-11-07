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
<link rel="stylesheet" type="text/css" href="css/template.css">
<title>title</title>
<style type="text/css">
div.left {
	height: 30px;
	width: 30%;
	float: left;
	border: 1px solid #000;
	box-sizing: border-box;
	background: #ff0;
}

div.right {
	height: 30px;
	width: 70%;
	float: right;
	border: 1px solid #000;
	box-sizing: border-box;
	background: #0ff;
}
</style>
</head>
<body>

	<div style="border: 1px solid black">
		<div class="left">
			아이디 
		</div>
		<div class="right">
			<input type="text" />
		</div>
		<div class="left">
			패스워드
		</div>
		<div class="right">
			<input type="text" />
		</div>
		<div>
			<input type="submit" value="login" />
		</div>
	</div>

</body>
</html>
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

<title>Smart Group Ware</title>
</head>

<body>

<button id="button_sample" class="btn btn-primary">버튼샘플</button>

	<!-- header -->
	<div id="header">
		<table>
			<tr>
				<td>
					<%@ include file="header.jsp" %>
				</td>
			</tr>
		</table>
	</div>

	<!-- menu & main -->
	<div>
        <div >
        	<%@ include file="menu.jsp" %>
        </div>
        <div>
        	<%@ include file="main.jsp" %>
        </div>
    </div>
    
    <!-- footer -->
    <div>
    	<table>
    		<tr>
    			<td>
    				<%@ include file="footer.jsp" %>
    			</td>
    		</tr>
    	</table>
    </div>
</body>
</html>
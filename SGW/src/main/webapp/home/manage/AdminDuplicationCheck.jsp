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
<link rel="stylesheet" href="../css/bootstrap.css">

<title>관리자 ID 중복체크</title>
</head>
<body>

	<script >
		function idOK() {
			if( "${isDuplicated}" == 'no'){
				opener.document.frm_admin.admin_id.value = document.frm.admin_id.value;		
				self.close();
			}else{
				alert("중복체크가 되지 않았습니다");
			}
		}
	</script>

<h2>관리자 ID 중복체크</h2>
<div style="margin: 10px">
	<form:form modelAttribute="sgwAdmin" class="form-inline my-2 my-lg-0" action="adminDuplicationCheck.html" name="frm">
		<table>
			<tr>
				<td>
					<div class="input-group " >
						<form:input path="admin_id" class="form-control mr-sm-2" placeholder="Admin ID" />
					</div>
					<font color="red"><form:errors path="admin_id" /></font>	
				</td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>&nbsp;
					<button class="btn btn-success my-2 my-sm-0" type="button" onclick="idOK()">Confirm</button>
				</td>
			</tr>
			<tr>
				<td>
					<div style="margin: 5px">
						<c:choose>
							<c:when test="${isDuplicated eq 'yes' }">
						   		<div class="alert alert-danger">
				    				<strong>이미 사용중입니다</strong>
				  				</div>
							</c:when>
							<c:when test="${isDuplicated eq 'no' }">
								<div class="alert alert-success">
				 					<strong>사용 가능합니다</strong>
								</div>
							</c:when>
						</c:choose>
					</div>			
				</td>
			</tr>
		</table>
	</form:form>
</div>
</body>
</html>

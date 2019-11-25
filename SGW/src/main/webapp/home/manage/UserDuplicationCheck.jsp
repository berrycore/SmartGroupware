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

<title>사용자 ID 중복체크</title>
</head>
<body>

	<script >
		function idOK() {
			if( "${isDuplicated}" == 'no'){
				opener.document.frm_user.user_id.value = "${company_id}"+document.frm.user_id.value;				
				self.close();
			}else{
				alert("중복체크가 되지 않았습니다");
			}
		}
	</script>

<h2>사용자 ID 중복체크</h2>
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
						
						<!-- <input class="form-control mr-sm-2" type="text" placeholder="ID" name="user_id" value="${user_id}" >  -->
					</div>
					<font color="red"><form:errors path="user_id" /></font>	
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
			
		
		
		
		
		<!-- <font color="red"><form:errors path="user_id"/></font>  -->
		
		<div style="margin-top: 10px" class="toast" data-autohide="false">
	 		<div class="toast-header">
	 			<strong class="mr-auto text-primary">유의사항</strong>
	    		<button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
	 		</div>
			 		
			<div class="toast-body">
				<p>
			         회사코드 2자리를 제외한 숫자6개만 입력해 주세요 <br/>
			         예) 191103 <br/>
			      19년도 11월 3번째 입사자 <br/>
			    </p>
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
</body>
</html>

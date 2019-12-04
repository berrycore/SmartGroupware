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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/css/w3.css">
<link rel="stylesheet" href="/css/bootstrap.css">

<title>MailViewList.jsp</title>
</head>
<body class="w3-dark-grey">
	
	<div class="container">
		<div class="w3-card-4">
    <header class="w3-container">
      <h1>[공사중]</h1>
      <h4><spring:message code="sgw.mail.list" /></h4>
    </header>
		<div class="w3-container">

    		<table class="w3-table w3-dark">
    			<thead class="w3-bordered">
    				<tr>
    					<th>메일ID</th>
    					<th>발신</th>
    					<th>수신</th>
    					<th>제목</th>
    					<th>받은시간</th>
    					<th>첨부파일</th>
    				</tr>
    			</thead>
    			<tbody>
    				<tr>
    					<td>E102005</td>
    					<td>김형관</td>
    					<td>영업1팀</td>
    					<td>
    						<span class="badge badge-warning">New</span>&nbsp; 
    						<a href="#" style="color:white">
    							FW: RE: 요청자료 보내드립니다
    						</a> 
    					</td>
    					<td>2019-11-07 15:22:30</td>
    					<td>폰트파일_최종.zip</td>
    				</tr>
    				<tr>
    					<td>E100001</td>
    					<td>베란다</td>
    					<td>김형관</td>
    					<td>
    						<a href="#" style="color:white">
    							RE: 요청자료 보내드립니다
    						</a>
    					</td>
    					<td>2019-11-07 14:22:30</td>
    					<td>폰트파일_최종.zip</td>
    				</tr>
    				<tr>
    					<td>E100021</td>
    					<td>김형관</td>
    					<td>베란다</td>
    					<td>요청자료 보내드립니다</td>
    					<td>2019-11-05 09:52:20</td>
    					<td>폰트파일.zip</td>
    				</tr>
    				<tr>
    					<td>E090014</td>
    					<td>파송송</td>
    					<td>영업1팀</td>
    					<td>본부별 취합 자료 요청의 건</td>
    					<td>2019-11-03 11:55:40</td>
    					<td>-</td>
    				</tr>
            <tfoot>
              <tr>
                <td colspan="6">
                  <!-- pagination -->
                  <div class="w3-bar">
    								<div class="w3-bar w3-border w3-round">
    	 								<a href="#" class="w3-button">&#10094; Previous</a>
    	 								<a href="#" class="w3-button">1</a>
    								  <a href="#" class="w3-button">2</a>
    								  <a href="#" class="w3-button">3</a>
    								  <a href="#" class="w3-button">4</a>
    								  <a href="#" class="w3-button">5</a>
    	 								<a href="#" class="w3-button w3-right">Next &#10095;</a>
    								</div>
    							</div>
                </td>
              </tr>
            </tfoot>
    		</table>
		  </div>
		</div>		
	</div><!-- end of container -->
</body>
</html>
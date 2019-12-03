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

개발중

<title>권한 설정</title>
</head>
<body>
<div class="container">
	<h2>사용자 권한 설정</h2>
	<div class="table-responsive">
	    <table class="table table-bordered">
	      <thead>
	        <tr>
	          <th>ID</th>
	          <th>이름</th>
	          <th>메일</th>
	          <th>전자결재</th>
	          <th>게시판</th>
	          <th>수정</th>
	        </tr>
	      </thead>
	      <tbody>
	      	<tr>
	      		<td>
	      			S10001
	      		</td>
	      		<td>
	      			베란다
	      		</td>
	      		<td>
	      			<div class="btn-group">
	    				<button type="button" class="btn btn-sm btn-info dropdown-toggle" data-toggle="dropdown">
	       					허용
	    				</button>
		    			<div class="dropdown-menu">
		      				<a class="dropdown-item" href="#">허용</a>
		      				<a class="dropdown-item" href="#">불가</a>
		    			</div>
	  				</div>
	      		</td>
	      		<td>
	      			<div class="btn-group">
	    				<button type="button" class="btn btn-sm btn-info dropdown-toggle" data-toggle="dropdown">
	       					불가
	    				</button>
		    			<div class="dropdown-menu">
		      				<a class="dropdown-item" href="#">허용</a>
		      				<a class="dropdown-item" href="#">불가</a>
		    			</div>
	  				</div>
	      		</td>
	      		<td>
	      			<div class="btn-group">
	    				<button type="button" class="btn btn-sm btn-info dropdown-toggle" data-toggle="dropdown">
	       					허용
	    				</button>
		    			<div class="dropdown-menu">
		      				<a class="dropdown-item" href="#">허용</a>
		      				<a class="dropdown-item" href="#">불가</a>
		    			</div>
	  				</div>
	      		</td>
	      		<td>
	      			<a href="#" class="btn btn-primary btn-sm" role="button" aria-pressed="true">저장</a>
	      		</td>
	      	</tr>
	      </tbody>
	      </table>
      </div>
</div>
</body>
</html>
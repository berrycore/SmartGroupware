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
<link rel="stylesheet" type="text/css" href="../../css/template.css">
<title>title</title>
</head>
<body>
<div>
	<h1>공지사항</h1>
	<table>
		<tr class="table-dark">
			<td>글번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>작성일</td>
		</tr>
		<tr>
			<td>21</td>
			<td>창립기념일 공지</td>
			<td>베란다</td>
			<td>2019-11-07</td>
		</tr>
		<tr>
			<td>20</td>
			<td>추석 선물 안내</td>
			<td>김현관</td>
			<td>2019-11-01</td>
		</tr>
		<tr>
			<td>19</td>
			<td>2018년도 종무식 공지!!</td>
			<td>베란다</td>
			<td>2018-12-26</td>
		</tr>
		<tr>
			<td>18</td>
			<td>수소전지 사업 관련 전임직원 필독</td>
			<td>베란다</td>
			<td>2018-11-04</td>
		</tr>
		<tr>
			<td>17</td>
			<td>한글날입니다</td>
			<td>베란다</td>
			<td>2018-10-09</td>
		</tr>
		<tr>
			<td>...</td>
			<td>...</td>
			<td>...</td>
			<td>...</td>
		</tr>
	</table>
	
	<!-- navi -->
		<div>
		  <ul class="pagination">
		    <li class="page-item disabled">
		      <a class="page-link" href="#">&laquo;</a>
		    </li>
		    <li class="page-item active">
		      <a class="page-link" href="#">1</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">2</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">3</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">4</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">5</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">&raquo;</a>
		    </li>
		  </ul>
		</div>
	
	
	<!-- search -->	
	<form class="form-inline my-2 my-lg-0">
		<input class="form-control mr-sm-2" type="text" placeholder="Search">
		<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
	</form>
	
</div>
<br/><br/>
<div>
	<h2>팀 게시판</h2>
	<table>
		<tr class="table-info">
			<td>글번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>작성일</td>
		</tr>
		<tr>
			<td>70</td>
			<td>이번달 누구 생일인지 알려주세요</td>
			<td>베란다</td>
			<td>2019-11-12</td>
		</tr>
		<tr>
			<td>69</td>
			<td>이번달 팀회식 공지</td>
			<td>김현관</td>
			<td>2019-10-20</td>
		</tr>
		<tr>
			<td>68</td>
			<td>퇴근시 유의사항~~</td>
			<td>베란다</td>
			<td>2019-08-26</td>
		</tr>
		<tr>
			<td>67</td>
			<td>지갑 잃어버리신분 찾아가세요</td>
			<td>베란다</td>
			<td>2018-03-09</td>
		</tr>
		<tr>
			<td>...</td>
			<td>...</td>
			<td>...</td>
			<td>...</td>
		</tr>
	</table>
	
	<!-- navi -->
		<div>
		  <ul class="pagination">
		    <li class="page-item disabled">
		      <a class="page-link" href="#">&laquo;</a>
		    </li>
		    <li class="page-item active">
		      <a class="page-link" href="#">1</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">2</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">3</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">4</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">5</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">&raquo;</a>
		    </li>
		  </ul>
		</div>
	
	
	<!-- search -->	
	<form class="form-inline my-2 my-lg-0">
		<input class="form-control mr-sm-2" type="text" placeholder="Search">
		<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
	</form>
	
</div>
</body>
</html>
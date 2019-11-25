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


<title>메뉴 관리</title>
</head>
<body>

<div class="container">
  <h2>사용자 권한 리스트</h2>
  <p>사용자별 접근 가능한 메뉴 현황</p>                                                                                      
  
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
          <td>S10001</td>
          <td>베란다</td>
          <td>
          	<span class="badge badge-primary">허용</span>
          </td>
          <td>
          	<span class="badge badge-primary">허용</span>
          </td>
          <td>
          	<span class="badge badge-danger">거부</span>
          </td>
          <td>
          	<a href="#" class="btn btn-secondary btn-sm" role="button" aria-pressed="true">변경</a>
          </td>
        </tr>
        <tr>
          <td>S10002</td>
          <td>김현관</td>
          <td>
          	<span class="badge badge-primary">허용</span>
          </td>
          <td>
          	<span class="badge badge-primary">허용</span>
          </td>
          <td>
          	<span class="badge badge-primary">허용</span>
          </td>
          <td>
          	<a href="#" class="btn btn-secondary btn-sm" role="button" aria-pressed="true">변경</a>
          </td>
        </tr>
        <tr>
          <td>S10003</td>
          <td>최팀장</td>
          <td>
          	<span class="badge badge-primary">허용</span>
          </td>
          <td>
          	<span class="badge badge-primary">허용</span>
          </td>
          <td>
          	<span class="badge badge-primary">허용</span>
          </td>
          <td>
          	<a href="#" class="btn btn-secondary btn-sm" role="button" aria-pressed="true">변경</a>
          </td>
        </tr>
        <tr>
          <td>S10004</td>
          <td>파라오</td>
          <td>
          	<span class="badge badge-danger">거부</span>
          </td>
          <td>
          	<span class="badge badge-primary">허용</span>
          </td>
          <td>
          	<span class="badge badge-primary">허용</span>
          </td>
          <td>
          	<a href="#" class="btn btn-secondary btn-sm" role="button" aria-pressed="true">변경</a>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</div>

</body>
</html>
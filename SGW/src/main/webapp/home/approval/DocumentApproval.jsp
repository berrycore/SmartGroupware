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
<script src="/ckeditor/ckeditor.js"></script>

<title></title>
</head>
<body>
<script>
window.onload = function(){
	document.title = "${elecDocument.document_title }";
}
function approvalOK(){
	var ok = confirm("<spring:message code='sgw.document.willyouapprove' />"); 
	if( ok == true ){
		return true;
	}else{
		return false;
	}
}
function rejectOK(){
	var ok = confirm("<spring:message code='sgw.document.willyoureject' />"); 
	if( ok == true ){
		return true;
	}else{
		return false;
	}
}
</script>
<div class="container">
    
      <!-- document interface -->
      <table class="table table-sm">
        <thead>
          <tr>
            <td>
              <div class="form-inline" >
                <button type="submit" class="btn btn-danger btn-sm m-1" onclick="window.close();">닫기</button>
                <form action="/approval/ApproveDocument.html" method="post" name="frm_approve">
                  <input type="hidden" name="document_id" value="${elecDocument.document_id }"/>
                  <button type="submit" class="btn btn-primary btn-sm m-1" onclick="return approvalOK()">승인</button>
                </form>
                <form action="/approval/RejectDocument.html" method="post" name="frm_reject">
                  <input type="hidden" name="document_id" value="${elecDocument.document_id }"/>
                  <button type="submit" class="btn btn-warning btn-sm m-1" onclick="return rejectOK()">부결</button>
                </form>
              </div>
            </td>
          </tr>
        </thead>

        <tbody>
          <tr>
            <td>
              <!-- approval line--> <!-- approval line-->
              <table class="table-bordered table-sm">
                <tr>
                  <td><small>${elecDocument.first_status }</small></td>
                  <td><small>${elecDocument.second_status }</small></td>
                  <td><small>${elecDocument.third_status }</small></td>
                  <td><small>${elecDocument.fourth_status }</small></td>
                  <td><small>${elecDocument.final_status }</small></td>
                </tr>
                <tr>
                  <td style="height: 50px; width: 60px">
                    <small>${elecDocument.first_name }</small>
                  </td>
                  <td style="height: 50px; width: 60px">
                    <div>
                      <small>
                        <input type="hidden" name="second_id" value="${elecDocument.second_id}">
                        <input type="text" name="second_name" value="${elecDocument.second_name}" maxlength="4" size="4" readonly="readonly"  style="border: 0px;" />
                      </small>
                    </div>
                  </td>
                  <td style="height: 50px; width: 60px">
                    <div>
                      <small>
                        <input type="hidden" name="third_id" value="${elecDocument.third_id}">
                        <input type="text" name="third_name" value="${elecDocument.third_name}" maxlength="4" size="4" readonly="readonly"  style="border: 0px;" />
                      </small>
                    </div>
                  </td>
                  <td style="height: 50px; width: 60px">
                    <div>
                      <small>
                        <input type="hidden" name="fourth_id" value="${elecDocument.fourth_id}">
                        <input type="text" name="fourth_name" value="${elecDocument.fourth_name }" maxlength="4" size="4" readonly="readonly"  style="border: 0px;" />
                      </small>
                    </div>
                  </td>
                  <td style="height: 50px; width: 60px">
                    <div>
                      <small>
                        <input type="hidden" name="final_id" value="${elecDocument.final_id }">
                        <input type="text" name="final_name" value="${elecDocument.final_name}" maxlength="4" size="4" readonly="readonly"  style="border: 0px;" />
                      </small>
                    </div>
                  </td>
                </tr>
                <tr>
                  <!-- approval date -->
                  <td><small>${elecDocument.first_approval_date }</small></td>
                  <td><small>${elecDocument.second_approval_date }</small></td>
                  <td><small>${elecDocument.third_approval_date }</small></td>
                  <td><small>${elecDocument.fourth_approval_date }</small></td>
                  <td><small>${elecDocument.final_approval_date }</small></td>
                </tr>
              </table>
            </td>
          </tr>

          <tr>
            <td>

              <table class="table">
                <thead>
                  <tr>
                    <th>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text">제목</span>
                        </div>
                        <input type="text" name="document_title" value="${elecDocument.document_title }" class="form-control" readonly="readonly">
                      </div>
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <textarea name="document_content" id="editor" readonly="readonly">${elecDocument.document_content}</textarea>
                    </td>
                  </tr>
                </tbody>
                <tfoot>
                  <tr>
                    <td>
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="customFile">
                        <label class="custom-file-label" for="customFile">Choose file</label>
                      </div>
                    </td>
                  </tr>
                </tfoot>
              </table>

            </td>
          </tr>
        </tbody>
      </table>
  </div>

  <script>
    // Add the following code if you want the name of the file appear on select
    $(".custom-file-input").on(
        "change",
        function() {
          var fileName = $(this).val().split("\\").pop();
          $(this).siblings(".custom-file-label").addClass("selected")
              .html(fileName);
        });
  </script>

  <!-- ckeditor -->
  <script>
    CKEDITOR.replace("editor", {
      width : '100%',
      height : '300px',
      removePlugins: 'elementspath',
      toolbar : []
    });
  </script>

</body>
</html>
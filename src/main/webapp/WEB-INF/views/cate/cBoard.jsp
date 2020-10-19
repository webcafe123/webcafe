<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('#cateListDisp').load('cateList.html');
	});
</script>
</head><body>

<div class="container" align="center">
	<h2 class="text-primary">${cate.c_subject }</h2>
<table class="table table-striped table-bordered">
	<tr><td>번호</td><td>${cate.c_subject }</td></tr>
	<tr><td>생성자</td><td>${cate.c_id }</td></tr>
	<tr><td>intro</td><td><pre>${cate.c_intro }</pre></td></tr>
	<tr><td>생성일</td><td>${cate.c_regdate }</td></tr>
	<tr><td colspan="2">
		<a href="${path}/cate/cateList.html" class="btn btn-info">카테고리 관리</a>
		<a href="${path}/cate/updateForm.html?c_num=${cate.c_num }" class="btn btn-warning">수정</a>
		<a href="${path}/cate/deleteForm.html?c_num=${cate.c_num }" class="btn btn-danger">삭제</a>
		<a href="${path}/cate/insertCateForm.html?nm=${cate.c_num }" class="btn btn-success">카테고리 항목 추가</a>
	</td></tr>
</table>
<div id="cateListDisp"></div>
</div>

</body>
</html>
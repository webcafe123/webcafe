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
	<h2 class="text-primary">카테고리 수정</h2>
<form action="updateCate.html" method="post" name="frm">
	<input type="hidden" name="c_num" value="${cate.c_num}">
<table class="table table-hover table-bordered">
	<tr><td>카테고리명</td><td><input type="text" name="c_subject"
		required="required" autofocus="autofocus"
		value="${cate.c_subject}"></td></tr>
	<tr><td>intro</td><td><textarea rows="5" cols="49" name="c_intro"
		>${cate.c_intro}</textarea></td></tr>
		
	<tr><td colspan="2" align="center">
		<input type="submit" value="수정" class="btn btn-sm btn-success"> 
		<a href="javascript:history.back()" class="btn btn-sm btn-danger">취소</a></td></tr>
</table>
</form>
<div id="cateListDisp"></div>
</div>


</body>
</html>
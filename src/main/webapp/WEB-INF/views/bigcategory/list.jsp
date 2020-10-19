<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>

<div class="container" align="center">
	<h2 class="text-primary">빅 카테고리 분류</h2>
<table class="table table-striped table-bordered">
	<tr><td>번호</td><td>순서</td><td>빅카테고리명</td></tr>
<c:if test="${empty list }">
	<tr><td colspan="3">데이터가 없습니다</td></tr>
</c:if>		
<c:if test="${not empty list }">
<c:forEach var="bigcategory" items="${list }">
	<tr><td>${bigcategory.bcNum }</td>
		<td>${bigcategory.bcStep }</td>
		<td>${bigcategory.bcSubject }</td>
	</tr>
</c:forEach>
</c:if>
</table>
<a href="${path}/bigcategory/insertBigCateForm.html" class="btn btn-info">빅카테고리 입력</a>
<a href="${path}/bigcategory/list.html" class="btn btn-success">빅카테고리 list</a>

</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head><body>


<div class="container" align="center">
<!-- 완성후 이부분 삭제 -->	<h4 class="text-primary">카테고리 관리</h4> 
<table class="table table-striped table-bordered">
	<tr><td colspan="3">
		<div align="right">
			<a href="${path}/cate/insertCateForm.html"
				class="btn btn-info glyphicon glyphicon-plus"> 카테고리 입력</a>
				<!-- <i class="fas fa-folder-plus" style="font-size:27px;"></i>-->
			<a href="${path}/cate/cate.html" 
				class="btn btn-warining">
				<i class="fas fa-backspace" style="font-size:27px;">
				</i></a></div></td></tr> 
<c:if test="${empty list }">
	<tr><td>데이터가 없습니다</td></tr>
</c:if>		
<c:if test="${not empty list }">
<c:forEach var="cate" items="${list }">
	<tr>
	<c:if test="${cate.c_del == 'y'}">
		<td colspan="3" align="center">삭제된 카테고리입니다</td>
	</c:if>
	<c:if test="${cate.c_del != 'y'}">
		<td align="center" width="5%">
		<c:if test="${!(cate.c_level > 0) }">♬</c:if></td>
		<td title="${cate.c_intro}">
		
		<c:if test="${!(cate.c_level > 0) }">
			${cate.c_subject }
		</c:if>
		
		<c:if test="${cate.c_level > 0 }">
			<img src="images/level.gif" alt="" height="5"
				width="${cate.c_level*10}">
<!-- 여기 url 입력 어떻게? -->
			<a href="${path}/board/baordList.html?c_num={cate.c_num}"  
				class="btn">${cate.c_subject }</a>
		</c:if>	
		</td>
		
		<td title="${cate.c_num}" align="center" width="5%">
			<a href="${path}/cate/cBoard.html?c_num=${cate.c_num }"
				class="glyphicon glyphicon-cog"></a></td>		 
	</c:if>
	</tr>
</c:forEach>
</c:if>
</table>

</div>


</body>
</html>
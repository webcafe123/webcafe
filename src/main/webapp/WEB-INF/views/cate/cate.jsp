<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>

<div class="container" align="center"
	style="height: 40px; padding-top: 3px; border-top: 2px solid black; border-bottom: 1px solid #ededed;">
	<h4 class="text-primary">카테고리</h4> 
<table class="table table-striped table-bordered">
	<tr><td colspan="3">
		<div align="right"><a href="${path}/cate/cateList.html" 
		class="btn btn-info, glyphicon glyphicon-edit">.edit</a></div></td></tr> 
<c:if test="${empty list }">
	<tr><td>데이터가 없습니다</td></tr>
</c:if>		
<c:if test="${not empty list }">
<c:forEach var="cate" items="${list }">
	<tr>
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
	</c:if>
	</tr>
</c:forEach>
</c:if>
</table>

</div>


</body>
</html>
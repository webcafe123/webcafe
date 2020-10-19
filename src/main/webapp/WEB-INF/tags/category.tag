<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag dynamic-attributes="current"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="container" align="center">
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
<%-- <%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div>
<ul>
	<li> <a href="first.html">영꿀이벤트공지</a></li>
	<li id="fistC"> [친목] 두런두런</li>
	<li> [미드]나의추천미드</li>
	<li> [영어]끝말잇기</li>
	<li> 이건 pull request 테스트 용 </li>
</ul>
</div>
 --%>
 
 <%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag dynamic-attributes="current"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div  align="center" style="width:200px">
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
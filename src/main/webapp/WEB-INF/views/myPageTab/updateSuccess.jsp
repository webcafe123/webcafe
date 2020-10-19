<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>회원 정보 수정 결과</title>
</head>
<body>
<c:if test="${result>0 }">
<script type="text/javascript"> 
alert("정보 수정 완료~!" );
location.href="userInfoUpdateForm.html";

//location.href="empSelect.html?empno=${emp.empno}";
</script>
</c:if>

<c:if test="${result==0 }">
<script type="text/javascript"> 
alert("수정실패,,,,,,,,,,,,");
history.go(-1);
</script>
</c:if>



</body>
</html>
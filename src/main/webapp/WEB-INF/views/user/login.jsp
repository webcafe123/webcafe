<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
	<c:if test="${result > 0}">
		<script type="text/javascript">
			alert("로그인 성공");
			location.href = "main.html";
		</script>
	</c:if>

	<c:if test="${result == 0}">
		<script type="text/javascript">
			alert("암호를 잊으셨나요?");
			history.go(-1);
		</script>
	</c:if>

	<c:if test="${result == -1}">
		<script type="text/javascript">
			alert("존재하지 않는 아이디 입니다.");
			history.go(-1);
		</script>
	</c:if>
</body>
</html>
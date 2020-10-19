<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function bcStepChk() {
		if (!frm.bcStep.value) {
			alert("빅 카테고리 순서 체크");
			frm.bcStep.focus(); 	//bcStep에 커서 위치해라
			return false;			//insertBigCate.html action 실행하지 말아라
		}
		$.post("bcStepChk.html","bcStep="+frm.bcStep.value, 
				function(data) {
			$('#disp').html(data);
		});
	}
</script>
</head><body>

<div class="container" align="center">
	<h2 class="text-primary">빅카테고리 입력</h2>
<form action="insertBigCate.html" method="post" name="frm" >
	<%-- <input type="hidden" name="bcNum" value="${bcNum }"/> --%>
<table class="table table-hover table-bordered">
	<tr><td>제목</td><td><input type="text" name="bcSubject"
		required="required" autofocus="autofocus"/></td></tr>
	<tr><td>순서</td><td><input type="number" name="bcStep" 
		required="required"/><input type="button"
		value="중복체크" onclick="bcStepChk()" class="btn btn-sm btn-success">
		<div id="disp" class="err"></div></td></tr>	
	<tr><td colspan="2"><input type="submit"></td></tr>		
</table></form>
<a href="${path}/bigcategory/list.html" class="btn btn-success">빅카테고리 list</a>
</div>

</body>
</html>
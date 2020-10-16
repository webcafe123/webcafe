<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>쪽지함</title>

<script type="text/javascript">

	$(function(){
		
		$('#received').click(function(){
			$('#received').attr('style','color:black');
			$('#send').attr('style','font-weight:normal');
			$('#received_span').attr('style','display:active');
			$('#send_span').attr('style','display:none');
		});
		
		$('#send').click(function(){
			$('#received').attr('style', 'color:black;cursor:pointer;font-weight:normal;font-size:13px');
			$('#send').attr('style','font-weight:bolder;cursor:default;font-size:14px');
			$('#received_span').attr('style','display:none');
			$('#send_span').attr('style','display:active');
		});
	});

</script>

</head>
<body>
<div >
	<p style="background-color:#03cf5d; padding-top:10px; padding-bottom:10px;color:white"> &nbsp; 쪽지함 </p>
</div>

<div class="container">

<section>
	<table >
		<tr > 
			<td style="cursor:default;font-weight:bolder;padding-top:5px;font-size:14px"> 
			<span id="received" > <img src="${path }/resources/images/msgR.PNG"> 받은 쪽지함 </span>&nbsp; | &nbsp; </td> 
			<td style="cursor:pointer;padding-top:5px;font-size:13px"> 
			<span id="send"> <img src="${path }/resources/images/msgS.PNG"> 보낸 쪽지함 </span></td>	
			
			<td align="right"> 
				<div align="right">
				&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
				<a href="" class="btn btn-default btn-sm">삭제</a>
				</div>
			</td>		
		</tr>
	</table>

	<hr style="border-top:1px solid #BDBDBD; border-bottom:1px"/>
	
	
	<div id="received_span" style="display:none">
		<u:receivedMail />
	</div>
	
	<div id="send_span" style="display:none">
		<u:sendMail /> 
	</div>
</section>


<!-- 쪽지함 form -->
<div >
	<table style="font-size:13px">
		<tr style="background-color:#EAEAEA; border-bottom:1px solid #8C8C8C"> 
			<td width=25 style="padding-top:10px;padding-bottom:10px;padding-left:5px;border-right:1px solid #8C8C8C"> <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1"> </td>
			<td width=80 style="border-right:1px solid #8C8C8C"> &nbsp; 보낸 사람</td>
			<td width=285 style="border-right:1px solid #8C8C8C">&nbsp;  내용 - 기본 form</td>
			<td width=80 style="border-right:1px solid #8C8C8C"> &nbsp; 받은 날짜 </td>
		</tr>
		
		<!-- db 연동해서 추가될 부분 -->
		<tr style=" border-bottom:1px solid #8C8C8C">
			<td width=25 style="padding-top:10px;padding-bottom:10px;padding-left:5px;border-right:1px solid #8C8C8C"> <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1"> </td>
			<td width=80 style="border-right:1px solid #8C8C8C"> &nbsp; 유둉이</td>
			<td width=285 style="border-right:1px solid #8C8C8C">&nbsp;  이거 테스트용이야</td>
			<td width=80 style="border-right:1px solid #8C8C8C"> &nbsp; 2020-10-16 </td>
		</tr>
	</table>
</div>
</div>
</body>
</html>
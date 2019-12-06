<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<style>
	h1{
		text-align:center;
	}
	table{
		margin-left: 200pt;
	}
</style>
</head>
<jsp:include page="../common/menubar.jsp"/>	
<div id="container" style="overflow: auto; height: 800px;" ><!-- container -->

<form action="dinsert.do" method="post" enctype="multipart/form-data">
	<div id="fileArea">
		<input type="file" id="thumbnailImg1" multiple="multiple" name="thumbnailImag1" onchange="LoadImg(this,1)">
		<input type="text" name="breakfastImg">
		<input type="file" id="thumbnailImg2" multiple="multiple" name="thumbnailImag2" onchange="LoadImg(this,2)">
		<input type="text" name="lunchImg">
		<input type="file" id="thumbnailImg3" multiple="multiple" name="thumbnailImag3" onchange="LoadImg(this,3)">
		<input type="text" name="dinnerImg">
		<input type="file" id="thumbnailImg4" multiple="multiple" name="thumbnailImag4" onchange="LoadImg(this,4)">
		<input type="text" name="snackImg">
	</div>

<h1>다이어트 일지입니다~~~~</h1>

 	<table>
		<tr>
			<td>몸무게</td>
			<td><input type="text" size="10"></td>
		</tr>
		<tr>
			<td>아침</td>
			<td>
				<div id="breakfastImgArea">
					<img id="breakfastImg"  width ="500" height="400" style="border:1px solid black">
				</div>
				<input type="text" size="50" id="breakfastText">
			</td>	
		</tr>
		<tr>
			<td>점심</td>
			<td>
				<div id="lunchImgArea">
					<img id="lunchImg"  width ="500" height="400" style="border:1px solid black">
				</div>
				<input type="text" size="50" id="lunchText">
			</td>
		</tr>
		<tr>
			<td>저녁</td>
			<td>
				<div id="dinnerImgArea">
					<img id="dinnerImg"  width ="500" height="400" style="border:1px solid black">
				</div>
				<input type="text" size="50" id="dinnerText">
			</td>						
		</tr>
		<tr>
			<td>간식</td>
			<td>	
				<div id="snackImgArea">
					<img id="snackImg"  width ="500" height="400" style="border:1px solid black">
				</div>
				<input type="text" size="50" id="snackText">
			</td>		
		</tr>
		<tr>
			<td colspan="2">물 섭취량<br>어쩌구 저저구</td>
		</tr>
		<tr>
			<td>운동</td>
			<td><textarea rows="3" cols="10"></textarea></td>				
		</tr>
		<tr>
			<td>메모</td>
			<td><textarea rows="3" cols="10"></textarea></td>				
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="등록하기">&nbsp;
				<input type="reset" value="등록 취소">
			</td>
		</tr>
		
	</table> 
	
	 <script>
	 
	 
		$(function(){
			$("#fileArea").hide();
			
			$("#breakfastImgArea").click(function(){
				$("#thumbnailImg1").click();
			});
			$("#lunchImgArea").click(function(){
				$("#thumbnailImg2").click();
			});
			$("#dinnerImgArea").click(function(){
				$("#thumbnailImg3").click();
			});
			$("#snackImgArea").click(function(){
				$("#thumbnailImg4").click();
			});
		});
	 
	 
		// 각각의 영역에 파일을 첨부 했을 경우 미리 보기가 가능하도록 하는 부분
		function LoadImg(value, num) {
			// value는 함수를 발동시킨 객체(file타입 input태그)
			if (value.files[0] != undefined) {
				var reader = new FileReader();
				reader.onload = function(e) {
					switch (num) {
					case 1:
						$("#breakfastImg").attr("src", e.target.result);
						$("input[name=breakfastImg]").val("true");
						break;
					case 2:
						$("#lunchImg").attr("src", e.target.result);
						$("input[name=lunchImg]").val("true");
						break;
					case 3:
						$("#dinnerImg").attr("src", e.target.result);
						$("input[name=dinnerImg]").val("true")
						break;
					case 4:
						$("#snackImg").attr("src", e.target.result);
						$("input[name=snackImg]").val("true")
						break;
					}
				}
				reader.readAsDataURL(value.files[0]);
			}

		}
	 </script>
	
	
	
	
	














<c:if test="${!empty loginUser }">
	&nbsp;&nbsp;&nbsp;
	<button onclick="location.href='dinsertView.do'">글쓰기</button>
</c:if>






















</form>

</div>
</body>
<footer>
	<jsp:include page ="../common/footer.jsp"/>
</footer>
</html>
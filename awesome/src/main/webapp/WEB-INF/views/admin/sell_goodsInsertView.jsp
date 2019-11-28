<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

	<jsp:include page ="../common/menubar.jsp"/>
	<%-- <jsp:include page ="../admin/adminMenu.jsp"/> --%>
	
	
	<div id="container" style="overflow: auto; height: 800px;" ><!-- container -->
	
<h1 align="center"> 상품 등록 페이지 </h1>
	
	<br><br>
	<form action="sellgoodsInsert.do" method="post" enctype="Multipart/form-data">
		<table class="type02" align="center">	
			<tr>
				<th>상품 제목  <span style = "color:red; font-size : 1.5em;">*</span> </th>
				<td><input type="text" size ="108" name ="goodsTitle" style="height:20px;"></td>
			</tr>
			<!-- <tr>
				<th>상품 가격  <span style = "color:red; font-size : 1.5em;">*</span> </th>
				<td><input type="number" size ="108" name ="goodsPrice" style="height:20px;">원</td>
			</tr>
			<tr>
				<th>상품 수량  <span style = "color:red; font-size : 1.5em;">*</span> </th>
				<td><input type="number" size ="108" name ="count" style="height:20px;">원</td>
			</tr> -->
			<tr>
				<th> 대표이미지  <span style = "color:red; font-size : 1.5em;">*</span> </th>
				<td>
					<div id = "titleImgArea" >
						<img id ="titleImg" width ="800" height ="300">
					</div>
				</td>					
			</tr>
			<tr>
				<th> 내용사진 </th>
				<td>
					<div id="contentImgArea1">
						<img id ="contentImg1" width ="800" height ="4500">
					</div>						
				</td>
			</tr>
			<tr>
				<th>상품 내용 <span style = "color:red; font-size : 1.5em;">*</span></th>
				<td><textarea id ="goodsContent" name="goodsContent" rows="10" cols ="109" size ="resize:none" required></textarea>
				</td>
			</tr>		
				<!-- 파일 업로드 하는 부분(file 타입형 input태그들) -->
				<div id ="fileArea">							   <!-- input태그가 눌리면 this(객체)와1을 매개변수로 LoadImg함수발동 -->	
					<input type="file" id ="thumbnailImg1" multiple="multiple" name="titlethumbnailImg" onchange="LoadImg(this,1)">
					<input type="file" id ="thumbnailImg2" multiple="multiple" name="subthumbnailImg" onchange="LoadImg(this,2)">
				</div>
				
			
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="등록하기"> &nbsp;
						<input type="reset" value="등록취소">
					</td> 
				</tr>
				</table>
				
			<script>
					// 내용 작성 부분의 공간을 클릭할 때 파일 첨부 창이 뜨도록 설정하는 부분
					$(function(){
						$("#fileArea").hide();
						
						// 사진이 들어간 div를 클릭시 thumbnailImg(n)클릭하는 효과가 나도록
						$("#titleImgArea").click(function(){
							$("#thumbnailImg1").click();
						});
						$("#contentImgArea1").click(function(){
							$("#thumbnailImg2").click();
						});
					});
					
					// 각각의 영역에 파일을 첨부 했을 경우 미리 보기가 가능하도록 하는 부분(함수 - onchange="LoadImg(this,1)")
					function LoadImg(value, num){
						if(value.files[0] != undefined){	// 함수를 발동시킨 객체가 파일을 선택했다면 
							// value는 함수를 발동시킨 객체(file타입 input태그)이고
							// value.files[0]은 input태그로 파일을 선택 했으면 undefined가 아니고 선택 안했으면 undefined(null)다.		
							var reader = new FileReader();
							
							reader.onload = function(e){	// 파일 로딩이 다된다면
								switch(num){
								case 1:
									$("#titleImg").attr("src",e.target.result);	//이미지 변환작업
									break;
								case 2:
									$("#contentImg1").attr("src",e.target.result);
									break;
								}
							}
							reader.readAsDataURL(value.files[0]);	// 파일의 url까지 스트림에 넘겨준다
						}
					} 
				</script>
				
				
				<!-- InsertThumbnailServlet 만들러 ㄱㄱ!!!! -->
	</form>	
	
		
		<p align="center">
			<a href="adminMain.do">관리자페이지로 이동</a>
			<a href="sell_goodsList.do">목록 보기로 이동</a>
		</p>
	</div>
</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</html>
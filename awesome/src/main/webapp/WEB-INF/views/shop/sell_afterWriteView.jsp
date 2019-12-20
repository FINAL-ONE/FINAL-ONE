<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

<!-- Star Rating -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

.afterGoods tr{
	margin-bottom: 5px;
}

.afterTable tr{
	margin-bottom: 5px;
}
.afterTable td{
	width : 700px;
}


.fa-star{
	color : dark-gray;
}
.checked {
  	color: orange;
}


#goodsGobackBtn {
    margin: 10px 0px 15px;
    border: 1px solid #fe6666;
    background: #fe6666;
    border-radius: 2px;
    color: #fff;
    text-align: center;
    font-size: 14px;
    font-weight: 600;
    width: 259px;
    height: 40px;
    cursor: pointer;
}

#goodsGobackBtn:hover{
	background: #fff;
	color: #fe6666;
}

</style>
</head>
<body>

	<jsp:include page ="../common/menubar.jsp"/>
	<div id="container" style="overflow: auto; height: auto;" ><!-- container -->
	
	<h1 align="center"> 후기 등록 게시판</h1>
	
	<br><br>
	
	<table id = "afterGoods" align="center">
		<c:forEach var="a" items="${list}">
			<tr>
				 <th>상품</th>
				 <td><img src="resources/auploadFiles/${a.filePath}" width ="150px" height ="150px"></td>
			</tr>
			<tr>
				<th>상품명</th>
				<td>${a.goodsTitle}</td>
			</tr>
			
<!-- 			<tr>
				<th>후기 갯수</th>
				<td> ?? </td>
			</tr> -->
							
			<tr>
				<td colspan="2" align="center">
					<c:forEach var="a" items="${list}">
						<c:url var="adetail" value="adetail.do">
							<c:param name="sellNum" value="${a.sellNum }"/>
						</c:url>
						<br>
						<button id="goodsGobackBtn"><a href="${adetail}" style="font-size : 20px; text-decoration: none; color : black;">제품 상세보기</a></button>
					</c:forEach>	
				</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<form action="sellafterInsert.do" method="post" enctype="Multipart/form-data">
		<table class="afterTable" align="center">	
			<c:forEach var="a" items="${list}">
				<input type="hidden" name ="sellNum" value="${a.sellNum}">
				<input type="hidden" name="gId" value="${a.gId }">
				<input type="hidden" name="mId" value="${sessionScope.loginUser.mid }">
				<%-- <c:out value = "${a.sellNum }"/> --%>
			</c:forEach>
			<tr>
				<th> 작성자 </th>
				<td>${loginUser.userName }</td>
			</tr>
			<tr>
				<th> 내용 </th>
				<td><textArea id= "summernote" name= "rContent" rows="30" col="100" placeholder="내용을 입력해주세요"></textArea>
				</td>
	<!-- 		<td><textarea rows="10"></textarea></td> -->
			</tr>
			<tr>
				<th>첨부파일</th>
				<td>
					<input type="file" name="afteruploadFiles">
				</td>
			</tr>
			<tr>
				<th> 만족도 </th>
				<td>
					<input type="radio" name ="star" value = "1"style="margin-left : 30px;">
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
					<input type="radio" name ="star" value = "2" style="margin-left : 30px;">
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
					<input type="radio" name ="star" value = "3" style="margin-left : 30px;" >
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
					<input type="radio" name ="star" value = "4" style="margin-left : 30px;">
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star"></span>
					<input type="radio" name ="star" value = "5" style="margin-left : 30px;">
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="등록하기"> &nbsp;
					<input type="reset" value="등록취소">
				</td> 
			</tr>	
		</table>
		
		<script type="text/javascript">
			    $(document).ready(function () {
			      $('#radioButton').click(function () {
			        // getter
			        var radioVal = $('input[name="star"]:checked').val();
			        	alert(radioVal);
			      });
			    });
  		</script>
  		
  		
		<!-- 파일 업로드 하는 부분(file 타입형 input태그들) -->
			<!-- <div id ="fileArea">							   input태그가 눌리면 this(객체)와1을 매개변수로 LoadImg함수발동	
				<input type="file" id ="thumbnailImg1" multiple="multiple" name="titlethumbnailImg" onchange="LoadImg(this,1)">
			</div>
			<script>
					// 내용 작성 부분의 공간을 클릭할 때 파일 첨부 창이 뜨도록 설정하는 부분
					$(function(){
						$("#fileArea").hide();
						
						// 사진이 들어간 div를 클릭시 thumbnailImg(n)클릭하는 효과가 나도록
						$("#titleImgArea").click(function(){
							$("#thumbnailImg1").click();
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
								}
							}
							reader.readAsDataURL(value.files[0]);	// 파일의 url까지 스트림에 넘겨준다
						}
					} 
				</script>	 -->
				
	</form>
	
	</div>
	
	
	<!--  summernote 동작 -->
	<script> 
	$(document).ready(function() {
	    $('#summernote').summernote({
	            height: 300,                 // set editor height
	            minHeight: null,             // set minimum height of editor
	            maxHeight: null,             // set maximum height of editor
	            focus: true                  // set focus to editable area after initializing summernote
	    });
	});
	
	$(document).ready(function() {
	     $('#summernote').summernote();
	});
	</script>




</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</html>
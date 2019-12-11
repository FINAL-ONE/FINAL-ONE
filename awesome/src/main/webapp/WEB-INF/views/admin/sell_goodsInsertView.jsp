<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 select[multiple]{
     height: 100%;
   }
	select, option {
	    width: 100%;
	    /* overflow-y: auto; */
	}
	.layer { display: none; }
	.guide{
		display:none;
		font-size:12px;
		top:12px;
		right:10px;
	}
	span.ok{color:green;}
	span.error{color:red;}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

	<jsp:include page ="../common/menubar.jsp"/>
	<%-- <jsp:include page ="../admin/adminMenu.jsp"/> --%>
	
	
	<div id="container" style="overflow: auto; height: auto;" ><!-- container -->
	
<h1 align="center"> 상품 등록 페이지 </h1>
	
	<br><br>
	<form action="sellgoodsInsert.do" method="post" enctype="Multipart/form-data" id="sellgoodsInsertForm">
		<table class="type02" align="center">	
			<tr>
				<td><input id="cateCd" type="hidden" width="100%" name ="cateCd" readonly /></td>
			<tr>
				<th>상품 제목  <span style = "color:red; font-size : 1.5em;">*</span> </th>
				<td><input type="text" size ="89" name ="goodsTitle" style="height:20px;"></td>
			</tr>
			<tr>
	            <th> 상품 선택  <span style = "color:red; font-size : 1.5em;">*</span> </th>
	            <td>
					<input type="text" id="goodsName" name="goodsName" placeholder="선택하세요." list="myinter" />   
					<datalist id="myinter" name="myinter">
						<select id="selectBox" name="selectBox">
							<c:forEach var="g" items="${glist}">
								<option value="${g.goodsName}">${g.goodsName}</option>
							</c:forEach>
						</select>
					</datalist>
				</td>
			</tr>
			<tr>
				<th></th>
				<td>
					<!-- <span class="guide ok">이 상품명은 사용 가능합니다.</span> -->
					<span class="guide error">이 상품은 사용할수 없습니다.</span>
					<input type="hidden" name="idDuplicateCheck" id="idDuplicateCheck" value="0">
				</td>
			</tr>
			<tr>
				<th>상품 가격  <span style = "color:red; font-size : 1.5em;">*</span> </th>
				<td><input id="goodsPrice" type="number" size ="108" name ="goodsPrice" style="height:20px;"></td>
			</tr>
			<tr>
				<th>상품 수량  <span style = "color:red; font-size : 1.5em;">*</span> </th>
				<td><input id="count" type="number" size ="108" name ="count" style="height:20px;"></td>
			</tr>
			<tr>
				<th> 대표이미지  <span style = "color:red; font-size : 1.5em;">*</span> </th>
				<td>
					<div id = "titleImgArea" >
						<img id ="titleImg" width ="600" height ="600">
					</div>
				</td>
			</tr>
			<tr>
				<th> 내용사진 </th>
				<td>
					<div id="contentImgArea1">
						<img id ="contentImg1" width ="600" height ="2500">
					</div>						
				</td>
			</tr>
			<tr>
				<th>상품 내용 <span style = "color:red; font-size : 1.5em;">*</span></th>
				<td><textarea id ="goodsContent" name="goodsContent" rows="10" cols ="81" size ="resize:none" required></textarea>
				</td>
			</tr>		
				<!-- 파일 업로드 하는 부분(file 타입형 input태그들) -->
				<div id ="fileArea">							   <!-- input태그가 눌리면 this(객체)와1을 매개변수로 LoadImg함수발동 -->	
					<input type="file" id ="thumbnailImg1" multiple="multiple" name="titlethumbnailImg" onchange="LoadImg(this,1)">
					<input type="file" id ="thumbnailImg2" multiple="multiple" name="subthumbnailImg" onchange="LoadImg(this,2)">
				</div>
			<tr>
				<td colspan="2" align="center">
					<!-- <input type="submit" value="등록하기"> &nbsp; -->
					<input type="button" onclick="validate()" value="등록하기"> &nbsp;
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
	
	<script>
	// 선택한 상품의 가격,수량 조회후 출력 ---------------------------------------------------------
		$(function(){
			$("#goodsName").on("keyup",function(){
				var goodsName =$(this).val().trim();// 공백제거후 담음
				
				$("#goodsPrice").val("");
				$("#count").val("");
				
				$.ajax({
					url:"selectGoodsValue.do",
					data:{goodsName:goodsName},
					success:function(data){

						for(var i in data){
							if( data == null){
								$("#goodsPrice").val("");
								$("#count").val("");
							}
							// 필요한건 2개지만 일단 생성 함
							var $gId = data[i].gId;
							var $gcateCd = data[i].cateCd;
							var $gName = decodeURIComponent(data[i].goodsName.replace(/\+/g, " "));
							var $gPrice = data[i].goodsPrice;
							var $gCount = data[i].count;
							var $gStatus = data[i].goodsStatus;
							var $gSoldout = data[i].soldout;
							 
							
							$("#goodsPrice").val($gPrice);
							$("#count").val($gCount);
							$("#cateCd").val($gcateCd);
						}
					},
					error:function(request, status, errorData){
						alert("error code : " + request.status + "\n"
											  + "message : " + request.responseText
											  + "error : " + errorData);
					}
				});
				
				$.ajax({
					url:"selectGoodsNm.do",
					data:{goodsName:goodsName},
					success:function(data){
						if(data.isUsable != true){
							 
							$(".guide.error").hide(); // 이전값이 에러표시나면 숨켜주기위해
							//$(".guide.ok").show();
							$("#idDuplicateCheck").val(1);		
						}else{
							$(".guide.error").show();
							//$(".guide.ok").hide();
							$("#idDuplicateCheck").val(0);							
						}
						
					},
					error:function(request, status, errorData){
						alert("error code : " + request.status + "\n"
											  + "message : " + request.responseText
											  + "error : " + errorData);
					}
				});
				
				
			});
		});
		// 선택한 상품의 가격,수량 조회후 출력 ---------------------------------------------------------
		
		/* str 숫자만 입력할수 있게 -------------------------------------------------------------------------------- */
		function addCommas(x) {
		    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
		 
		//모든 콤마 제거
		function removeCommas(x) {
		    if(!x || x.length == 0) return "";
		    else return x.split(",").join("");
		}

		$("input:text[numberOnly]").on("focus", function() {
		    var x = $(this).val();
		    x = removeCommas(x);
		    $(this).val(x);
		}).on("focusout", function() {
		    var x = $(this).val();
		    if(x && x.length > 0) {
		        if(!$.isNumeric(x)) {
		            x = x.replace(/[^0-9]/g,"");
		        }
		        x = addCommas(x);
		        $(this).val(x);
		    }
		}).on("keyup", function() {
		    $(this).val($(this).val().replace(/[^0-9]/g,""));
		});
	/* end 숫자만 입력할수 있게 -------------------------------------------------------------------------------- */

//str 등록버튼 클릭시----------------------------------------------------------------------------------------------------

	function validate(){
		if($("#goodsPrice").val()==0){
			alert("상품가격을 입력해 주세요");
			$("#goodsPrice").focus();			
		}else if($("#count").val()==0){
			alert("상품수량을 입력해 주세요");
			$("#count").focus();
		}else if($("#goodsName").val()==0){
			alert("사용 가능한 상품명을 입력해 주세요");
			$("#goodsName").focus();
		}else if($("#idDuplicateCheck").val()==0){
			alert("사용 가능한 상품명을 입력해 주세요");
			$("#goodsName").focus();
		}else{
			var targetForm = $("#sellgoodsInsertForm :input");
			// ,콤마 제거
			$.each(targetForm, function(index, elem){
			      $(this).val($(this).val().replace(/,/g, ''));
			});
			
			$("#sellgoodsInsertForm").submit();
		} 
	}	

//end 등록버튼 클릭시----------------------------------------------------------------------------------------------------		
	</script>

</body>



<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</html>
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
	select, option input{
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


	.ScrollButton {
	  position: fixed;   /* 버튼의 위치 고정 */
	  right: 10px;       /* x 위치 입력 */
	  cursor: pointer;   /* 호버링 했을 때 커서 모양 변경 */
	  z-index: 10;       /* 다른 태그에 가려지지 않게 우선순위 변경 */
	  display: none;     /* 스크롤 위치에 상관없이 보이게 하려면 생략 */
	}
	/* 두 태그에 각각 y 위치 입력 */
	#TopButton {
	  bottom: 108px;        
	}
	#BottomButton {
	  bottom: 75px;
	}



</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
   
</head>
<body>

	<jsp:include page ="../common/menubar.jsp"/>
	<%-- <jsp:include page ="../admin/adminMenu.jsp"/> --%>
	
	
	<div id="container" style="overflow: auto; height: auto;" ><!-- container -->
	
<h1 align="center"> 상품 수정 페이지 </h1>
	
	<br><br>
	<form action="UpdateSellGoods.do" method="post" enctype="Multipart/form-data" id="sellgoodsInsertForm">
		<table class="type02" align="center">	
		<c:forEach var="n" items="${list}">
			<tr>
				<td><input id="cateCd" type="hidden" width="100%" name ="cateCd" readonly value="${n.cateCd}"/></td>
				<td><input id="gId" type="hidden" width="100%" name ="gId" readonly value="${n.gId}"/></td>
				<td><input id="sellNum" type="hidden" width="100%" name ="sellNum" readonly value="${n.sellNum}"/></td>
				<td><input id="filePath" type="hidden" width="100%" name ="filePath" readonly value="${n.filePath}"/></td>
				<td><input id="contentFilePath" type="hidden" width="100%" name ="contentFilePath" readonly value="${n.contentFilePath}"/></td>
			<tr>
				<th>상품 제목  <span style = "color:red; font-size : 1.5em;">*</span> </th>
				<td><input id="goodsTitle" type="text" name ="goodsTitle" style="height:20px; width:100%;" value="${n.goodsTitle}"></td>
			</tr>
			<tr>
	            <th> 상품 선택  <span style = "color:red; font-size : 1.5em;">*</span> </th>
	            <td>
					<input type="text" id="goodsName" name="goodsName" placeholder="선택하세요." list="myinter" value="${n.goodsName}"  style="margin-bottom: 15px"/>   
					<datalist id="myinter" name="myinter" >
						<select id="selectBox" name="selectBox">
							<c:forEach var="g" items="${glist}">
								<option value="${g.goodsName}" style="width:10%;">${g.goodsName}</option>
							</c:forEach>
						</select>
					</datalist>
					<label style="margin-left: 100px">상품 가격</label>  <span style = "color:red; font-size : 1.5em;">*</span>
					<input id="goodsPrice" type="text" name ="goodsPrice" style="height:20px;" numberOnly value="${n.goodsPrice}">
					<label style="margin-left: 100px">상품 수량</label>  <span style = "color:red; font-size : 1.5em;">*</span>
					<input id="count" type="text" name ="count" style="height:20px;" numberOnly value="${n.count}">
				</td>
				
			</tr>
			<tr>
				<th></th>
				<td>
					<!-- <span class="guide ok">이 상품명은 사용 가능합니다.</span> -->
					<span class="guide error">이 상품은 사용할수 없습니다.</span>
					<input type="hidden" name="idDuplicateCheck" id="idDuplicateCheck" value="0">
				</td>
			<tr>
				<th>상품 내용 <span style = "color:red; font-size : 1.5em;">*</span></th>
					<td><textarea id ="summernote" name="goodsContent" rows="10" cols ="81" size ="resize:none" required>${n.goodsContent}</textarea>
				<!-- <td><textarea id ="goodsContent" name="goodsContent" rows="10" cols ="81" size ="resize:none" required></textarea> -->
				</td>
			</tr>
			<tr>
				<th>대표이미지  <span style = "color:red; font-size : 1.5em;">*</span> </th>
				<td>
					<div id = "titleImgArea" >
						<img src="resources/auploadFiles/${n.filePath}" name="filePath" id ="titleImg" style="width:100%; min-height:100px; height: auto;" >
					</div>
				</td>
			</tr>
			<tr>
				<th>내용사진 </th>
				<td> 
					<div id="contentImgArea1">
						<img src="resources/auploadFiles/${n.contentFilePath}" name="contentFilePath" id ="contentImg1" style="width:100%; min-height:100px; height: auto;"> 
					</div>						
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
					<input type="button" onclick="validate()" value="수정하기"> &nbsp;
					<input type="reset" value="수정취소">
				</td> 
			</tr>
			</c:forEach>
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
				
				<script> 
				$(document).ready(function() {
				    $('#summernote').summernote({
				            height: 150,                 // set editor height
				            minHeight: null,             // set minimum height of editor
				            maxHeight: null,             // set maximum height of editor
				            focus: true                  // set focus to editable area after initializing summernote
				    });
				});
				
				$(document).ready(function() {
				     $('#summernote').summernote();
				});
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
			$("#idDuplicateCheck").val(1);
			
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
							$("#gId").val($gId);
							 
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
		if($("#goodsTitle").val()==0){
			alert("제목을 입력해 주세요");
		}else if($("#goodsPrice").val()==0){
			alert("상품가격을 입력해 주세요");
			$("#goodsPrice").focus();			
		}else if($("#count").val()==0){
			alert("상품수량을 입력해 주세요");
			$("#count").focus();
		}else if($("#summernote").val()==0){
			alert("상품내용을 입력해 주세요");
		    $('#summernote').summernote({
	            focus: true
	    	});
		}else if($("#thumbnailImg1").val()==0){
			alert("대표 이미지를 넣어주세요");
			$("#thumbnailImg1").click();
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
			      $("#goodsPrice").val($("#goodsPrice").val().replace(/,/g, ''));
			      $("#count").val($("#count").val().replace(/,/g, ''));
			});
 			
			$("#sellgoodsInsertForm").submit();
		} 
	}	

//end 등록버튼 클릭시----------------------------------------------------------------------------------------------------		
	</script>

	<a id="TopButton" class="ScrollButton"><img src="resources/images/top.PNG"></a>
	<a id="BottomButton" class="ScrollButton"><img src="resources/images/boottom.PNG"></a>
	<a id="footer"></a>
	<!-- 위로 아래로 버튼 클릭시 이동 -->		
	<script>
	$(function() {
	    $(window).scroll(function() {
	        if ($(this).scrollTop() > 600) {
	            $('.ScrollButton').fadeIn();
	        } else {
	            $('.ScrollButton').fadeOut();
	        }
	    });
	        
	    $("#TopButton").click(function() {
	        $('html').animate({scrollTop : 0}, 600);
	    });
	 
	    $("#BottomButton").click(function() {
	        $('html').animate({scrollTop : ($('#footer').offset().top)}, 600);
	    });
	});

	</script>

</body>



<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
.detailArea{
	border : 1px solid red;
	width : 60%;
	height : 90%;
	margin-left : 350px;
}
.goods-list{
	width : 800px;
	height : 600px;
	/* background : yellow; */
	display : inline-block;
 	margin-left: 1%;
    margin-right:auto;
    margin-top:20px;
    cursor : pointer;
    border : 1px solid blue;
    
}
.goods-img{
	width : 500px;
	height : 500px;
    cursor : pointer;
    border : 1px solid blue;
  /*   position: absolute; */
   display : inline-block;
}
.goods-info{
 	/* position: relative; */
	display: inline-block;
	border : 1px solid blue;
	width : 250px;
	height :400px;
}
.sell-info{
	width : 500px;
	border : 1px solid black;
}

.tablink {
  background-color: #555;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 17px;
  width: 25%;
}

.tablink:hover {
  background-color: #777;
  
}

/* Style the tab content */
.tabcontent {
  color: black;
  display: none;
  padding: 50px;
  text-align: center;
}

/* 상품 후기  */
#afterWrite{
  border-collapse: collapse;
  border-spacing: 0;
  width : 100%;
  border: 1px solid #ddd;
  text-align :center;
  margin-bottom: 100px;
}
#afterWrite th, td {
  text-align: center;
  padding: 16px;
  width : 200px;
  
}
#afterWrite tr:nth-child(even) {
  background-color: #f2f2f2;
  cursor : pointer;
}
#afterWriteBtn{
	float: right;
	margin-bottom: 20px;
	
}
/* 문의하기 table */
#QAtable{
  border-collapse: collapse;
  border-spacing: 0;
  width : 100%;
  border: 1px solid #ddd;
  text-align :center;
  margin-bottom: 100px;
}
#QAtable th, td {
  text-align: center;
  padding: 16px;
  width : 200px;
  
}
#QAtable tr:nth-child(even) {
  background-color: #f2f2f2;
  cursor : pointer;
}
#QABtn{
	float: right;
	margin-bottom: 20px;
}

/* 맨위로 버튼  */

#myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 18px;
  border: none;
  outline: none;
  background-color: red;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
}

#myBtn:hover {
  background-color: #555;
}
</style>

</head>
<body>


	<jsp:include page ="../common/menubar.jsp"/>
	<!-- <div id="container" style="overflow: auto; height: 800px;" >container -->
	<div id="container"><!-- container -->
    
		<div class = "detailArea"  align="center">
			<c:forEach var="a" items="${list}">
				<div class = "goods-img" style="margin-top : 20px;">
					<img src="resources/auploadFiles/${a.filePath}" width ="500px" height ="500px">
				</div>
				<div class = "goods-info" align="left">
					<h3 style = "font-size : 25px; font-weight: bold;">${a.goodsTitle}</h3>
					<span>${a.goodsContent}</span><br>
					<hr>
					<br>
					<span>판매가격 : </span><br><br>
					<span>배송방법 : 택배배송 </span><br><br>
					<span>배송비 : </span><br><br>
					<hr>
					<!-- <p id="goods_count">수량: </p>
							<input type="number" name="count" value="1" size="3"> -->
							
					<div class="number">
						<span id="numberUpDown">1</span>
							<a href="#" id="increaseQuantity">▲</a>
						    <a href="#" id="decreaseQuantity">▼</a>
					</div>
				</div>
					
				<button class="tablink" id="defaultOpen"><a href="#goods-img1" style="color:white">상세설명</a></button>
				<button class="tablink"><a href="#sell-infoDiv" style="color:white">구매정보</a></button>
				<button class="tablink"><a href="#afterWriteDiv" style="color:white">상품후기</a></button>
				<button class="tablink"><a href="#QABtnDiv" style="color:white">상품문의</a></button>
				
					<div id ="goods-img1" class = "goods-img1" style = "margin-bottom: 15px;">
							<img src="resources/auploadFiles/${a.contentFilePath}" width ="800px" height ="4500px">
					</div>
					<div id="sell-infoDiv">
						<h3 align="left"> 구매정보 </h3>
						<div id="sell-info" align="left" style="font-size : 13px";>
							주문/배송 정보<hr>
							- 배송방법 : 산지 직접 배송<br><br>
	
							- 택배사 : CJ 대한통운<br>
							- 배송비용 : 3,000원 (3만원 이상 배송시 무료배송)<br>
							- 배송지역 : 하절기 - 제주도및 도서산간지역 배송불가<br>
							                   하절기 외 - 전국 (제주도 및 도서산간지역 추가운임발생)<br>
							- 출고시간 : 평일 오후 1시 이전 결제시 당일 출고<br>
							* 토요일 배송을 원치 않으실 경우, 배송지시사항에 꼭 기재해주세요.<br>
							<hr>
							 교환/반품 정보<br><br>
							 
							- 냉동식품으로 단순변심 반품 불가<br>
							- 수령자 부재, 잘못된 주소, 전화번호 결번으로 반송이 되는 경우 교환, 반품 불가<br>
							※ 배송지가 회사 주소인 경우, 토요일 수령 가능 여부를 꼭! 확인후 주문해주세요.<br>
							    수령 불가로 인해 제품 반송시 환불 및 재발송 불가합니다.<br>
							- 제품에 문제가 있는 경우, 상품 수령 후 7일 이내 1:1 문의게시판 및 고객센터를 통해 접수해주세요.<br>
							- 증빙 사진을 꼭 첨부해주셔야 접수 가능합니다. (택배박스, 송장, 제품사진 포함 3장 이상) <br>
							<br>
							- 상품 수령 후 보관에 의해 발생된 변질, 파손은 교환, 반품, 환불이 불가능합니다.<br>
							
							 
							<hr>
							환불 정보<br><br>
							
							- 교환/반품은 배송완료후 7일 이내에만 요청이 가능합니다.<br>
							- 결제하신 금액의 환불은 반품할 상품이 입고된 후에 7영업일 이내에 처리됩니다.<br>
							- 쿠폰이나 적립금을 사용하여 결제하신 경우에는, 주문취소 또는 반품 요청시 할인받으신 금액을 제외하고 환불처리됩니다.<br>
							- 무통장입금(가상계좌)으로 결제하셨거나, 계좌로 환불처리되는 경우에는 주문자 본인의 계좌로만 환불처리됩니다.<br>
							- 신용카드, 휴대폰, 실시간계좌이체를 통해 결제하신 경우는 승인을 취소하여 결제 대금이 청구되지 않게 합니다.<br>
							(단, 신용카드나 휴대폰 결제일자에 따라 대금이 청구될 수 있으며, 이 경우 익월 신용카드 대금 청구시 카드사에서 환급처리 됩니다.)<br>
						</div>
					</div>
					<br>
					<div id ="afterWriteDiv">
						<h3 align="left"> 후기작성 </h3>
						<button id ="afterWriteBtn">후기 작성하기</button>
						<table id ="afterWrite">
							<tr>
								<th width ="200px">사진</th>
								<th width ="400px">내용</th>
								<th width ="200px">작성자</th>
								<th width ="200px">평점</th>
							</tr>
							<tr>
								<td>이미지</td>
								<td>후기</td>
								<td>홍길동</td>
								<td>****</td>
							</tr>
							<tr>
								<td>이미지</td>
								<td>후기</td>
								<td>홍길동</td>
								<td>****</td>
							</tr>
							<tr>
								<td>이미지</td>
								<td>후기</td>
								<td>홍길동</td>
								<td>****</td>
							</tr>
						</table>
					</div>
					
					<div id ="QABtnDiv">
						<h3 align="left"> 문의하기 </h3>
						<button id ="QABtn">문의하기</button>
						<table id ="QAtable">
							<tr>
								<th width ="200px">번호</th>
								<th width ="400px">제목</th>
								<th width ="200px">작성일</th>
								<th width ="200px">닉네임</th>
							</tr>
							<tr>
								<td>3</td>
								<td>문의사항1</td>
								<td>2019-12-01</td>
								<td>홍길동</td>
							</tr>
							<tr>
								<td>2</td>
								<td>문의사항2</td>
								<td>2019-12-01</td>
								<td>홍길동</td>
							</tr>
							<tr>
								<td>1</td>
								<td>문의사항3</td>
								<td>2019-12-01</td>
								<td>홍길동</td>
							</tr>
						</table>
					</div>
					
					
			</c:forEach>
		
			</div>
		</div>
			
		
		<!-- 하단 tab -->
		<script>
			function openCity(cityName,elmnt,color) {
			  var i, tabcontent, tablinks;
			  tabcontent = document.getElementsByClassName("tabcontent");
			  for (i = 0; i < tabcontent.length; i++) {
			    tabcontent[i].style.display = "none";
			  }
			  tablinks = document.getElementsByClassName("tablink");
			  for (i = 0; i < tablinks.length; i++) {
			    tablinks[i].style.backgroundColor = "";
			  }
			  document.getElementById(cityName).style.display = "block";
			  elmnt.style.backgroundColor = color;
			
			}
			// Get the element with id="defaultOpen" and click on it
			document.getElementById("defaultOpen").click();
		</script>
		
		<!-- 상품 수량 증가 / 감소 -->
		<script>
			$(function(){
				$('#decreaseQuantity').click(function(e){
					e.preventDefault();
					
					var stat = $('#numberUpDown').text();
					
					var num = parseInt(stat,10);
					num--;
					
					if(num<=0){
						alert('더이상 줄일수 없습니다.');
						num =1;
					}
					
					$('#numberUpDown').text(num);
				});
					
				$('#increaseQuantity').click(function(e){
					e.preventDefault();
					
					var stat = $('#numberUpDown').text();
					
					var num = parseInt(stat,10);
					num++;
	
					if(num>100){
						alert('더이상 늘릴수 없습니다.');
						num=100;
					}
				
				$('#numberUpDown').text(num);
				
				});
			});

		
		</script>
		
		
		<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
		
		<script>
			//Get the button
			var mybutton = document.getElementById("myBtn");
			
			// When the user scrolls down 20px from the top of the document, show the button
			window.onscroll = function() {scrollFunction()};
			
			function scrollFunction() {
			  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
			    mybutton.style.display = "block";
			  } else {
			    mybutton.style.display = "none";
			  }
			}
			
			// When the user clicks on the button, scroll to the top of the document
			function topFunction() {
			  document.body.scrollTop = 0;
			  document.documentElement.scrollTop = 0;
			}
		</script>
			

</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</html>
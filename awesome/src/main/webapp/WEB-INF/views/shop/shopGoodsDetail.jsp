<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="js/Modal.js-master/build/css/modal.css" rel="stylesheet">
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

/* 모달 css */
  *, *:before, *:after {
    box-sizing: border-box; }
    body { font-family: 'Roboto'; }
    .modal_container {text-align: center; }


/* 로그인 창 css */

.loginInput{
		height: 45px;
	    line-height: 45px;
	    background: #fff;
	    color: black;
	    border: 1px solid #ccc;
	    font-size: 14px;
	    padding: 0 12px;
	    vertical-align: middle;
	    width: 325px;
	
	}

.loginBtn {
    margin: 10px 0px 15px;
    border: 1px solid #fe6666;
    background: #fe6666;
    border-radius: 2px;
    color: #fff;
    text-align: center;
    font-size: 14px;
    font-weight: 600;
    width: 326px;
    height: 40px;
}
.findLogin {
    background: #fff;
    border: 1px solid #fe6666;
    text-align: center;
    font-size: 14px;
    border-radius: 2px;
     color: #fe6666; 
    font-weight: 600;
    width: 326px;
    height: 40px;
}



#loginmodal {
 			display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */

}

#loginmodal .login_modal_content {
  background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 30%; /* Could be more or less, depending on screen size */ 
}
.login_modal_content{
		text-align:center; 
		width: 500px;
		height: 500px;
		margin-top: 100px;
		margin-left: auto;
		margin-right: auto;
}
.close{
	display : inline-block;
	float : right;
	color: #aaaaaa;
  	font-size: 28px;
  	font-weight: bold;
}		
.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>

</head>
<body>


	<jsp:include page ="../common/menubar.jsp"/>
	<!-- <div id="container" style="overflow: auto; height: 800px;" >container -->
	<div id="container"><!-- container -->
    
		<div class = "detailArea"  align="center">
			<c:forEach var="a" items="${list}">
				<form id = "goCartForm" action="goCart.do" method="post">
					<div class ="goods-Area">
						<input type="hidden" name="sellNum" value="${a.sellNum}">
						<input type="hidden" name="gId" value="${a.gId }">
						<input type="hidden" name="mId" value="${sessionScope.loginUser.mid }">${sessionScope.loginUser.mid }

						<div class = "goods-img" style="margin-top : 20px;">
							 <img src="resources/auploadFiles/${a.filePath}" width ="500px" height ="500px" name ="${a.filePath}" value="${a.filePath}">
						</div>
						<div class = "goods-info" style="margin-top : 20px;">
							<h3 style = "font-size : 25px; font-weight: bold;">${a.goodsTitle}</h3>
							<input type="hidden" name="goodsTitle" value="${a.goodsTitle}">
							
							<span>${a.goodsContent}</span>
							<input type="hidden" name="goodsContent" value="${a.goodsContent}"><br>
							
							<hr>
							<br>
							<span>판매가격 : ${a.goodsPrice}원</span>
							<input type="hidden" name="goodsPrice" value="${a.goodsPrice}"><br>
							
							<input type="hidden" name="cateCd" value="${a.cateCd}"><br>
							<span>배송방법 : 택배배송 </span><br><br>
							<span>배송비 : 무료</span><br><br>
							<hr>
									
							<div class="number">
								<span id="numberUpDown">1</span>
								<input type="hidden" name="count" value="${a.count}">
									<a href="#" id="increaseQuantity">▲</a>
								    <a href="#" id="decreaseQuantity">▼</a>
							</div>
							<br>
							<c:if test="${empty sessionScope.loginUser }">
								<button type="button" style="width : 100px; height : 40px;" onclick="notLogin();">장바구니</button>
					        </c:if>
					        <c:if test="${!empty sessionScope.loginUser }">
								<button type="button" style="width : 100px; height : 40px;" onclick="goCart();">장바구니</button>
							</c:if>
						</div>
					</div>
				</form>
				
					
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
						
						<table id ="afterWrite">
							<tr>
								<th width ="200px">사진</th>
								<th width ="400px">내용</th>
								<th width ="200px">작성자</th>
								<th width ="200px">평점</th>
							</tr>
							<%-- <c:forEach var="afterlist" items="${afterlist}"> --%>
							<c:forEach var="aflist" items="${aflist}">
								<tr>
									<td><img src="resources/afteruploadFiles/${aflist.filePath}" width ="200px" height ="200px"></td>
									<td>${aflist.rContent}</td>
									<td>${loginUser.userId }</td>
									<td></td>
									<td></td>
									<!-- <td></td>
									<td></td> -->
								</tr>
						</c:forEach>
						</table>
							<c:url var="afterWrite" value="afterWrite.do">
								<c:param name="sellNum" value="${a.sellNum }"/>
							</c:url>
							<a href="${afterWrite}"><button>후기작성</button></a>
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
			
		
	
	
	
	<div id="loginmodal">
	 
	    <div class="login_modal_content">
			<b style="font-size:36px">LOGIN</b>	
	    	<span class="close">&times;</span>
			<br><br>
			<p style="font-size: 13px; color:#888888; font-weight: bold;line-height:1.5">
				AWESOME의 다양한 서비스를 이용하시려면 로그인을 해주세요.<br>
				회원가입을 하시면 다양한 서비스를 받으실 수 있습니다<br><br>
			</p>
	        <form id= "loginForm" action="login.do" method="post">
				<input type="hidden" name="mId" value="mId">
				<input class= "loginInput" name="userId" style="margin-bottom:10px;"placeholder="아이디 입력	"> <br>
				<input class= "loginInput" type="password" name="userPwd" style="margin-bottom:5px;" placeholder="비밀번호 입력" type="password"><br>
				<button class= "loginBtn">로그인</button><br>
				<button class="findLogin">아이디 / 비밀번호 찾기</button><br>
			</form>
	       <br><br>
			<p style="color:#666666; font-size:12px; margin:0px; line-height:1.5">
			문제가 있거나 문의 사항이 있으시면 아래의 주소로 문의하시기 바랍니다.<br>
			고객지원: <a href="">hokwan92@naver.com</a> 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</p>
	    </div>
	   
	    <div class="login_modal_layer"></div>
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
	
					if(num>10){
						alert('더이상 늘릴수 없습니다.');
						num=10;
					}
					
				$('#numberUpDown').text(num);
			});
		});
			
		</script>
		
		<script>
			function notLogin(){
				 Modal.confirm({
					  title: '로그인여부',
					  message: '로그인 하시겠습니까?',
					  onConfirm: function() {
						  $("#loginmodal").attr("style", "display:block");
			  		},
					  onCancel: function() {
			  		},
				});
		       
		    };
		   
		     $(".close").click(function(){
		        $("#loginmodal").attr("style", "display:none");
		    });      
		</script>
		
		<script src="js/Modal.js-master/modal.js"></script>
		<script>
			 function goCart(){
			      Modal.confirm({
				  title: '장바구니',
				  message: '장바구니에 추가하시겠습니까?',
				  onConfirm: function() {
					$("#goCartForm").submit();
					 /* alert('장바구니로 이동.'); */
		  		},
				  onCancel: function() {
				    /* alert('취소되었습니다.'); */
		  		},
			});
		}
		</script>
		
		
		<!-- 모달창 script -->
		<script>
			  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
			
			  ga('create', 'UA-46156385-1', 'cssscript.com');
			  ga('send', 'pageview');
		
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
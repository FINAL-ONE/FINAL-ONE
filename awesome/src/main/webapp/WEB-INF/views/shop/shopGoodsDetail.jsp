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
<!-- 모달 -->
<link href="js/Modal.js-master/build/css/modal.css" rel="stylesheet">

<!-- Star Rating -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<link href="https://www.cssscript.com/wp-includes/css/sticky.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Dosis|Fredoka+One" rel="stylesheet">
<link href="js/tabsy-css-master/dist/tabsy.css" rel="stylesheet" type="text/css">

<style>
body{
   background : white;
}
.detailArea{
	/* border : 1px solid red; */
	width : 800px;
	height : 90%;
	margin-left : 450px;
}
.goods-Area{
   width : 800px;
   height : 530px;
   /* background : yellow; */
   display : inline-block;
    /* margin-left: 100px; */
    margin-right:auto;
    margin-top:20px;
    cursor : pointer;
/*     border : 1px solid blue; */
    position: relative;
}
.goods-img{
    cursor : pointer;
     /* border : 1px solid blue; */
   position: relative;
    display : inline-block;
    margin-top : 20px;
    
}
.goods-info{
    position: absolute;
   display: inline-block;
/*    border : 1px solid blue; */
   width : 250px;
   height : 500px;
   margin-top : 20px;
}
.sell-info{
   width : 500px;
   border : 1px solid black;
}

.number{
   position: relative;
}
.UpDown{
   position: absolute;
   display : inline-block;
}

.Quantity{
/* 	display : inline-block; */
	margin-left : 100px;
	/* background : red; */
}

#increaseQuantity{
   text-decoration: none;
}
#decreaseQuantity{
   text-decoration: none;
}


/* 상품 후기  */
#afterWrite{
  border-collapse: collapse;
  border-spacing: 0;
  width : 100%;
  border: 1px solid #ddd;
  text-align :center;
  margin-bottom: 20px;
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
#afterWrite tr {
  cursor : pointer;
}
#afterWriteBtn{
   float: right;
   margin-bottom: 20px;
   
}

/* 맨위로 버튼  */

#upBtn {
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

#upBtn:hover {
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

/* 별점  */
.fa-star{
	color : dark-gray;
}
.checked {
  	color: orange;
}


/* 장바구니 버튼 클릭 팝업 css */
.popup {
  position: relative;
  display: inline-block;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  background : #fa4a4a;
  color : white;
  font-size : 18px;
  
}

/* The actual popup */
.popup .popuptext {
  visibility: hidden;
  width: 250px;
  background-color: #555;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 8px 0;
  position: absolute;
  z-index: 1;
  bottom: 125%;
  left: 50%;
  margin-left: -120px;
}

/* Popup arrow */
.popup .popuptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

/* Toggle this class - hide and show the popup */
.popup .show {
  visibility: visible;
  -webkit-animation: fadeIn 1s;
  animation: fadeIn 1s;
}
.hide{
  -webkit-animation: fadeOut 1s;
  animation: fadeOut 1s;
}
  
.goodshare-color{
	width : 200px;
	height : 100px;
}  


.pagingArea button {
	  border: 1px solid #dcdcdc;
	  outline: none;
	  padding: 6px 12px;
	  cursor: pointer;
	  background: white;
	  font-size: 13px;
      color: #828282;
}

.cartBtn1, #cartBtn2 {
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

.cartBtn1:hover, #cartBtn2:hover{
	background: #fff;
	color: #fe6666;
}
    
    

/* 버튼 css  */
.myBtn{
	width :80px;
	height : 30px;
	font-size : 13px;
	border-radius: 4px;
	background-color: #4CAF50;
	border: none;
	color: #FFFFFF;
	text-align: center;
	padding: 6px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 3px;
}

.myBtn span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.myBtn span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.myBtn:hover span {
  padding-right: 25px;
}

.myBtn:hover span:after {
  opacity: 1;
  right: 0;
}


.fa-star{
	color : dark-gray;
}
.checked {
  	color: orange;
}


/* 분류 tab */
main {
     display: block; margin: 150px auto; padding: 0 20px; text-align: center;
}

h1 {
    font-size: 70px; font-family: 'Fredoka One', cursive; text-align: center; color: #5a5243;
    margin-bottom:30px;
}

h1 sup {
   font-size: 14px; margin-left: -20px; display: inline-block; line-height: 1;
}

h2 {
    font-size: 22px; text-align: center; margin: -7px 0 80px 0; padding: 5px 5px 6px 5px; display: inline-block; line-height: 30px;
    border-bottom: 1px solid #5a5243; border-top: 1px solid #5a5243;
    }

.tabButton {
     font-size: 15px; font-weight: bold; padding: 15px 5px;   width : 260px;
}

.tab {
    padding: 20px; text-align: left;
}
h3 {
    font-size: 20px; font-weight: bold;
}
p {
    font-size: 15px; margin-top: 10px; 
}
@media screen and (min-width: 768px) {
    main {
        width: 700px;
    }
        
        
        
</style>

</head>
<body>


   <jsp:include page ="../common/menubar.jsp"/>
   <!-- <div id="container" style="overflow: auto; height: 800px;" >container -->
   <div id="container"><!-- container -->
    
      <div class = "detailArea"  align="center">
         <c:forEach var="a" items="${list}">
            <form id = "goCartForm" action="goCart.do" method="post" target="iframe"> 
               <div class ="goods-Area">
                  <input type="hidden" name="sellNum" value="${a.sellNum}">
                  <input id="gId" type="hidden" name="gId" value="${a.gId }">
                  <input id="mId" type="hidden" name="mId" value="${sessionScope.loginUser.mid }">
                  <div class = "goods-imginfoArea" style = "margin-right : 255px;">
                     <div class = "goods-img" >
                         <img src="resources/auploadFiles/${a.filePath}" width ="500px" height ="500px" name ="${a.filePath}" value="${a.filePath}">
                     </div>
                     <div class = "goods-info" style = "text-align : left; margin-left : 20px";>
                        <h3 style = "font-size : 25px; font-weight: bold;">${a.goodsTitle}</h3>
                        <input type="hidden" name="goodsTitle" value="${a.goodsTitle}">
                        
                        <span>${a.goodsContent}</span>
                        <input type="hidden" name="goodsContent" value="${a.goodsContent}">
                        
                        <hr>
   
                        <span>판매가격 : ${a.goodsPrice}원</span>
                        <input type="hidden" name="goodsPrice" value="${a.goodsPrice}"><br>
                        
                        <input type="hidden" name="cateCd" value="${a.cateCd}"><br>
                        <span>배송방법 : 택배배송 </span><br><br>
                        <span>배송비 : 무료</span><br><br>
                        <input type="hidden" name ="star" value = "1" style="size : 10px">
							후기 평균 <span class="fa fa-star checked"></span>
							<c:forEach var="sAvgList" items="${sAvgList}">
							<%-- 		<span>: ${sAvgList}</span> --%>
							
								 <c:if test = "${sAvg == null}">
									<span>: 없음 </span>
								</c:if>
							<%-- 	<c:if test = "${sAvgList lt 0}">
										<span>후기 없음</span>
								</c:if> --%> 
							</c:forEach>
									
                        <hr>
                              
                        <div class="number" style= "width : 200px; height : 50px;">
                           <div class="UpDown" style="padding-top: 13px;">
                             	 수량 선택 : 
                               <a href="#" id="decreaseQuantity"><span style="font-weight: bold; font-size:40px;" >-</span></a>
                              <span id="numberUpDown">1</span>
                              <a href="#" id="increaseQuantity"><span style="font-weight: bold; font-size:30px;">+</span></a>
                              <input id="numberCount" type="hidden" name="count" value="1">
                              <!-- <div class="Quantity" style="width : 50px;"> -->
                              <!-- </div> -->
                           </div>
                        </div>
                        <br>
                        <c:if test="${empty sessionScope.loginUser }">
                           <button class = "cartBtn1" type="button" style="width : 200px; height : 40px;" onclick="notLogin();">장바구니</button>
                          </c:if>
                          <c:if test="${!empty sessionScope.loginUser }">
                           <button id="cartBtn2" class="popup" type="button" style="width : 200px; height : 40px;" onclick="goCart();">장바구니 <span class="popuptext" id="myPopup">장바구니에 추가되었습니다.</span></button>
                        </c:if>
                           <!-- <input type="button" value="찜하기" style="width : 110px; height : 40px;"/> -->
                           
                           <!-- 소셜에 공유 -->
                           <div class="goodshare-color" style = "margin-top : 20px;">
                             <span>공유하기</span>
                             <br>
                              <a href="#" class="goodshare" data-type="vk"><img class="socialImg" src="resources/images/vk.png" style="width : 30px; height : 30px;"></a> 
                              <a href="#" class="goodshare" data-type="fb"><img class="socialImg" src="resources/images/f.png" style="width : 30px; height : 30px;"></a> 
                              <a href="#" class="goodshare" data-type="tw"><img class="socialImg" src="resources/images/tw.png" style="width : 30px; height : 30px;"></a> 
                              <a href="#" class="goodshare" data-type="gp"><img class="socialImg" src="resources/images/g.png" style="width : 30px; height : 30px;"></a> 
                              <a href="#" class="goodshare" data-type="li"><img class="socialImg" src="resources/images/in.png" style="width : 30px; height : 30px;"></a> 
                            </div>
	                     </div>
	                  </div>
	               </div>
	            </form>
	         </c:forEach>
         
         <!-- 장바구니 클릭시 form 경로로 안넘어가고 화면유지  -->
         <iframe src="#" name="iframe" style="width:1px; height:1px; border:0; visibility:hidden;"></iframe>
      
      
      <div class="tabsy" style="argin-left : 20px;">
            <input type="radio" id="tab1" name="tab" checked>
            <label class="tabButton" for="tab1" style="margin-left : 5px;">상품 상세</label>
            
            <div class="tab">
                <div class="content">
                   <c:forEach var="a" items="${list}">
	               <div id ="goods-img1" class = "goods-img1" style = "margin-bottom: 15px;">
	                     <img src="resources/auploadFiles/${a.contentFilePath}" width ="800px" height ="4500px">
	               </div>
            </c:forEach>
                </div>
            </div>

            <input type="radio" id="tab2" name="tab">
            <label class="tabButton" for="tab2">상품 정보</label>
            
            <div class="tab">
                <div class="content">
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

            <input type="radio" id="tab3" name="tab">
            <label class="tabButton" for="tab3">상품 후기</label>
            
            <div class="tab">
                <div class="content">
					 <h3 align="left"> 후기리스트 </h3>
                  
                  <table id ="afterWrite">
                     <tr>
                        <th width ="200px">사진</th>
                        <th width ="400px">내용</th>
                        <th width ="200px">작성자</th>
                        <th width ="200px">평점</th>
                     </tr>
                     <c:forEach var="r" items="${replylist}">
                        <tr>
                           
                           <td><img src="resources/afteruploadFiles/${r.filePath}" width ="50px" height ="50px"></td>
                           <td>${r.rContent}</td>
                           <td>${r.userId }</td>
                           <td>
                               <c:if test="${r.sellStart eq '1'}">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                              </c:if>
                                  <c:if test="${r.sellStart eq '2'}">
                                       <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                  </c:if>
                            
                                  <c:if test="${r.sellStart eq '3'}">
                                        <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                  </c:if>
                                  <c:if test="${r.sellStart eq '4'}">
                                        <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star"></span>
                                  </c:if>
                                  <c:if test="${r.sellStart eq '5'}">
                                        <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                  </c:if>
                           </td>
                           <!-- <td></td>
                           <td></td> -->
                        </tr>
                     </c:forEach>
				</table>
					
                  <div class="pagingArea" align="center">	
						 <!-- 맨 처음으로(<<) -->
       						<button onclick="location.href='adetail.do'"> << </button>
						<!-- [이전] -->
						<c:if test="${pi.currentPage <= 1 }">
							<button disabled> < </button>
						</c:if>
						
						<c:if test="${pi.currentPage > 1 }">
							<button onclick="location.href='adetail.do?page=${pi.currentPage -1}'"> < </button>	
						</c:if>
						
						 <!-- 10개의 페이지 목록 -->
				         <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
				           <c:if test="${pi.currentPage == p }">
				               <button style="background:#ec434a;color:white" disabled >${p}</button>
				           </c:if>
				            <c:if test="${pi.currentPage != p }">
				               <button onclick="location.href='adetail.do?page=${p}'">${p}</button>
				            </c:if>
				       </c:forEach>
       
						<!-- [다음]  -->
						<c:if test="${pi.currentPage >= pi.maxPage }">
				            <button disabled> > </button>
				          </c:if>
				          <c:if test="${pi.currentPage < pi.maxPage }">
				            <button onclick="location.href='adetail.do?page=${pi.currentPage + 1}'"> > </button>
				          </c:if>
						          
		                   <!-- 맨 끝으로(>>) -->
         					<button onclick="location.href='adetail.do?page=${pi.maxPage}'"> >> </button>
         					<c:if test="${empty sessionScope.loginUser}">
									<button style="border:none; background: #585858; height: 30px; color:white;padding-bottom:3px; position:relative; float:right;" onclick="notLogin()">후기작성</button>
					        </c:if>
         					 <c:if test="${sessionScope.loginUser.userId eq 'admin'}">
						         	<button style="border:none; background: #585858; height: 30px; color:white;padding-bottom:3px; position:relative; float:right;" onclick="alertAdmin()">후기작성</button>
							</c:if>
							 <c:if test="${!empty sessionScope.loginUser and sessionScope.loginUser.userId ne 'admin'}">
         						<c:forEach var="a" items="${list}">
         						<input id="sellNum" type="hidden" name="sellNum" value="${a.sellNum}">
                  				<input id="gId" type="hidden" name="gId" value="${a.gId }">
                  				<input id="mId" type="hidden" name="mId" value="${sessionScope.loginUser.mid }">
<%-- 									<button style="border:none; background: #585858; height: 30px; color:white;padding-bottom:3px; position:relative; float:right;" onclick = "location.href='afterWrite.do?sellNum=${a.sellNum}&mId=${sessionScope.loginUser.mid }'">후기작성</button> --%>
									<button style="border:none; background: #585858; height: 30px; color:white;padding-bottom:3px; position:relative; float:right;" onclick = "checkWrite();">후기작성</button>
								</c:forEach>
							</c:if>
						</div>	<!-- 페이징 끝  -->

		                </div>
		            </div>
		        </div>
             </div>
         </div>
            
  	<button onclick="topFunction()" id="upBtn" title="Go to top">Top</button>
      

   	<!-- 비회원 장바구니 클릭시 로그인 화면   -->
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
	            <input class= "loginInput" name="userId" style="margin-bottom:10px;"placeholder="아이디 입력   "> <br>
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
   
         <!-- 상품 수량 증가 / 감소 -->
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
               $('#numberCount').val(num);
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
               $('#numberCount').val(num);
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
      
      <script>
        function alertAdmin(){
             alert('관리자는 작성할 수 없습니다.'); 
           }
      </script>
           <script src="js/Modal.js-master/modal.js"></script>

      <script>
          function goCart(){
             var mId = $("#mId").val();
             var gId = $("#gId").val();
             
            $.ajax({
               url:"selectCartCheck.do",
               data:{mId:mId, gId:gId},
               success:function(data){
                  
                  if(data.isUsable == true){
                  // 없다.
                     $("#goCartForm").submit();
                  
                     var popup = document.getElementById("myPopup");
                      popup.classList.toggle("show");
                       
                     Modal.confirm({
                       title: '장바구니',
                       message: '장바구니로 이동하시겠습니까?',
                       onConfirm: function() {
                          location.href="cartList.do?";
                         //alert('장바구니로 이동.');
                          },
                          onCancel: function() {
                            // alert('취소되었습니다.');
                          },
                     });
               
                  }else{
                  // 있다.
                     //var popup = document.getElementById("myPopup");
                      //popup.classList.toggle("show");
                      
                      
                     Modal.confirm({
                          title: '장바구니',
                          message: '해당 상품은 이미 장바구니에 있습니다. 장바구니로 이동하시겠습니까?',
                          onConfirm: function() {
                             location.href="cartList.do?";
                            //alert('장바구니로 이동.');
                             },
                             onCancel: function() {
                               // alert('취소되었습니다.');
                             },
                        });
                  
                  
                     
                  }
                  

               },
               error:function(request, status, errorData){
                  alert("error code : " + request.status + "\n"
                                   + "message : " + request.responseText
                                   + "error : " + errorData);
               }
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
      
      <button onclick="topFunction()" id="upBtn" title="Go to top">Top</button>
      
      <script>
         //Get the button
         var mybutton = document.getElementById("upBtn");
         
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
      
      
      <!-- 소셜에 공유 -->
      <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
      <script src="js/jQuery-Plugin-To-Create-Custom-Social-Share-Buttons-goodshare-js/jQuery-Plugin-To-Create-Custom-Social-Share-Buttons-goodshare-js/goodshare.js"></script>
      <script type="text/javascript">
      
           var _gaq = _gaq || [];
           _gaq.push(['_setAccount', 'UA-36251023-1']);
           _gaq.push(['_setDomainName', 'jqueryscript.net']);
           _gaq.push(['_trackPageview']);
         
           (function() {
             var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
             ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
             var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
           })();
         
      </script>


	
	
	
	
	
	
	
	
	
	
	
	
		 	 <!-- 상품에 작성한 후기 있는지 체크  후 없으면 작성하기로 이동-->
	     <script>
	      function checkWrite(){
	    	  var mId = $("#mId").val();
	          var gId = $("#gId").val();
	          var sellNum = $("#sellNum").val();
          
	          $.ajax({
	              url:"selectafterCheck.do",
	              data:{mId:mId, gId:gId},
	              success:function(data){
	                 
	                 if(data.isUsable == true){
	                 // 없다.
	                   Modal.confirm({
	                      title: '상품 후기',
	                      message: '상품 후기 작성으로 이동하시겠습니까?',
	                      onConfirm: function() {
	                         location.href="afterWrite.do?sellNum=" + sellNum;
	                        //alert('장바구니로 이동.');
	                         },
	                         onCancel: function() {
	                           // alert('취소되었습니다.');
	                         },
	                    });
	              
	                 }else{
	                 // 있다.
	                    //var popup = document.getElementById("myPopup");
	                     //popup.classList.toggle("show");
	                    Modal.confirm({
	                         title: '상품 후기',
	                         message: '작성하신 후기가 있습니다.',
	                         onConfirm: function() {
	                            //location.href="cartList.do?";
	                           //alert('장바구니로 이동.');
	                            },
	                            onCancel: function() {
	                              // alert('취소되었습니다.');
	                            },
	                       });
	                 }
	              },
	              error:function(request, status, errorData){
	                 alert("error code : " + request.status + "\n"
	                                  + "message : " + request.responseText
	                                  + "error : " + errorData);
	              }
	           });
	      }
	      </script>
       
      
		
		

</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</html>
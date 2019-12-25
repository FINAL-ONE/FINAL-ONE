<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">
<meta charset="UTF-8">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&display=swap&subset=korean" rel="stylesheet">
  
  
  
<!-- <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"> -->
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
  
  
  
<title>Insert title here</title>

<style>







@import url(http://weloveiconfonts.com/api/?family=entypo);
@import url(http://weloveiconfonts.com/api/?family=openwebicons);
@import url(http://weloveiconfonts.com/api/?family=fontawesome);
@import url(http://weloveiconfonts.com/api/?family=zocial);
@import url(http://weloveiconfonts.com/api/?family=fontelico);


/* html, body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
  float: left;
} */

/* entypo */
[class*="entypo-"]:before {
  font-family: "entypo", sans-serif;
}

/* openwebicons */
[class*="openwebicons-"]:before {
  font-family: "openwebicons", sans-serif;
}

/* fontawesome */
[class*="fontawesome-"]:before {
  font-family: "fontawesome", sans-serif;
}

/* zocial */
[class*="zocial-"]:before {
  font-family: "zocial", sans-serif;
}

/* fontelico */
[class*="fontelico-"]:before {
  font-family: "fontelico", sans-serif;
}

/* Fix OPW
----------------------------------------------------------*/
/* openwebicons */
[class*="openwebicons-"]:before {
  font-family: 'OpenWeb Icons', sans-serif;
}

/* body {
  color: #17a689;
  background: #f3f3f3;
  padding-top: 100px;
} */

.container {
  /* max-width: 830px; */
}

.header .text-muted {
  padding: .4em .8em;
}
.header .text-muted span:hover {
  -webkit-filter: blur(1px);
  filter: blur(1px);
  -webkit-filter: url(#blurLogo);
  filter: url(#blurLogo);
  filter: progid:DXImageTransform.Microsoft.Blur(PixelRadius='1');
}
.header .text-muted span span.bl {
  font-weight: 400;
  -webkit-animation: blur 5s ease infinite;
  animation: blur 5s ease infinite;
}
.header .text-muted .starter {
  float: right;
  line-height: 2.5;
  color: #17a689;
}

/* .nav li:hover a {
  background: transparent;
}
.nav li:hover a span {
  background: #1abc9c;
  color: #f3f3f3;
}
.nav li a {
  color: #17a689;
  line-height: 3;
}
.nav li a.active span {
  background: #1abc9c;
  color: #f3f3f3;
}
.nav li a span {
  -webkit-box-shadow: inset 0 0 0 0.1em #1abc9c;
  box-shadow: inset 0 0 0 0.1em #1abc9c;
  font-size: 1.6em;
  padding: .2em .4em;
  height: 30px !important;
  border-radius: 3px;
} */

/* Jumbotron
----------------------------------------------*/
/* .jumbotron {
  color: #fff;
  background: #1abc9c;
}
 */
/* Sidebar
-----------------------------------------------------------------------------------------*/
/* .menusign {
  display: block;
  width: 10px;
  line-height: .3;
  font-size: 2em;
  margin: .5em;
}
.menusign br {
  height: 0;
} */

.sidebar {
  position: fixed;
  z-index: 9999999;
  left: 0;
  top: 0;
  height: 100%;
  width: 260px;
  background: #f3f3f3;
  -webkit-transition: left 0.3s ease, -webkit-box-shadow 0.3s ease 0.2s;
  transition: left 0.3s ease, box-shadow 0.3s ease 0.2s;
  -webkit-box-shadow: 0.5em 0 0 0 #1abc9c, 0.6em 0 0 0 #17a689;
  box-shadow: 0.5em 0 0 0 #1abc9c, 0.6em 0 0 0 #17a689;
}
.sidebar #close {
  float: right;
  margin: -5.5rem 1rem;
  font-size: 1.4em;
  color: #fa598d;
  text-align: right;
}
.sidebar.closed {
  left: -260px;
  -webkit-box-shadow: 0 0 0 #1abc9c;
  box-shadow: 0 0 0 #1abc9c;
}
.sidebar h2 {
  padding: .5em;
  color: #1abc9c;
}
.sidebar ul {
  padding: 0;
  margin: 0;
}
.sidebar ul li {
  width: 85%;
  margin: 5px 10px;
  float: left;
  display: inline-block;
  margin-bottom: 0;
  font-weight: 400;
  text-align: center;
  vertical-align: middle;
  cursor: pointer;
  background-image: none;
  border: 1px solid transparent;
  white-space: nowrap;
  padding: 3px 6px;
  font-size: 14px;
  line-height: 1.42857143;
  border-radius: 4px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 2px solid #1abc9c;
  background: #1abc9c;
  color: #f3f3f3;
}
.sidebar ul li a {
  color: white;
}
.sidebar ul li:hover {
  background: #fa4a4a;
  border-color: #fa4a4a;
  
  /* background: #17a689;
  border-color: #17a689; */
}

/* .footer a {
  color: #17a689;
} */

/* Blurred class

This class is added to the container 
(#blurMe) when the sidebar is open.
-----------------------------------*/
.blurred {
  -webkit-transition: all 0.6s ease;
  transition: all 0.6s ease;
  -webkit-filter: blur(10px);
  filter: blur(10px);
  -webkit-filter: url(#blur);
  filter: url(#blur);
  filter: progid:DXImageTransform.Microsoft.Blur(PixelRadius='10');
}

/* Logo effect
-----------------------------*/
@-webkit-keyframes blur {
  66% {
    -webkit-filter: blur(1px);
    filter: blur(1px);
    -webkit-filter: url(#blurLogo);
    filter: url(#blurLogo);
    filter: progid:DXImageTransform.Microsoft.Blur(PixelRadius='1');
  }
}
@keyframes blur {
  66% {
    -webkit-filter: blur(1px);
    filter: blur(1px);
    -webkit-filter: url(#blurLogo);
    filter: url(#blurLogo);
    filter: progid:DXImageTransform.Microsoft.Blur(PixelRadius='1');
  }
}

/* .. 관리자 사이드메뉴 숨킴! */
#trigger{
	opacity: 0.01;
}



#scroll{
	/* background: #fa4a4a;
	border-color: #fa4a4a; */
}




































/*  0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000  */









   .menubar1{
      /*border:1px solid black;   */
      height: 90px;
      margin-left:auto;
      margin-right:auto;
      align: center;

   }

   .menubar2{
      width: 100%;
      height: 45px;
      align: center;
      background:#fa4a4a;
      margin-left:auto;
      margin-right:auto;
      align: center;
      box-shadow: 0px 4px 4px lightgray;
      position: relative;
   }
   
   .nav{
      width:880px;
      margin-left:auto;
      margin-right:auto;
      height: 100%;
   }
   
    .conmmunityNav{
      width:880px;
      margin-left:auto;
      margin-right:auto;
      height: 100%;
   }
   
    .myPageNav{
      width:880px;
      margin-left:auto;
      margin-right:auto;
      height: 100%;
   }
   
   
   .menu{
      vertical-align: bottom;
      display:inline-block;
      /* border:1px solid black;  */
      text-align:center;
      width:100px;
      height:50px;
      margin-left:20px;
/*       margin-right:20px; */
      font-size: 16px; 
      font-weight: bold;
   }
   
   .logoImg{
      display:inline-block;
      height:100%;
      cursor : pointer;
/*       top */
      /* border: 1px solid black; */
   }   

   .menu:hover{
      color: #fa4a4a;
      cursor: pointer;
   }
   
   

   body{ 
      margin: 0px;
      overflow-x:hidden;   /*스크롤 가로  잠금*/   
      
   }
   
   .menu2{
      color: white;
      line-height: 2.7;
      position: relative;
   }
   
   .menu2{  
      cursor: pointer;
   }
   
   .loginMenu{
      font-size: 11px; 
      line-height:2.2; 
      position: absolute; 
      right: 0px;
      cursor : pointer;
   }
   
   .loginMenu:hover{
       cursor: pointer;
   }


 .conmmunityNav:after {
   content: '';
    position: relative;
    border-top: 5px solid transparent;
    border-right: 6px solid transparent;
    border-left: 6px solid transparent;
    border-bottom: 8px solid #fa4a4a;
    top: -40px;
    left: -55px;
}

 .myPageNav:after {
   content: '';
    position: relative;
    border-top: 5px solid transparent;
    border-right: 6px solid transparent;
    border-left: 6px solid transparent;
    border-bottom: 8px solid #fa4a4a;
    top: -40px;
    left: 505px;   /* 상위 메뉴바 마우스오버시 화살표 위치   */
}


 /* .menubar1:before {
    content: '';
    position: absolute;
    border-top: 5px solid transparent;
    border-right: 5px solid transparent;
    border-left: 13px solid blue;
    border-bottom: 5px solid transparent;
    top: 18px;
    left: 271px;
}   */

#loginuserInfo{
     font-size: 11px; 
      line-height:2.2; 
      position: absolute; 
      right: 0px;
      cursor : pointer;
}

</style>

</head>
<body>


<c:if test = "${!empty sessionScope.loginUser}">
	<input id="loginUserMid"  type="hidden" value = "${loginUser.mid}"/> 
</c:if>
<c:if test = "${empty sessionScope.loginUser}">
	<input id="loginUserMid"  type="hidden" value = "0"/> 
</c:if>

<c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="application"/>
<div style= "height: 25px; width: 100%; background: #EEEEEE; margin-bottom:10px;">
   <c:if test="${empty sessionScope.loginUser }">
       <span class= "loginMenu" style="right: 65px;" onclick= "location.href='loginView.do'">로그인 &nbsp;|</span>
       <span class= "loginMenu" style="right: 15px;" onclick= "location.href='enrollView.do'">&nbsp;회원가입</span>
   <!-- <span style="font-size: 11px; line-height:2; position: fixed; right: 0px;"> <b>관리자</b>님 환영합니다. &nbsp;&nbsp;&nbsp;</span> -->
   </c:if>

   <c:if test="${!empty sessionScope.loginUser }">
         <!-- 로그인했을떄 -->
         <!-- 여기 이 부분은 DB로부터 객체 받아오는거 확인하고 나서 작성하자!!  -->
         <span id ="loginuserInfo">
            <c:out value = "${loginUser.userNickname }님 환영 합니다."/>
            <!-- 정보 수정용 페이지로 갈 때 쓸 변수와 로그아웃용 경로 변수 지정 -->
            <c:url var ="myinfo" value="myinfo.do"/>
            <c:url var ="logout" value="logout.do"/>
                  <!-- // 쿼리 스트링 방식으로 보내면 GET방식이라 POST- > GET으로  -->
            <span onclick ="location.href='${myinfo }'">정보수정  &nbsp;|</span>
            <span onclick ="location.href='${logout }'">&nbsp;로그아웃</span>
         </span>
         <!-- 이 부분 작성 후 다시 MemberController가서 로그아웃 작성하자 !! -->
   </c:if>
</div>



<div class= menubar1>
   <div class= nav> 	
      <div class= "menu normalMenu" onclick ="location.href='info.do'">소개</div>
      <div class= "menu normalMenu" onclick= "goNboardList();">공지사항</div> 
      <div class= "menu communityMenu">커뮤니티</div>
      <div class =logoImg><img src="${contextPath}/resources/images/logo.png" style="height: 89px; vertical-align: middle" onclick= "location.href='home.do'"></div>
       <div class= "menu normalMenu" onclick="location.href='bmicalc.do'">BMI 계산기</div>
      <c:url var="shopGoodsListView" value="shopGoodsListView.do">
      <c:param name="mid" value="${sessionScope.loginUser.mid }"/>
      </c:url>
      <div class= "menu normalMenu"><a href="${shopGoodsListView}" style="text-decoration: none; color : black;">SHOP</a></div>
      <%-- <a href="${shopGoodsListView}"><div>SHOP</div></a> --%>
                     
        <c:if test="${sessionScope.loginUser.manager eq 'N'}">
           <div class= "menu myPageMenu">마이페이지</div> 
      </c:if>
     
      <c:if test="${sessionScope.loginUser.manager eq 'Y' }">
         <div class= "menu adminMenu" onclick="location.href='adminSalesVolume.do'">관리자페이지</div> 
      </c:if>
      
      <c:if test="${sessionScope.loginUser == null}">
      	<div class= "menu loginGoMenu" onclick= "location.href='loginView.do'">LOGIN</div>
      </c:if>
      
      
   </div>
</div> 

<div class="menubar2 normalMenubar">
	<c:if test="${sessionScope.loginUser.manager eq 'Y' }">
         <div id="trigger" class="entypo-menu" style="height: 45px;"></div>
	</c:if>
</div>  
 
<div class="menubar2 communityMenubar communityMenu" style="display:none;">
   <div class= "conmmunityNav">
   	  <span class= menu2 style="left: 215px;" onclick= "goBoardList(10);">전체</span>
      <span class= menu2 style="left: 245px;" onclick= "goBoardList(2);">자유게시판</span>
      <span class= menu2 style="left: 275px;" onclick= "goBoardList(3);">팁&노하우</span>
      <span class= menu2 style="left: 305px;" onclick= "goBoardList(4);">비포&애프터</span>
      <span class= menu2 style="left: 335px;" onclick= "goBoardList(5);">자극 사진</span>
   </div>
</div>   
   
 <c:if test="${sessionScope.loginUser.manager ne 'Y'}">   

<div class="menubar2 myPageMenubar myPageMenu" style="display:none;">
   <div class= "myPageNav">


      <span class= menu2 style="left: 633px;" onclick= "myPage()">내정보보기</span>
	  <span class= menu2 style="left: 663px;" onclick= "cart()">장바구니</span>
      <span class= menu2 style="left: 693px;" onclick= "orderList()" >주문조회</span>
	<span class= "menu2" style="left: 723px;"><a onclick= "after()" style="text-decoration: none; color : white;">내가 쓴 후기</a></span>

      <!-- <span class= menu2 style="left: 702px;" onclick= "location.href='afterdelete.do'">내가 쓴 후기</span> -->
	    <c:url var="myafterUpdate" value="afterdelete.do">
			<c:param name="mid" value="${sessionScope.loginUser.mid }"/>
			</c:url>
	      
   </div>
</div>   
</c:if>
<c:if test="${sessionScope.loginUser.manager eq 'Y' }">
<div class="menubar2 myPageMenubar myPageMenu" style="display:none;">
   <div class= "myPageNav">
	  <!-- <span class= menu2 style="left: 612px;" onclick= "location.href='categoryView.do'">카테고리 관리</span> -->
      <span class= menu2 style="left: 647px;" onclick= "location.href='goodsWriterView.do'">상품판매</span>
      <span class= menu2 style="left: 682px;" onclick= "location.href='sell_goodsList.do'">판매상품조회</span>
      <span class= menu2 style="left: 717px;" onclick= "location.href='goodsList.do'">상품관리</span>
      <span class= menu2 style="left: 752px;" onclick= "location.href='memberLookup.do'">회원조회</span>
      <span class= menu2 style="left: 745px;" onclick= "location.href='sellafterlistViewAdmin.do'">상품후기 조회</span>
   </div>	
</div>   
</c:if>


<!-- <div style="position:relative;float:left;width:80px;">  
        <div id="scroll" style="position:absolute;top:0px;left:0px;">  
           <div>따라갑시다.</div>  
        </div>  
</div>  -->

	<c:if test="${sessionScope.loginUser.manager eq 'Y' }">
		<div class="sidebar closed">
			<div align="center" id="scroll">
			<!--   <div class="sidebar closed" style="position:relative;">
			  	<div align="center" id="scroll" style="position:absolute; top:0px; left:0px;"> -->
				<h2>관리자 메뉴</h2><!--  <a href="#" id="close"><span class="entypo-cancel"></span></a> -->
				<ul> 
			        <li onclick= "location.href='AdminorderList.do'">주문목록 조회</li>
					<li onclick= "location.href='goodsWriterView.do'">상품판매</li>
					<li onclick= "location.href='sell_goodsList.do'">판매상품조회</li>
					<li onclick= "location.href='goodsList.do'">상품관리</li>
					<li onclick= "location.href='memberLookup.do'">회원조회</li>
					<li onclick= "location.href='sellafterlistViewAdmin.do'">상품후기 조회</li>
					<!-- <span class= menu2 style="left: 612px;" onclick= "location.href='categoryView.do'">카테고리 관리</span>
					<span class= menu2 style="left: 647px;" onclick= "location.href='goodsWriterView.do'">상품판매</span>
					<span class= menu2 style="left: 682px;" onclick= "location.href='sell_goodsList.do'">판매상품조회</span>
					<span class= menu2 style="left: 717px;" onclick= "location.href='goodsList.do'">상품관리</span>
					<span class= menu2 style="left: 752px;" onclick= "location.href='memberLookup.do'">회원조회</span>
					<span class= menu2 style="left: 745px;" onclick= "location.href='sellafterlistViewAdmin.do'">상품후기 조회</span> -->
			    </ul>
			</div>
		</div>
	</c:if>

</body>


<!-- 사이드메뉴 스크롤 따라옴 -->
<!-- <script>  
$("document").ready(function() {  
   
    $(window).scroll(function()  
    {  
        $('#scroll').animate({top:$(window).scrollTop()+"px" },{queue: false, duration: 350});    
    });  
 
    $('#scroll').click(function()  
    {  
        $('#scroll').animate({ top:"+=15px",opacity:0 }, "slow");  
    })
       
});  
</script> -->


<!-- ---------------------------------------------------------------------------------------------------- -->
<script>
$(document).ready(function(){


// Toggle the blurred class
function sidebar(){
  /* var trigger = $('#trigger, #close'), */
  var trigger = $('#trigger'),
  menu = $('.sidebar');

  trigger.on('click',function(){
   $(this).toggleClass('active');
   menu.toggleClass('closed');
   $('#blurrMe').toggleClass('blurred'); // just here
  });
}

 function deploy(){
  sidebar();
 }

 deploy();

});
</script>
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
<!-- ---------------------------------------------------------------------------------------------------- -->












<script>

function goBoardList(category){
	
	if($("#loginUserMid").val() >0){
		location.href='boardListView.do?category='+category
			
	}else{
		alert("로그인을 해야지만 이용하실 수 있습니다.")
		location.href='loginView.do'	
	}
	
	
}

function goNboardList(){
	if($("#loginUserMid").val() >0){
		location.href='boardListView.do?category=1'
	}else{
		alert("로그인을 해야지만 이용하실 수 있습니다.")
		location.href='loginView.do'	
	}
}




function goOrderView(){
	alert("fsdf");
	;
	
}



$(function(){
    $(".communityMenu").mouseenter(function(){
          $(".communityMenubar").css("display","block");
        $(".normalMenubar").css("display","none");
             
     });
     
    $(".communityMenu").mouseleave(function(){
        $(".communityMenubar").css("display","none");
        $(".normalMenubar").css("display","block");
    }); 

   
     $(".myPageMenu").mouseenter(function(){
         $(".myPageMenubar").css("display","block");
       $(".normalMenubar").css("display","none");
            
    });
     
   $(".myPageMenu").mouseleave(function(){
       $(".myPageMenubar").css("display","none");
       $(".normalMenubar").css("display","block");
   }); 

    
    
   
 });
 
function myPage(){
	if($("#loginUserMid").val() >0){
		location.href='myinfo.do'
			
	}else{
		alert("로그인을 해야지만 이용하실 수 있습니다.")
		location.href='loginView.do'	
	}
}

function cart(){
	if($("#loginUserMid").val() >0){
		
		location.href='cartList.do'
			
	}else{
		alert("로그인을 해야지만 이용하실 수 있습니다.")
		location.href='loginView.do'	
	}
}
function orderList(){
	if($("#loginUserMid").val() >0){
		location.href='orderView.do'
			
	}else{
		alert("로그인을 해야지만 이용하실 수 있습니다.")
		location.href='loginView.do'	
	}
	
}

function after(){
	if($("#loginUserMid").val() >0){
	location.href='${myafterUpdate}'
	}else{
		alert("로그인을 해야지만 이용하실 수 있습니다.")
		location.href='loginView.do'
	}
}
</script>


</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&display=swap&subset=korean" rel="stylesheet">
<title>Insert title here</title>
<style>
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
      line-height: 3;
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
    top: -41px;
    left: 123px;
}

 .myPageNav:after {
   content: '';
    position: relative;
    border-top: 5px solid transparent;
    border-right: 6px solid transparent;
    border-left: 6px solid transparent;
    border-bottom: 8px solid #fa4a4a;
    top: -41px;
    left: 635px;
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
				<c:out value = "${loginUser.userName }님 환영 합니다."/>
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
      <div class= "menu normalMenu">소개</div>
      <div class= "menu normalMenu">공지사항</div>
      <div class= "menu communityMenu">커뮤니티</div>
      <div class =logoImg><img src="${contextPath}/resources/images/logo.png" style="height: 89px; vertical-align: middle" onclick= "location.href='home.do'"></div>
      <div class= "menu normalMenu">BMI 계산기</div>
      <div class= "menu normalMenu" onclick= "location.href='shopGoodsListView.do'">SHOP</div>
   	  <c:if test="${sessionScope.loginUser.userId ne 'admin'}">
   	  	<div class= "menu myPageMenu">마이페이지</div> 
      </c:if>
      <c:if test="${sessionScope.loginUser.userId eq 'admin' }">
      	<div class= "menu myPageMenu">관리자페이지</div> 
      </c:if>
   </div>
</div> 




<!-- <div class="menubar2" style="display:block;">
   
</div>
 -->

<div class="menubar2 normalMenubar">

</div>   
 
 
<div class="menubar2 communityMenubar communityMenu" style="display:none;">
   <div class= "conmmunityNav">
      <span class= menu2 style="left: 285px;" onclick= "location.href='fBoardListView.do'">자유게시판</span>
      <span class= menu2 style="left: 315px;">Before & After </span>
   </div>
</div>   
   
 <c:if test="${sessionScope.loginUser.userId ne 'admin'}">   
<div class="menubar2 myPageMenubar myPageMenu" style="display:none;">
   <div class= "myPageNav">
      <span class= menu2 style="left: 647px;">다이어트 일지</span>
      <span class= menu2 style="left: 682px;" onclick= "location.href='myinfo.do'">내정보보기</span>
   </div>
</div>   
</c:if>
<c:if test="${sessionScope.loginUser.userId eq 'admin' }">
<div class="menubar2 myPageMenubar myPageMenu" style="display:none;">
   <div class= "myPageNav">
      <span class= menu2 style="left: 647px;" onclick= "location.href='goodsWriterView.do'">상품등록</span>
      <span class= menu2 style="left: 682px;" onclick= "location.href='sell_goodsList.do'">상품조회</span>
      <span class= menu2 style="left: 717px;" onclick= "location.href='memberLookup.do'">회원조회</span>
   </div>
</div>   
</c:if>

</body>

<script>


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
 


</script>


</html>
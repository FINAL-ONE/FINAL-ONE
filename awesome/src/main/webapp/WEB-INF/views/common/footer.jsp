<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->

<style>

.footer{
   border-top: 1px solid #262A2D;
   width: 100%;
   height: 390px;
   display: block;
   
}

.footerSpan{
   color: #383838;
   font-size:14px; 
   line-height: 3.5;
   padding-right: 14px;
   border-right: 1px solid lightgray;
}

.footerDiv{
   display: inline-block;
   vertical-align: middle;
/*    border: 1px solid blue; */
   width: 500px;
   height: 250px;
   
}

.footerSpan:hover{
   cursor:pointer;
}
.footerDiv a{
   font-size:12px;
   color:#999999;
   text-decoration:none;
}

.footerDiv a:hover{
   color: black;

}

.footerButton{
   color:#999;
   font-weight: 300px;
   background: #f9f9f9;
    border: 1px solid #d9d9d9;
    text-align: center;
    background: #f9f9f9;
   text-align: center;
}

.footerButton:hover{
   color: black;

}

.sns:hover{
	cursor: pointer;
}

</style>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>footer test</title>
</head>
<div class= "footer" > 
   <div style="width: 100%; height: 50px; border-bottom: 1px solid #eee">
      <div style=" height: 100%; width: 1288px; margin-left:auto;margin-right: auto" >
            <span class= footerSpan>개인정보 취급 방침</span>
            <span class= footerSpan>&nbsp;&nbsp;이용약관</span>
            <span class= footerSpan style="border:none">&nbsp;&nbsp;제휴문의</span>
      </div>
   </div>
   <div style=" height: 260px; width: 1288px; margin-left:auto;margin-right:auto;margin-top:30px;">
      <div class= footerDiv>
            <b style="font-size: 17px;">고객센터</b><br><br>
            hokwan92@naver.com 
            <br><br>
            <p style="width:300px; margin:0px; font-size:12px;color:#999999">
            문의사항은 관리자에게 게시판 또는 이메일 주소로<br>
            연락주시면 빠른 시일내에 회신드리도로하겠습니다.
            </p>  
            <br>
            <button class="footerButton" style="font-szie:14px; width: 100px;" >관리자에게</button> 
      </div>
      
      <div class= footerDiv>
         <b style="font-size: 17px;">Aewsome 정보</b>
         <p style="width:300px; margin:0px; font-size:12px;color:#999999">
         <br>
            (주)살빼조 Awesome Co.,Ltd. 대표  펭수<br><br>
            본점 : 사업자등록번호 220-86-74148<br>
            서울시 강남구 테헤란로 14길 6 남도빌딩(5F, S반)<br>

            <button class="footerButton" style="margin-top:5px; font-size:13px;"onclick="window.open('http://www.ftc.go.kr/www/bizCommList.do?key=232')">사업자번호조회</button><br><br>
            지점 : 사업자등록번호 476-85-00086<br>
            경기도 구리시 벌말로 108-17(토평동)<br><br>
            통신판매업신고 제2012-서울성동0616<br>
            건강기능식품판매업 제2015-0281645 (영등포)<br>
         </p>  
      </div>
      <div class= footerDiv style="width: 270px;">
         <b style="font-size: 17px;">공지사항</b><br>
            <br>
            <a href="">· S파게티 까르보나라 체험단 모집 (11.21~12.01)</a><br>
            <a href="">· 단단파운드 추가 체험단 발표</a><br>
            <a href="">· 단단파운드 체험단 발표</a><br>
            <a href="">· 크런치킨 체험단 모집 (11.15~11.24)</a><br>
            <a href="">· 달짝 아이스단호박 체험단 모집 (11.12~11.21)</a><br>
         <br>
         <b style="font-size: 17px;">SNS</b><br><br>
        <img src="resources/images/facebook.png" style="height:25%; width:25%; " class="sns" onclick="window.open('https://www.facebook.com')">&nbsp;&nbsp;
       <img src="resources/images/instagram.png" style="height:25%; width:25%; "class="sns" onclick="window.open('https://www.instagram.com')">&nbsp;&nbsp;
      <img src="resources/images/twitter.png" style="height:25%; width:25%; "class="sns" onclick="window.open('http://twitter.com')">
      </div>
   </div>
   <div style="width: 1288px; margin-left:auto;margin-right: auto;margin-top:0px; border-top: 1px solid #eee">
       <div style="width: 375px;margin-left:auto;margin-right: auto; margin-top:10px;color:#999999; font-size:14px">
          Copyright 2019. AWESOME. ALL RIGHTS RESERVED
       </div>
   </div>
</div>

<body>
 
</body>
</html>
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

<!-- 3D-slider css -->
<link href="https://www.cssscript.com/wp-includes/css/sticky.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="js/3d-slider-master/style.css">
    
    
<!-- Star Rating -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

.outer{
   width : 1300px;
    margin-left: auto;
      margin-right:auto;
}
.contentArea{
   width : 90%;
   /* background : gray; */
    margin-left: auto;
      margin-right:auto;
    /* margin-top:50px; */
}
/* 롤링배너 */
.rolling-banner{
   width : 1200px;
   height : 300px;
   margin-left: 10px;
   margin-right:auto;
    margin-top:20px;
    margin-bottom: 50px;
}

/* banner */
.rbanner {position: relative; width: 1455px; height: 300px; margin:0 auto; padding:0; overflow: hidden; cursor : pointer;}
.rbanner ul {position: absolute; margin: 0px; padding:0; list-style: none; }
.rbanner ul li {float: left; width: 1455px; height: 300px; margin:0; padding:0;}
   
   
.mini-banner{
   width : 350px;
   height : 200px;
   display : inline-block;
   margin-left: 36px;
   cursor : pointer;
   
}
.goods-list{
   width : 270px;
   height : 333px;
   /* background : yellow; */
   display : inline-block;
    margin-left: 17px;
    margin-right:auto;
    margin-top:30px;
    cursor : pointer;
    
}
.goods-img{
   width : 200px;
   height : 200px;
   /* background : green; */
    margin-left:auto;
    margin-right:auto;
    margin-top:20px;
    cursor : pointer;
}
.goods-list:hover{
   border : 1px solid red;
}
.goods-img:hover{
   cursor : pointer;
   -webkit-transform : scale(1.1,1.1);
}
.good-info{
   height : 50px;
}

  
  /* 사진 롤링 */
  iSlider-effect {
  height: 340px;
  width: 260px;
  overflow: hidden;
  position: relative;
  margin-left: auto;
  margin-right: auto;
  border: 1px solid #000000;
}

.iSlider-effect ul {
  list-style: none;
  /*margin: 0;*/
  margin-top: -5px;
  padding: 0;
  height: 100%;
  overflow: hidden;
}
.iSlider-effect li {
  position: absolute;
  margin: 0;
  padding: 0;
  height: 100%;
  overflow: hidden;
  display: -webkit-box;
  -webkit-box-pack: center;
  -webkit-box-align: center;
  list-style: none;
}
.iSlider-effect li  img{
  max-width: 100%;
  max-height: 100%;
}


.fa-star{
   color : dark-gray;
}
.checked {
     color: orange;
}


.cards__container{
   cursor : pointer;
}
</style>
</head>
<body>

   <jsp:include page ="../common/menubar.jsp"/>
   <div id="container" style="overflow: auto; overflow-x : hidden; height: auto;" ><!-- container -->
   
   
   <div class = "outer">
      <div class = "contentArea">
         <div class = "rolling-banner">
            <div class="rbanner">   
               <ul>
                  <li><img src="resources/images/mainbanner_1.png" width="1200" height="300px"></li>
                  <li><img src="resources/images/mainbanner_2.png" width="1200" height="300px"></li>
                  <li><img src="resources/images/mainbanner_3.png" width="1200" height="300px"></li>
               </ul>
            </div>
         </div>
         <div class = "minu-bannerArea">
            <div class = "mini-banner">
               <img src="resources/images/minibanner_1.png" width="350" height="200px">
            </div>
            <div class = "mini-banner">
               <img src="resources/images/minibanner_2.png" width="350" height="200px">
            </div>
            <div class = "mini-banner">
               <img src="resources/images/minibanner_3.png" width="350" height="200px">
            </div>
         </div>
         
           <h1 align="center" style ="margin-top: 40px;">추천상품</h1>
             <div class="container">
                 <div class="button" onclick="shiftLeft()" ><img src="https://image.ibb.co/mRsEb7/left_arrow.png" alt=""></div>
                 <div class="cards-wrapper">
                     <ul class="cards__container">
                         <li class="box" style="background-color:red"><img src="resources/images/3d-bannder1.png"></li>
                         <li class="box"><a href="http://localhost:8888/awesome/adetail.do?sellNum=7&userId=&gId=8"><img src="resources/images/3d-bannder2.png"></a></li>
                         <li class="box"><img src="resources/images/3d-bannder3.png"></li>
                         <li class="box"><img src="resources/images/3d-bannder4.png"></li>
                         <li class="box"><img src="resources/images/3d-bannder5.png"></li>
                         <li class="box box--hide"><img src="resources/images/3d-bannder6.png"></li>
                         <li class="box box--hide"><img src="resources/images/3d-bannder7.png"></li>
                     </ul>
                 </div>
                 <div class="button" onclick="shiftRight()"><img src="https://image.ibb.co/dfPSw7/right_arrow.png" alt=""></div>
             </div>

         <c:forEach var="a" items="${list}">
            <div class = "goods-list">
                  <c:url var="adetail" value="adetail.do">
                     <c:param name="sellNum" value="${a.sellNum }"/>
                     <c:param name="userId" value="${a.userId }"/>
                     <c:param name="gId" value="${a.gId }"/>
                  </c:url>
                  <a href="${adetail}" style="text-decoration:none">
                     <div class="goods-img" style ="margin-bottom: 10px;">
                        <img src="resources/auploadFiles/${a.filePath}" width ="200px" height ="200px">
                     </div>
                     <div class="good-info" style="margin-left : 36px;">
                        <span style="font-weight: bold; color:black;">${a.goodsTitle}</span>
                        <img src="resources/images/line.png">
                        <span style="color:gray;">${a.goodsContent}</span>
                        <span style="font-weight: bold; font-size: 18px; color:red; text-align: center; color : red;">${a.goodsPrice}원</span><br>
                        <!-- <input type="hidden" name ="star" value = "1" style="size : 10px">
                           <span class="fa fa-star checked"></span> -->   
                     </div>
                  </a>
            </div>
         </c:forEach>
         
         </div>   <!--contentArea 끝  -->
         
      </div>   <!-- outer 끝 -->
      
   </div> <!-- container -->
   
   <!-- 롤링 배너  -->
   <script>
      $(document).ready(function() {
         var $banner = $(".rbanner").find("ul");
   
         var $bannerWidth = $banner.children().outerWidth();//이미지의 폭
         var $bannerHeight = $banner.children().outerHeight(); // 높이
         var $length = $banner.children().length;//이미지의 갯수
         var rollingId;
   
         //정해진 초마다 함수 실행
         rollingId = setInterval(function() { rollingStart(); }, 3000);//다음 이미지로 롤링 애니메이션 할 시간차
       
         function rollingStart() {
            $banner.css("width", $bannerWidth * $length + "px");
            $banner.css("height", $bannerHeight + "px");
            //alert(bannerHeight);
            //배너의 좌측 위치를 옮겨 준다.
            $banner.animate({left: - $bannerWidth + "px"}, 1500, function() { //숫자는 롤링 진행되는 시간이다.
               //첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
               $(this).append("<li>" + $(this).find("li:first").html() + "</li>");
               //뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
               $(this).find("li:first").remove();
               //다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
               $(this).css("left", 0);
               //이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
            });
         }
      }); 
   </script>
   
   
   <!-- 3d image box Rotator -->
    <script src='js/3d-slider-master/app.js'></script>
   <script>
      try {
        fetch(new Request("https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js", { method: 'HEAD', mode: 'no-cors' })).then(function(response) {
          return true;
        }).catch(function(e) {
          var carbonScript = document.createElement("script");
          carbonScript.src = "//cdn.carbonads.com/carbon.js?serve=CE7DC2JW&placement=wwwcssscriptcom";
          carbonScript.id = "_carbonads_js";
          document.getElementById("carbon-block").appendChild(carbonScript);
        });
      } catch (error) {
        console.log(error);
      }
   </script>
   
   
   <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      
        ga('create', 'UA-46156385-1', 'cssscript.com');
        ga('send', 'pageview');
   
   </script>



   
</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
 <link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">
 <!-- 텍스트 이미지삽입 효과   -->
 <link rel="stylesheet" href="css/Awesome Text Effects/style.css"> 
    
   <!-- 인물 소개 -->
   <link rel="stylesheet" href="css/Our Clients/style.css">
    <link href="https://fonts.googleapis.com/css?family=Hind&display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>   
   
<style>
.footer{
 padding-left: 90px !important;
}



 .container {
 	margin: 70px auto; 
  }
  h2 { 
  margin-bottom: 100vh;
   }
  .col-sm-4 { display: none; }
  .slideInUp { display: block; }

 
 
#center-box1{
	width : 830px;
	height : 400px;
	background : lightgray;
	margin-left : 0px;
	padding : 40px 60px 40px 40px;
	position: relative;
	top: -560px; 
	z-index: 1;
}

#center-box2{
	width : 800px;
	height : 400px;
	background : lightgray;
	/* margin-right : 150px; */
	padding : 40px 40px 40px 80px;
	position: relative;
	left: 330px; 
	top: -500px; 
	z-index: 1;;
	
}
#content-img1{
	margin-left :780px;
	position: relative;
	z-index: 2;
	margin-bottom: 60px;
}

#content-img2{
	position: relative;
	z-index: 2;
	margin-bottom: 10px;
}


.centerDiv{
	
		  width:1200px;
		  border:none;
/* 	  border: 3px solid pink;   */
	      margin-left:auto;
	      margin-right:auto;
	      height: auto;
	      padding-left: 40px;
	      
	
	}
	
	
	
 .conmmunityNav:after {
    top: -42px !important;
}

.myPageNav:after {
    top: -42px !important;
}




</style>
    		<link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">
<body>
	<jsp:include page ="../common/menubar.jsp"/> 


<div class = "centerDiv"> 

 <div id="text-awesome"  style="width: 1050px; margin-left: auto; margin-right: auto; position:relative; top:0px; left:0px; transform:none; margin-top:0px; margin-bottom:50px;">Awesome</div>

		
		<div id ="content-area-awesome1" style="height : 500px; padding-bottom: -600px;">
			<div id="content-img1">
				<img src="resources/images/handsome.jpg" style="width : 420px; height : 450px;">
			</div>
			
			<div id = "center-box1">
				<b>저희는 건강한 다이어트를 지향합니다.</b><br><br>
				건강한 음식과 꾸준한 운동, 이 두 가지가 여러분의 건강을 좌우합니다.<br><br>
				저희 AWESOME은 회원님들의 활기차고 건강한 생활을 위해 연구합니다.<br><br>
				건강한 음식을 엄선하여 판매합니다. 맛있고 건강한 음식으로 여러분들의 식단을 책임지는겠습니다.<br><br>
				건강한 운동생활을 위한 회원님들의 커뮤니티를 올바르게 관리합니다.<br><br>
				다이어트 정보들을 공유하며 건강한 생활을 만들도록 돕겠습니다.
			</div>
		</div>
		<div id ="content-area-awesome1" style="height : 520px; padding-bottom: -600px; margin-top: 50px; ">
			<div id="content-img2">
					<img src="resources/images/health.jpg" style="width : 370px; height : 450px;">
				</div>
				
			<div id = "center-box2">
				<b>맛있고 신선한 식품</b><br><br>
				저희 AWESOME은 신선한 다이어트 식품만을 연구하고 엄선하여 런칭합니다.<br><br>
				다이어트 식품은 전부 다 맛없다는 편견을 깨고,<br><br> 맛있는 식품으로 여러분들의 다이어트를 응원합니다.<br><br>
				
			</div>
		</div>
	
	 <div class="testimonial-section">
      <div class="inner-width">
        <h1>What Our Clients Say</h1>
        <div class="testimonial-pics">
          <img src="resources/images/peng1.png" alt="test-1" class="active">
          <img src="resources/images/peng2.jpg" alt="test-2">
          <img src="resources/images/peng3.png" alt="test-3">
          <img src="resources/images/peng4.jpeg" alt="test-4">
          <img src="resources/images/peng5.PNG" alt="test-5">
        </div>

        <div class="testimonial-contents">
          <div class="testimonial active" id="test-1">
              <p>영화관 미술관 아니고 조호관 스키타러 사바사바</p>
            <span class="description">조호관 / 조장</span>
          </div>

          <div class="testimonial" id="test-2">
              <p>우린 거북선 이준배는 통통</p>
            <span class="description">이준배 / 부조장</span>
          </div>

          <div class="testimonial" id="test-3">
            <p>손석희 아들</p>
            <span class="description">손동복 / 팀원</span>
          </div>

          <div class="testimonial" id="test-4">
            <p>박신혜 닮은꼴</p>
            <span class="description">박나혜 / 팀원</span>
          </div>
          
           <div class="testimonial" id="test-5">
            <p>하정언니... 잘있니..? </p>
            <span class="description">김미진 / 팀원</span>
          </div>
          
        </div>
      </div>
    </div>
	
    <script type="text/javascript">
      $('.testimonial-pics img').click(function(){
        $(".testimonial-pics img").removeClass("active");
        $(this).addClass("active");

        $(".testimonial").removeClass("active");
        $("#"+$(this).attr("alt")).addClass("active");
      });
    </script>
	
	
	
	</div> <!--  centerDiv 끝 -->
	
		<br><br>

</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>

</html>
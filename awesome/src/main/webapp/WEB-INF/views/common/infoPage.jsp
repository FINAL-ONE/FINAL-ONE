<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
 
 <!-- 텍스트 이미지삽입 효과   -->
 <link rel="stylesheet" href="css/Awesome Text Effects/style.css"> 
    
   <!-- 인물 소개 -->
   <link rel="stylesheet" href="css/Our Clients/style.css">
    <link href="https://fonts.googleapis.com/css?family=Hind&display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>   
   
<style>
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
	margin-left : 350px;
	padding : 40px 60px 40px 40px;
	position: relative;
	left: 10px; 
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
	left: 630px; 
	top: -500px; 
	z-index: 1;;
	
}
#content-img1{
	margin-left : 1150px;
	position: relative;
	z-index: 2;
	margin-bottom: 60px;
}

#content-img2{
	margin-left : 290px;
	position: relative;
	z-index: 2;
	margin-bottom: 10px;
}









</style>
    
<body>
	<jsp:include page ="../common/menubar.jsp"/> 

 <div id="text-awesome" style ="margin-left : 230px;" >Awesome</div>

		
		<div id ="content-area-awesome1" style="height : 500px; padding-bottom: -600px;">
			<div id="content-img1">
				<img src="resources/images/main_image_content1.jpg" style="width : 370px; height : 450px;">
			</div>
			
			<div id = "center-box1">
				<b>SONGS REPREND LA ROUTE</b><br><br>
				Songs, spectacle créé en octobre 2018 au Théâtre de La Croix-Rousse, repart en tournée à partir du mardi 10 décembre 2019 à La Roche-sur-Yon, Niort, Poitiers, Blois, Genève et Dijon.
				
				Retrouvez le teaser de l’enregistrement Perpetual Night paru chez harmonia mundi, dont sont extraits les chants anglais interprétés par Lucile Richardot et l’ensemble Correspondances, plongés dans l’univers poétique et burlesque du metteur en scène Samuel Achache.
				
				« En partant d’un très beau disque d’airs anglais du XVIIe siècle, le metteur en scène Samuel Achache et le chef baroque Sébastien Daucé ont construit un conte semi-fantastique au charme fou, où théâtre et musique s’accordent pour le meilleur. » Télérama • janvier 2019
				
				Retrouvez toutes les dates des représentations
			</div>
		</div>
		<div id ="content-area-awesome1" style="height : 600px; padding-bottom: -600px;">
			<div id="content-img2">
					<img src="resources/images/main_image_content2.jpg" style="width : 370px; height : 450px;">
				</div>
				
			<div id = "center-box2">
				<b>SONGS REPREND LA ROUTE</b><br><br>
				Songs, spectacle créé en octobre 2018 au Théâtre de La Croix-Rousse, repart en tournée à partir du mardi 10 décembre 2019 à La Roche-sur-Yon, Niort, Poitiers, Blois, Genève et Dijon.
				
				Retrouvez le teaser de l’enregistrement Perpetual Night paru chez harmonia mundi, dont sont extraits les chants anglais interprétés par Lucile Richardot et l’ensemble Correspondances, plongés dans l’univers poétique et burlesque du metteur en scène Samuel Achache.
				
				« En partant d’un très beau disque d’airs anglais du XVIIe siècle, le metteur en scène Samuel Achache et le chef baroque Sébastien Daucé ont construit un conte semi-fantastique au charme fou, où théâtre et musique s’accordent pour le meilleur. » Télérama • janvier 2019
				
				Retrouvez toutes les dates des représentations
			</div>
		</div>
	
	 <div class="testimonial-section">
      <div class="inner-width">
        <h1>What Our Clients Say</h1>
        <div class="testimonial-pics">
          <img src="css/Our Clients/img/p1.png" alt="test-1" class="active">
          <img src="css/Our Clients/img/p2.png" alt="test-2">
          <img src="css/Our Clients/img/p3.png" alt="test-3">
          <img src="css/Our Clients/img/p4.png" alt="test-4">
          <img src="css/Our Clients/img/p4.png" alt="test-5">
        </div>

        <div class="testimonial-contents">
          <div class="testimonial active" id="test-1">
              <p>Lorem  similique, eum tenetur, numquam eligendi aliquid. Nulla sit, cupiditate corporis labore, modi natus officiis asperiores!</p>
            <span class="description">조호관 / 조장</span>
          </div>

          <div class="testimonial" id="test-2">
              <p>Lorem  similique, eum tenetur, numquam eligendi aliquid. Nulla sit, cupiditate corporis labore, modi natus officiis asperiores!</p>
            <span class="description">이준배 / 부조장</span>
          </div>

          <div class="testimonial" id="test-3">
            <p>Lorem  similique, eum tenetur, numquam eligendi aliquid. Nulla sit, cupiditate corporis labore, modi natus officiis asperiores!</p>
            <span class="description">손동복 / 팀원</span>
          </div>

          <div class="testimonial" id="test-4">
            <p>Lorem ipsum dolorng elit. Ab consequatur et adipisci ut, impedit cumque, similique, eum tenetur, numquam eligendi aliquid. Nulla sit, cupiditate corporis labore, modi natus officiis asperiores!</p>
            <span class="description">박나혜 / 팀원</span>
          </div>
          
           <div class="testimonial" id="test-5">
            <p>Lorem ipsum dolorng elit. Ab consequatur et adipisci ut, impedit cumque, similique, eum tenetur, numquam eligendi aliquid. Nulla sit, cupiditate corporis labore, modi natus officiis asperiores!</p>
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
	
	
	
	
	


</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>

</html>
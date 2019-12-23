<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<head>
<link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">	

<meta charset="UTF-8">
	<title>Home</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 	

<script src="js/parallax_content-master/demo/build/app.js"></script>
 
 <!-- 메인이미지 비디오 슬라이더 -->
<link rel="stylesheet" href="js/image-video-slideshow-bo/style.min.css">
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<style>
@import "color-schemer";
@import "compass";
@import "compass/css3/animation";

@import url('https://fonts.googleapis.com/css?family=Raleway');

$defaultSeconds: 3s;

body {
	margin: 0;
	padding: 0;
	font-family: 'Raleway', sans-serif;
}
.flex-container {
	position: absolute;
	height: 100vh;
	width: 100%;
	display: -webkit-flex; /* Safari */
	display: flex;
	overflow: hidden;
	@media screen and (max-width: 768px) {
		flex-direction: column;
	}
}
.flex-title {
	color: #f1f1f1;
	position: relative;
	font-size: 6vw;
	margin: auto;
	text-align: center;
	transform: rotate(90deg);
	top: 15%;
	-webkit-transition: all 500ms ease;
	-moz-transition: all 500ms ease;
	-ms-transition: all 500ms ease;
	-o-transition: all 500ms ease;
	transition: all 500ms ease;
	@media screen and (max-width: 768px) {
		transform: rotate(0deg) !important;
	}
}
.flex-about {
	opacity: 0;
	color: #f1f1f1;
	position: relative;
	width: 70%;
	font-size: 2vw;
	padding: 5%;
	top: 20%;
	border: 2px solid #f1f1f1;
	border-radius: 10px;
	line-height: 1.3;
	margin: auto;
	text-align: left;
	transform: rotate(0deg);
	-webkit-transition: all 500ms ease;
	-moz-transition: all 500ms ease;
	-ms-transition: all 500ms ease;
	-o-transition: all 500ms ease;
	transition: all 500ms ease;
	@media screen and (max-width: 768px) {
		padding: 0%;
		border: 0px solid #f1f1f1;
	}
}


.flex-slide {
	-webkit-flex: 1;  /* Safari 6.1+ */
	-ms-flex: 1;  /* IE 10 */    
	flex: 1;
	cursor: pointer;
	-webkit-transition: all 500ms ease;
	-moz-transition: all 500ms ease;
	-ms-transition: all 500ms ease;
	-o-transition: all 500ms ease;
	transition: all 500ms ease;
	@media screen and (max-width: 768px) {
		overflow: auto;
		overflow-x: hidden;
	}
}
.flex-slide p {
	@media screen and (max-width: 768px) {
		font-size: 2em;
	}
} 
.flex-slide ul li {
	@media screen and (max-width: 768px) {
		font-size: 2em;
	}
} 
.flex-slide:hover {
	-webkit-flex-grow: 3;
	flex-grow: 3;
}
.home {
	height: 100vh;
	background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(resources/images/home1.png);
	background-size: cover;
	background-position: center center;
	background-attachment: fixed;
	@media screen and (min-width: 768px) {
		@include animation-properties((animation: aboutFlexSlide, animation-duration: $defaultSeconds, animation-iteration-count: 1, animation-delay: 0s));
	}
}

@keyframes aboutFlexSlide {
	0% {
		-webkit-flex-grow: 1;
		flex-grow: 1;
	}
	50% {
		-webkit-flex-grow: 3;
		flex-grow: 3;
	}
	100% {
		-webkit-flex-grow: 1;
		flex-grow: 1;
	}
}

.flex-title-home {
	@media screen and (min-width: 768px) {
		transform: rotate(90deg);
		top: 15%;
		@include animation-properties((animation: homeFlextitle, animation-duration: $defaultSeconds, animation-iteration-count: 1, animation-delay: 0s));
	}
}



@keyframes homeFlextitle {
	0% {
		transform: rotate(90deg);
		top: 15%;
	}
	50% {
		transform: rotate(0deg);
		top: 15%;
	}
	100% {
		transform: rotate(90deg);
		top: 15%;
	}
}

.flex-about-home {
	opacity: 0;
	@media screen and (min-width: 768px) {
		@include animation-properties((animation: flexAboutHome, animation-duration: $defaultSeconds, animation-iteration-count: 1, animation-delay: 0s));
	}
}

@keyframes flexAboutHome {
	0% {
		opacity: 0;
	}
	50% {
		opacity: 1;
	}
	100% {
		opacity: 0;
	}
}



.about {
	background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(resources/images/community.jpg);
	background-size: cover;
	background-position: center center;
	background-attachment: fixed;	
}
.contact-form {
	width: 100%;
}
input {
	width: 100%;
}
textarea {
	width: 100%;	
}
.contact {
	background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(resources/images/exercise.jpg);
	background-size: cover;
	background-position: center center;
	background-attachment: fixed;
}
.work {
		background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(resources/images/shop.jpg);
	background-size: cover;
	background-position: center center;
	background-attachment: fixed;
}



// Preloader
.spinner {
	position: fixed;
	top: 0;
	left: 0;
	background: #222;
	height: 100%;
	width: 100%;
	z-index: 11;
	margin-top: 0;
	color: #fff;
	font-size: 1em;
}

.cube1, .cube2 {
  background-color: #fff;
  width: 15px;
  height: 15px;
  position: absolute;
  top: 0;
  left: 0;
  
  -webkit-animation: sk-cubemove 1.8s infinite ease-in-out;
  animation: sk-cubemove 1.8s infinite ease-in-out;
}

.cube2 {
  -webkit-animation-delay: -0.9s;
  animation-delay: -0.9s;
}

@-webkit-keyframes sk-cubemove {
  25% { -webkit-transform: translateX(42px) rotate(-90deg) scale(0.5) }
  50% { -webkit-transform: translateX(42px) translateY(42px) rotate(-180deg) }
  75% { -webkit-transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5) }
  100% { -webkit-transform: rotate(-360deg) }
}

@keyframes sk-cubemove {
  25% { 
    transform: translateX(42px) rotate(-90deg) scale(0.5);
    -webkit-transform: translateX(42px) rotate(-90deg) scale(0.5);
  } 50% { 
    transform: translateX(42px) translateY(42px) rotate(-179deg);
    -webkit-transform: translateX(42px) translateY(42px) rotate(-179deg);
  } 50.1% { 
    transform: translateX(42px) translateY(42px) rotate(-180deg);
    -webkit-transform: translateX(42px) translateY(42px) rotate(-180deg);
  } 75% { 
    transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5);
    -webkit-transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5);
  } 100% { 
    transform: rotate(-360deg);
    -webkit-transform: rotate(-360deg);
  }
}







</style>



</head>
<body>


<jsp:include page ="common/menubar.jsp"/>
<div id="container" style="overflow: auto; height: auto;" ><!-- container -->

	    
<div class="content">
    <!-- content -->
</div>

<div class="container">
	<ul class="bo-slider">
		<li data-url="https://source.unsplash.com/1600x900/?fitness" data-type="image"></li>
		<li data-url="https://source.unsplash.com/1600x900/?workout" data-type="image"></li>
		<li data-url="https://source.unsplash.com/1600x900/?yoga" data-type="image"></li>
		<li data-url="https://www.w3schools.com/html/mov_bbb.mp4" data-type="video">
		<li data-url="https://source.unsplash.com/1600x900/?gym" data-type="image"></li>
	</ul>
</div>

			
	<section class="section-features">
	 <div class="container">

        <ul class="features-list">

            <li class="feature-item">
                <div class="content-col">
                    <div class="title" style="background : none;">
                        Lorem ipsum
                    </div>
                    <div class="desc">
                        <p>
                            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                            laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto
                            beatae vitae dicta sunt explicabo.
                        </p>
                        <p>
                            Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut
                            odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
                        </p>
                    </div>
                </div>
                <div class="img-col">
                    <div class="img-wrap back-img" style="background-image: url(resources/images/home1.png)">
                    </div>
                </div>
            </li>

            <li class="feature-item">
                <div class="content-col">
                    <div class="title" style="background : none;">
                        Lorem ipsum
                    </div>
                    <div class="desc">
                        <p>
                            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                            laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto
                            beatae vitae dicta sunt explicabo.
                        </p>
                        <p>
                            Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut
                            odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
                        </p>
                    </div>
                </div>
                <div class="img-col">
                    <div class="img-wrap back-img" style="background-image: url(resources/images/community.jpg)">

                    </div>
                </div>
            </li>

            <li class="feature-item">
                <div class="content-col" >
                    <div class="title" style="background : none;">
                        Lorem ipsum
                    </div>
                    <div class="desc">
                        <p>
                            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                            laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto
                            beatae vitae dicta sunt explicabo.
                        </p>
                        <p>
                            Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut
                            odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
                        </p>
                    </div>
                </div>
                <div class="img-col">
                    <div class="img-wrap back-img" style="background-image: url(resources/images/exercise.jpg)">

                    </div>
                </div>
            </li>

        </ul>
    </div>

</section>
</div>

 <!-- 메인이미지 비디오 슬라이더 -->
	<script
	type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
	<script	type="text/javascript" src="js/image-video-slideshow-bo/script.min.js"></script>
	<script type="text/javascript">
		$('.bo-slider').boSlider({
			slideShow: false,
			interval: 3000,
			animation: "fade"
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






</body>
<footer>
	<jsp:include page ="common/footer.jsp"/>
</footer>
</html>

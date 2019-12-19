<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<head>
<link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">	

<meta charset="UTF-8">
	<title>Home</title>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>

<!-- 
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery.waitforimages/2.2.0/jquery.waitforimages.min.js"></script>
 -->
<!-- 3D text tag css -->
<!-- <link href="https://www.cssscript.com/wp-includes/css/sticky.css" rel="stylesheet" type="text/css">
 -->


<!-- jQuery Bootstrap News Box Plugin Demos -->
<!--  <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap-theme.min.css">
<link href="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/css/site.css" rel="stylesheet" type="text/css" />
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/scripts/jquery.bootstrap.newsbox.min.js" type="text/javascript"></script>
 -->
<style>

/* 3D text tag css*/
/* 
.tagcloud {
     font-size: 16px;
 }
 .tagcloud--item {
     padding: 2px 4px;
     background-color: transparent;
     border: 1px solid transparent;
     cursor: pointer;
 }
 .tagcloud--item:hover {
     background-color: rgba(0,0,0,.1);
     border: 1px solid #333;
     -webkit-border-radius: 2px;
     -moz-border-radius: 2px;
     border-radius: 2px;
     opacity: 1 !important;
     z-index: 100 !important;
 }
 .light .tagcloud--item {
     color: #fff;
 }
 .light .tagcloud--item:hover {
     background-color: rgba(255,255,255,.1);
     border: 1px solid #fff;
 }
 */ 
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
	<%-- <jsp:include page ="common/header.jsp"/>
	<jsp:include page ="common/mainHome.jsp"/> --%>

<jsp:include page ="common/menubar.jsp"/>
<div id="container" style="overflow: auto; height: auto;" ><!-- container -->

	    
<div class="content">
    <!-- content -->
</div>

<!-- <script type="text/javascript" src="js/TagCloud-master/dist/TagCloud.min.js"></script>
	    
	<script>
	    var texts = [
	        '다이어트', '운동', '식단조절',
	        '칼로리', '홈트레이닝', '꿀팁',
	        'BMI', '다이어트일지', '비포&애프터',
	        '요요현상', '헬스', '단백질보충',
	    ];
	    var tc = TagCloud('.content', texts);
	    	console.log(tc);
	
	    function toDefault() {
	        document.body.classList.remove('light');
	    }
	    function toLight() {
	        document.body.classList.add('light');
	    }
	    function addTag() {
	        if (!tc) return;
	        texts = texts.concat(['MoreTag']);
	        tc.update(texts);
	    }
	    function removeTag() {
	        if (!tc) return;
	        texts.pop();
	        tc.update(texts);
	    }
	    var moreTcs = [];
	    function toCreate() {
	        var tc = TagCloud('.content', [
	        	'다이어트', '운동', '식단조절',
	         '칼로리', '홈트레이닝', '꿀팁',
	         'BMI', '다이어트일지', '비포&애프터',
	         '요요현상', '헬스', '단백질보충',
	        ]);
	        moreTcs.push(tc);
	    }
	    function toDestroy() {
	        var last = moreTcs[moreTcs.length - 1];
	        if (!last) return;
	        last.destroy();
	        moreTcs.pop();
	    }
	</script>
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
 -->


<!-- jQuery Bootstrap News Box Plugin Demos -->
<!-- <h1 style="margin-top:150px" align="center">jQuery Bootstrap News Box Plugin Demos</h1>
<div class="container">
	<div class="row">
		<div class="col-md-4">
			<div class="panel panel-default">
			<div class="panel-heading"> <span class="glyphicon glyphicon-list-alt"></span><b>News</b></div>
				<div class="panel-body">
					<div class="row">
						<div class="col-xs-12">
						<ul class="demo1">
							<li class="news-item">
							<table cellpadding="4">
								<tr>
									<td><img src="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/images/1.png" width="60" class="img-circle" /></td>
									<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
								</tr>
							</table>
							</li>
							<li class="news-item">
								<table cellpadding="4">
									<tr>
										<td><img src="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/images/2.png" width="60" class="img-circle" /></td>
										<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
									</tr>
								</table>
							</li>
							<li class="news-item">
								<table cellpadding="4">
									<tr>
										<td><img src="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/images/3.png" width="60" class="img-circle" /></td>
										<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
									</tr>
								</table>
							</li>
							<li class="news-item">
								<table cellpadding="4">
									<tr>
										<td><img src="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/images/4.png" width="60" class="img-circle" /></td>
										<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
									</tr>
								</table>
							</li>
							<li class="news-item">
								<table cellpadding="4">
									<tr>
										<td><img src="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/images/5.png" width="60" class="img-circle" /></td>
										<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
									</tr>
								</table>
							</li>
							<li class="news-item">
								<table cellpadding="4">
									<tr>
										<td><img src="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/images/6.png" width="60" class="img-circle" /></td>
										<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
									</tr>
								</table>
							</li>
							<li class="news-item">
								<table cellpadding="4">
									<tr>
										<td><img src="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/images/7.png" width="60" class="img-circle" /></td>
											<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
									</tr>
								</table>
							</li>
						</ul>
						</div>
					</div>
				</div>
				<div class="panel-footer"> </div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="panel panel-default">
			<div class="panel-heading"> <span class="glyphicon glyphicon-list-alt"></span><b>News</b></div>
				<div class="panel-body">
					<div class="row">
						<div class="col-xs-12">
							<ul class="demo2">
								<li class="news-item">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></li>
								<li class="news-item">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></li>
								<li class="news-item">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></li>
								<li class="news-item">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></li>
								<li class="news-item">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></li>
								<li class="news-item">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></li>
							</ul>
						</div>
					</div>
				</div>
			<div class="panel-footer"> </div>
			</div>
		</div>
		
		<div class="col-md-4">
			<div class="panel panel-default">
			<div class="panel-heading"> <span class="glyphicon glyphicon-list-alt"></span><b>News</b></div>
				<div class="panel-body">
					<div class="row">
						<div class="col-xs-12">
							<ul id="demo3">
								<li class="news-item">Curabitur porttitor ante eget hendrerit adipiscing. Maecenas at magna accumsan,
																		rhoncus neque id, fringilla dolor. <a href="#">Read more...</a></li>
								<li class="news-item">Curabitur porttitor ante eget hendrerit adipiscing. Maecenas at magna accumsan,
																		rhoncus neque id, fringilla dolor. <a href="#">Read more...</a></li>
								<li class="news-item">Praesent ornare nisl lorem, ut condimentum lectus gravida ut. Ut velit nunc, vehicula
																		volutpat laoreet vel, consequat eu mauris. <a href="#">Read more...</a></li>
								<li class="news-item">Nunc ultrices tortor eu massa placerat posuere. Vivamus viverra sagittis nunc. Nunc
																		et imperdiet magna. Mauris sed eros nulla. <a href="#">Read more...</a></li>
								<li class="news-item">Morbi sodales tellus sit amet leo congue bibendum. Ut non mauris eu neque fermentum
																		pharetra. <a href="#">Read more...</a></li>
								<li class="news-item">In pharetra suscipit orci sed viverra. Praesent at sollicitudin tortor, id sagittis
																		magna. Fusce massa sem, bibendum id. <a href="#">Read more...</a> </li>
								<li class="news-item">Maecenas nec ligula sed est suscipit aliquet sed eget ipsum. Suspendisse id auctor
																		nibh. Ut porttitor volutpat augue, non sodales odio dignissi id. <a href="#">Read more...</a></li>
								<li class="news-item">Onec bibendum consectetur diam, nec euismod urna venenatis eget. Cras consequat
																		convallis leo. <a href="#">Read more...</a> </li>
							</ul>
						</div>
					</div>
				</div>
			<div class="panel-footer"> </div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
    $(function () {
        $(".demo1").bootstrapNews({
            newsPerPage: 3,
            autoplay: true,
			pauseOnHover:true,
            direction: 'up',
            newsTickerInterval: 4000,
            onToDo: function () {
                //console.log(this);
            }
        });
		
		$(".demo2").bootstrapNews({
            newsPerPage: 4,
            autoplay: true,
			pauseOnHover: true,
			navigation: false,
            direction: 'down',
            newsTickerInterval: 2500,
            onToDo: function () {
                //console.log(this);
            }
        });

        $("#demo3").bootstrapNews({
            newsPerPage: 3,
            autoplay: false,
            
            onToDo: function () {
                //console.log(this);
            }
        });
    });
</script>


</div>
 -->



<!-- 
<div class="flex-container">
	<div class="flex-slide home">
		<div class="flex-title flex-title-home">Home</div>
		<div class="flex-about flex-about-home"><p>Click here to navigate to the home section of the website</p></div>
	</div>
	<div class="flex-slide about">
		<div class="flex-title">Board</div>
		<div class="flex-about"><p>Click here to navigate to the About section of the website</p></div>
	</div>
	<div class="flex-slide work">
		<div class="flex-title">SHOP</div>
		<div class="flex-about"><p>Listing relevant snippets of work:</p>
			<ul>
				<li>First piece of work</li>
				<li>Second piece of work</li>
				<li>Third piece of work</li>
			</ul>
		</div>
	</div>
	<div class="flex-slide contact">
		<div class="flex-title">Contact</div>
				<div class="flex-about">
					<p>Use the contact form below</p>
					<form class="contact-form">
						<p>Email <input type="text" name="email"></p>
						<p>Comment <textarea type="text" name="comment" row="5"></textarea></p>
						<p><input type="submit" name="email" value="Send Message"></p>
					</form>

		</div>
	</div>
</div>


</div>
<script>


(function(){
	$('.flex-container').waitForImages(function() {
		$('.spinner').fadeOut();
	}, $.noop, true);
	
	$(".flex-slide").each(function(){
		$(this).hover(function(){
			$(this).find('.flex-title').css({
				transform: 'rotate(0deg)',
				top: '10%'
			});
			$(this).find('.flex-about').css({
				opacity: '1'
			});
		}, function(){
			$(this).find('.flex-title').css({
				transform: 'rotate(90deg)',
				top: '15%'
			});
			$(this).find('.flex-about').css({
				opacity: '0'
			});
		})
	});
})();


</script>
 -->
<section class="section-intro back-img" style="background-image: url(resources/images/Diettext3.jpg)">
    <div class="container">
        <div class="content-wrap">
            <h3 class="title parallax-move" data-parallax-content='{"shift": 40, "duration": 3}'>
               <!--  jQuery parallaxContent Example -->
            </h3>
        </div>
    </div>
</section>
<section class="section-features">

    <div class="container">

        <ul class="features-list">

            <li class="feature-item">
                <div class="content-col">
                    <div class="title">
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
                    <div class="title">
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
                <div class="content-col">
                    <div class="title">
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

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.4/TweenLite.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.4/plugins/CSSPlugin.min.js"></script>

<script src="js/parallax_content-master/demo/build/app.js"></script>

</div>
</body>
<footer>
	<jsp:include page ="common/footer.jsp"/>
</footer>
</html>

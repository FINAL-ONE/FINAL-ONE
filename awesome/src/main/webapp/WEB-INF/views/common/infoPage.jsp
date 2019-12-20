<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<style>

.our-service-sass {
    background: url(https://1.bp.blogspot.com/-iQC_lzn3m5M/Xcqk5qZe_MI/AAAAAAAAUA8/7MjE-2EJ18glxu5GZL8RpDOCojh9l9ZagCLcBGAsYHQ/s1600/region_map.png) no-repeat center bottom;
    background-size: 100%;
    background-position: center;
    position: relative;
    padding: 15px 0 115px;
    background-color: #f9f9f9;
}

.theme-title-one .icon-box .icon {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50% ,-50%);
}

.our-service-sass .service-block .title a {
    font-size: 22px;
    line-height: 32px;
    color: #253d5f;
    margin-bottom: 30px;
}

.theme-title-one .icon-box {
    display: inline-block;
    margin-bottom: 25px;
    position: relative;
}



[class^="flaticon-"]:before, [class*=" flaticon-"]:before, [class^="flaticon-"]:after, [class*=" flaticon-"]:after {
    font-family: Flaticon;
    font-size: inherit;
    font-style: normal;
    color: inherit;
}

.icon-img
{
  float: left;
    width: 100px;
    height: 200px;
    position: absolute;
    top: 50px;
    text-align: center;
}

/************************/

.our-service-sass .inner-wrapper:after{content:url(../images/shape/shape-14.svg);position:absolute;bottom:-165px;right:-165px;z-index:-1}

.our-service-sass .service-block{background:#fff;border:1px solid #eff7ff;border-radius:5px;overflow:hidden;position:relative;z-index:5;padding:180px 30px 25px 40px;
      -webkit-box-shadow: 0px 2px 10px 0px rgba(12, 0, 46, 0.06);
    box-shadow: 0px 2px 10px 0px rgba(12, 0, 46, 0.06);
    border: 1px solid #e6e4e4;
  margin-top:45px}

.our-service-sass .service-block:before{content:'';width:273px;height:273px;    background: #00A86B;border-radius:50%;position:absolute;top:-148px;left:-83px;transform:scale(0)}

.our-service-sass .service-block:hover:before{transform:scale(1);transition:all .5s linear;transition-delay:.1s}

.our-service-sass .service-block:hover{border-color:transparent}.our-service-sass .service-block .icon-s{position:absolute;font-size:65px;left:40px;top:52px}

.our-service-sass .single-block:nth-child(1) .service-block .icon-s{color:#6df7bc}

.our-service-sass .single-block:nth-child(2) .service-block .icon-s{color:#25e5eb}

.our-service-sass .single-block:nth-child(3) .service-block .icon-s{color:#ff4ca5}

.our-service-sass .service-block .title a{font-size:22px;line-height:32px;color:#253d5f;margin-bottom:30px}

.our-service-sass .service-block p{color:#737f92;padding-bottom:20px}

.our-service-sass .service-block .detail-button{font-size:40px;color:#cad5e5}

.our-service-sass .service-block .hover-content{position:absolute;top:0;left:0;right:0;bottom:0;    background: #006A4E;z-index:-3;opacity:0;transition:all .3s linear}

.our-service-sass .service-block:hover .hover-content{opacity:1}

.our-service-sass .service-block .hover-content:before{content:'';width:493px;height:493px;background: #119462;border-radius:50%;position:absolute;top:-250px;left:-180px;z-index:1;transform:translate(-50% ,-50%);opacity:0}

.our-service-sass .service-block:hover .hover-content:before{opacity:1;transform:translate(0 ,0);transition:all .9s linear}

.our-service-sass .service-block .hover-content:after{content:'';width:602px;height:602px;    background: #007F5C;border-radius:50%;position:absolute;top:-196px;left:-180px;z-index:-1;transform:translate(-50% ,-50%);opacity:0}

.our-service-sass .service-block:hover .hover-content:after{opacity:1;transform:translate(0 ,0);transition:all 1.3s linear}

.our-service-sass .service-block .snow-dot{position:absolute;width:15px;height:15px;border-radius:50%;
  clip-path: polygon(50% 0%, 61% 35%, 98% 35%, 68% 57%, 79% 91%, 50% 70%, 21% 91%, 32% 57%, 2% 35%, 39% 35%);
  background:rgba(255,255,255,.5);z-index:-1

}



@-webkit-keyframes rotate-center {
  0% {
    -webkit-transform: rotate(0);
            transform: rotate(0);
  }
  100% {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}
@keyframes rotate-center {
  0% {
    -webkit-transform: rotate(0);
            transform: rotate(0);
  }
  100% {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}


.our-service-sass .service-block .snow-dot:nth-child(1){top:25px;left:41%;z-index:1;animation:scale-upOne 1s alternate infinite ease-in}

.our-service-sass .service-block .snow-dot:nth-child(2){top:25px;left:78%;animation:scale-upOne 1.1s alternate infinite ease-in}

.our-service-sass .service-block .snow-dot:nth-child(3){top:75px;left:61%;animation:scale-upOne .8s alternate infinite ease-in}

.our-service-sass .service-block .snow-dot:nth-child(4){top:136px;left:84%;animation:scale-upOne 1s alternate infinite ease-in}

.our-service-sass .service-block .snow-dot:nth-child(5){bottom:35px;right:12%;animation:scale-upOne 1.2s alternate infinite ease-in}

.our-service-sass .service-block .snow-dot:nth-child(6){bottom:80px;right:31%;animation:scale-upOne .9s alternate infinite ease-in}

.our-service-sass .service-block .snow-dot:nth-child(7){bottom:40px;right:51%;animation:scale-upOne 1s alternate infinite ease-in}

.our-service-sass .service-block:hover .detail-button,.our-service-sass .service-block:hover .icon-s,.our-service-sass .service-block:hover .title a,.our-service-sass .service-block:hover p{color:#fff!important}

.theme-more-feature.our-service-sass .inner-wrapper:after,.theme-more-feature.our-service-sass .inner-wrapper:before,.theme-more-feature.our-service-sass:after,.theme-more-feature.our-service-sass:before{display:none}

.our-service-sass.theme-more-feature{background:0 0;padding:165px 0 180px}

.our-service-app{position:relative;padding:260px 0 200px;border-bottom:1px solid #ededed}

.our-service-app .main-content{max-width:1450px;padding:0 15px;margin:90px auto 0}

.our-service-app .main-content .inner-wrapper{text-align:center;position:relative;margin-top:50px}

.our-service-app .main-content .inner-wrapper .title a{font-size:24px;color:#4e4e4e;margin:45px 0 30px}

.our-service-app .main-content .inner-wrapper:hover .title a{color:#614ef9}

.our-service-app .main-content .inner-wrapper p{line-height:30px;padding:0 50px;color:#8c929d}

.our-service-app .main-content .inner-wrapper .illustration-box{display:inline-block;position:relative;min-height:230px}

.our-service-app .main-content .single-block:nth-child(1) .illustration-box .bg-shape,.our-service-app .main-content .single-block:nth-child(3) .illustration-box .bg-shape{animation:rotated 35s infinite linear}

.our-service-app .main-content .single-block:nth-child(1) .illustration-box .block-shape-one{position:absolute;top:42px;left:-16px}

.our-service-app .main-content .single-block:nth-child(1) .illustration-box .block-shape-two{position:absolute;top:42px;right:0}

.our-service-app .main-content .single-block:nth-child(1) .illustration-box .block-shape-three{position:absolute;bottom:24px;right:0}.our-service-app .main-content .single-block:nth-child(1) .illustration-box [class*=block-shape]{transform:scale(1.5)}

.our-service-app .main-content .single-block .illustration-box [class*=block-shape]{opacity:0;transition:all 1.5s ease-in-out}.our-service-app .main-content .single-block:nth-child(2) .illustration-box .block-shape-one{position:absolute;top:120px;left:26px;transform:scale(1.5)}

.our-service-app .main-content .single-block:nth-child(2) .illustration-box .block-shape-two{position:absolute;top:0;left:120px;transform:scale(1.5)}

.our-service-app .main-content .single-block:nth-child(2) .illustration-box .block-shape-three{position:absolute;top:66px;right:6px;transform:scale(1.5)}

.our-service-app .main-content .single-block:nth-child(2) .illustration-box .block-shape-four{position:absolute;top:52px;right:63px;transform:translateY(30px)}

.our-service-app .main-content.show-pr .single-block:nth-child(2) .illustration-box [class*=block-shape]{opacity:1;transform:scale(1)}

.our-service-app .main-content.show-pr .single-block:nth-child(2) .illustration-box .block-shape-four{transform:translateY(0)}.our-service-app .main-content .single-block:nth-child(3) .illustration-box .block-shape-one{position:absolute;top:7px;left:45px;transform:scale(1.5)}

.our-service-app .main-content.show-pr .single-block:nth-child(1) .illustration-box [class*=block-shape],.our-service-app .main-content.show-pr .single-block:nth-child(2) .illustration-box [class*=block-shape],.our-service-app .main-content.show-pr .single-block:nth-child(3) .illustration-box [class*=block-shape]{opacity:1;transform:scale(1)}


.our-service-app .main-content .single-block:nth-child(2) .illustration-box:after,.our-service-app .main-content .single-block:nth-child(2) .illustration-box:before{content:'';position:absolute;width:145px;height:1px;border-top:1px dashed #e6e6e6;top:45%}

.our-service-app .main-content .single-block:nth-child(2) .illustration-box:before{right:-150px}

.our-service-app .main-content .single-block:nth-child(2) .illustration-box:after{left:-150px}

.our-service-app .main-content .more-button{display:block;width:230px;line-height:51px;border-radius:30px;background:#614ef9;border:2px solid #614ef9;font-size:14px;color:#fff;text-transform:uppercase;margin:100px auto 0;text-align:center}

.our-service-app .main-content .more-button:hover{background:#fff;color:#614ef9}

.our-service-app .main-content .down-arrow{display:block;width:60px;height:60px;box-shadow:0 15px 20px 0 rgba(209,218,235,.35);background:#fff;border-radius:50%;margin:0 0 0 -30px;line-height:60px;text-align:center;color:#7494b5;font-size:20px;position:absolute;bottom:-30px;left:50%;z-index:1}

.our-service-app .main-content .down-arrow span{display:block;transform:rotate(-90deg)}

.our-service-app .main-content .down-arrow:hover{color:#fff;background:#614ef9}

/****************animation*************/


@-webkit-keyframes rotate-center {
  0% {
    -webkit-transform: rotate(0);
            transform: rotate(0);
  }
  100% {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}
@keyframes rotate-center {
  0% {
    -webkit-transform: rotate(0);
            transform: rotate(0);
  }
  100% {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}


.bg-shape{
  -webkit-animation: rotate-center 5s linear infinite both;
	        animation: rotate-center 5s linear infinite both;
  cursor:pointer;
}


@-webkit-keyframes scale-upOne{
  0%{-webkit-transform:scale(1);transform:scale(1)}
  100%{-webkit-transform:scale(.2);transform:scale(.2)}}

@keyframes scale-upOne{
  0%
  {-webkit-transform:scale(1);transform:scale(1)}
  100%
  {-webkit-transform:scale(.2);transform:scale(.2)}
}


</style>
    
<body>
	<jsp:include page ="../common/menubar.jsp"/> 


<div class="our-service-sass hide-pr show-pr">
				<div class="container">
					<div class="theme-title-one text-center" align="center">
						<div class="icon-box hide-pr">
							<img src="http://html.creativegigs.net/rogan/rogan-c/html/images/shape/bg-shape1.svg" alt="" class="bg-shape">
							<img src="http://html.creativegigs.net/rogan/rogan-c/html/images/icon/icon23.svg" alt="" class="icon">
						</div>
						<h2 class="main-title">Provide awesome customer service <br> with our tools.</h2>
					</div> <!-- /.theme-title-one -->
					
					<div class="inner-wrapper" align="center">
						<div class="row">
							<div class="col-lg-4 single-block aos-init aos-animate" data-aos="fade-up" style = "width : 400px; hegiht: 600px; display : inline-block; padding : 20px;">
								<div class="service-block">
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<div class="hover-content"></div>
									<i class="flaticon-web icon-s"></i>
									<h5 class="title"><a href="#">User Friendly dashboard &amp; Cool Interface.</a></h5>
									<p>Lorem ipsum dolor si amet, an dusino situ  sint pertinacia constituto, mir es dignsius quo great.</p>
									<a href="#" class="detail-button"><i class="icon-img"><img src="resources/images/1.png" style="width : 150px; height : 150px;"></i></a>
								</div> <!-- /.service-block -->
							</div> <!-- /.single-block -->
							<div class="col-lg-4 single-block aos-init aos-animate" data-aos="fade-up" data-aos-delay="300" style = "width : 400px; hegiht: 600px; display : inline-block; padding : 20px;">
								<div class="service-block">
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<div class="hover-content"></div>
									<i class="flaticon-value icon-s"></i>
									<h5 class="title"><a href="#">Thousand of features and Custom option.</a></h5>
									<p>Lorem ipsum dolor si amet, an dusino situ  sint pertinacia constituto, mir es dignsius quo great.</p>
									<a href="#" class="detail-button"><i class="icon-img"><img src="resources/images/2.png" style="width : 150px; height : 150px;"></i></a>
								</div> <!-- /.service-block -->
							</div> <!-- /.single-block -->
							<div class="col-lg-4 single-block aos-init aos-animate" data-aos="fade-up" data-aos-delay="500" style = "width : 400px; hegiht: 600px; display : inline-block; padding : 20px;">
								<div class="service-block">
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<span class="snow-dot"></span>
									<div class="hover-content"></div>
									<i class="flaticon-login icon-s"></i>
									<h5 class="title"><a href="#">Strong Managment &amp; Security.</a></h5>
									<p>Lorem ipsum dolor si amet, an dusino situ  sint pertinacia constituto, mir es dignsius quo great.</p>
									<a href="#" class="detail-button"><i class="icon-img">
                    <img src="resources/images/3.png" style="width : 150px; height : 150px;">
                    </i></a>
								</div> <!-- /.service-block -->
							</div> <!-- /.single-block -->
						</div> <!-- /.row -->
					</div> <!-- /.inner-wrapper -->
				</div> <!-- /.container -->
			</div>


<script>
import animate from "https://cdn.jsdelivr.net/npm/animateplus@2/animateplus.js";

animate({
  elements: ".service-block",
  duration: 2000,
  delay: index => index * 100,
  transform: ["scale(0)", "scale(1)"]
})



</script>
	
	
	
</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>

</html>
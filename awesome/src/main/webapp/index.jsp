<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--  maven settings 파일, maven 경로, 톰캣, buildpath 경로 잡아주기 -->


<link ref="shortcut icon" type="image/x-icon" href="resources/images/sitelogo.png"/>
<style>
	*{
		box-sizing : board-box;
	}
	.video-film{
		box-shadow : rgba(0,7,15,0.7) 0 0 0 9999px;
		z-index : 100;
	}
	.video-background{
		bakcground : #000;
		position : fixed;
		top : 0;
		right : 0;
		bottom : 0;
		left : 0;
		z-index : -99;
	}
	.video-foreground, .video-background iframe{
		position : absolute;
		top : 0;
		left : 0;
		width : 100%;
		height : 100%;
		pointer-events : none;
	}
	@media(min-aspect-ratio : 16/9){
		.video-foreground{
			height : 300%;
			top : -100%;
		}
	}
	
	@media ( max-aspect-ratio : 16/9) {
      .video-foreground {
         width: 300%;
         left: -100%;
      }
   }
   
   h1 {
      color: white;
   }
   
   #visual-btn {
      z-index: 50;
      color: #fff;
      font-size: 20px;
      border: 2px solid #fff;
      padding: 12px 24px;
      border-radius: 5px;
      cursor: pointer;
      background-color: rgba(0, 0, 0, 0);
   }
   
   #visual-btn:hover {
      color: #ff6868;
      font-size: 20px;
      border: 2px solid #ff6868;
      padding: 12px 24px;
      border-radius: 5px;
      cursor: pointer;
   }
   
   #indexBtn {
      position: fixed;
      text-align: center
   }
   
   .center {
      position: absolute;
      top: 60%;
      left: 47%;
      margin: -50px 0 0 -50px;
   }
   	
</style>

</head>
<body>
	<h1 style ="text-align : center; color :#fff">
		<img src="resources/images/sitelogo.png" style="height:50%; width : 50%"/>
	</h1>
	<p class = "type_text" style ="text-align:center; color :#d5d4f7; font-size:18px"></p>
	
	<div id ="indexBtn" class="center">
		<button id ="visual-btn" onclick="location.href='home.do'">Visit Our Site</button>
	</div>	
</body>
</html>
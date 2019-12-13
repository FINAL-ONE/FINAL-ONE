<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Gaegu&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lilita+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="//code.jquery.com/jquery-latest.min.js"></script>
<script src="jquery.progress.js"></script>
</head>
<style>
.centerDiv {
	width: 880px;
	margin-left: auto;
	margin-right: auto;
	height: auto;
	padding-left: 40px;
}

#tb {
	border: none;
	border-top: 1px solid black;
}

.centerDiv #tr td {
	text-align: center;
	font-weight: 600;
	height: 50px;
	font-size: 18px;
	border-top: none;
	border-left: 0 none;
	/*     border-right: 1px solid #d0d0d0; */
	border-bottom: 1px solid #d0d0d0;
}

#tb tr td {
	height: 50px;
	border-bottom: 1px solid #d0d0d0;
	font-size: 18px;
	text-align: left;
}

.text {
	width: 150px;
	height: 40px;
}

#a {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	display: block;
	max-width: 120px;
	text-decoration: none;
	border-radius: 4px;
	padding: 10px 20px;
	text-align: center;
}

#a.button {
	color: gray;
	width: 200px;
	box-shadow: gray 0 0px 0px 2px inset;
}

#a.button:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: #fa4a4a 0 80px 0px 2px inset;
}

.progressbar-container {
  width: 500px;
  padding: 1rem;
  border-radius: 5px;
  background-color: #fff;
}

.progress-value {
  display: -webkit-box;
  display: -moz-box;
  display: -ms-flexbox;
  display: -webkit-flex;
  display: flex;
  -webkit-box-pack: justify;
  -moz-box-pack: justify;
  -ms-flex-pack: justify;
  -webkit-justify-content: space-between;
  justify-content: space-between;
  font-size: .875rem;
  padding-bottom: .25rem;
}

progress {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  display: block;
  width: 100%;
  border-radius: 8px;
  margin-bottom: 0.75rem;
  color: #273238;
}

progress::-webkit-progress-bar {
  background-color: #eee;
  border-radius: 8px;
}

progress::-webkit-progress-value {
  background-color: #273238;
  border-radius: 8px;
}

progress::-moz-progress-bar {
  background-color: #eee;
  border-radius: 8px;
}

#myBar {
  width: 0%;
  height: 30px;
  background-color: lightcoral;
  text-align: center; /* To center it horizontally (if you want) */
  line-height: 30px; /* To center it vertically */
  color: white;
  border-radius: 6px;
}

.progress-meter {
	min-height: 15px;
	border-bottom: 2px solid rgb(160, 160, 160);
}

.progress-meter > .meter {
	position: relative;
	float: left;
	min-height: 15px;
	border-width: 0px;
	border-style: solid;
	border-color: rgb(160, 160, 160);
}


/* .progress-meter > .meter-right {
	float: right;
	border-right-width: 2px;
}

.progress-meter > .meter-right:last-child {
	border-left-width: 2px;
} */

.progress-meter > .meter > .meter-text {
	position: absolute;
	display: inline-block;
	bottom: -20px;
	width: 100%;
	font-weight: 700;
	font-size: 0.85em;
	color: rgb(160, 160, 160);
	text-align: left;
}

.progress-meter > .meter.meter-right > .meter-text {
	text-align: right;
}


.progress-meter2 {
/* 	min-height: px; */
/* 	border-bottom: 2px solid rgb(160, 160, 160); */
}

.progress-meter2 > .meter {
	position: relative;
	float: left;
	min-height: 15px;
	border-width: 0px;
	border-style: solid;
	border-color: rgb(160, 160, 160);
}


/* .progress-meter > .meter-right {
	float: right;
	border-right-width: 2px;
}

.progress-meter > .meter-right:last-child {
	border-left-width: 2px;
} */

.progress-meter2 > .meter > .meter-text {
	position: absolute;
	display: inline-block;
	bottom: 57px;
	width: 100%;
/* 	font-weight: 700; */
	font-size: 20px;
	color: white;
	font-family: 'Lilita One', cursive;
	text-align: left;
}

.progress-meter2 > .meter.meter-right > .meter-text {
	text-align: right;
}


#cmt{
	font-size:80px;
	font-family: 'Gaegu', cursive;
	
}

#bmi{
	font-size:40px;
	font-weight: 18px;
/* 	font-family: 'Rubik', sans-serif; */
}

#result{
	font-size:30px;
	font-weight: 15px;
}

#nahyezzang{
	font-size : 30px;
	font-family: 'Jua', sans-serif;
}

</style>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<div class="centerDiv">
		<br>
		<h1>BMI지수 (비만도) 계산</h1>

		<br>
		<div id="good">
			<table class="table" id="tb">
				<tr>
					<td class="title" style="width: 50%">성별</td>
					<td class="content" style="width: 50%"><input type="radio"
						id="gender" name="gender" value="F">
						여자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
						type="radio" id="gender2" name="gender" value="M">남자</td>
				</tr>
				<tr>
					<td class="title" style="width: 50%">나이</td>
					<td class="content" style="width: 50%"><input type="text"
						id="age" name="age" value="" class="text">&nbsp;세
					<td>
				</tr>
				<tr>
					<td class="title" style="width: 50%">키</td>
					<td class="content" style="width: 50%"><input id="cm"
						name="cm" value="" class="text">&nbsp;cm</td>
				</tr>
				<tr>
					<td class="title" style="width: 50%">몸무게</td>
					<td class="content" style="width: 50%"><input id="kg"
						name="kg" value="" class="text">&nbsp;kg</td>
				</tr>
			</table>
		</div>

		<br><br><br>

		<div align="center">
			<a id="a" onclick="bmicheck()" class="button">결과 확인</a>
		</div>
	<br>

	
		<div id="myProgress"  style="display:none">
		<!-- -->
<!-- 		<h1 class="text-center">당신의 비만도는?</h2> -->
		
		<div id="nahyezzang">당신의 bmi지수는 <span id="bmi"></span>% 입니다</div><br><br>
<!-- 				 <span id="result"></span><br><br> -->
		  <div id="myBar"></div>

			<div class="progress-meter">
				<div class="meter meter-right" style="width: 0%;"><span class="meter-text"></span></div>
				<div class="meter meter-right" style="width: 26.4%;"><span class="meter-text">저체중</span></div>
				<div class="meter meter-right" style="width: 26.4%;"><span class="meter-text"></span></div>
				<div class="meter meter-right" style="width: 6.45%;"><span class="meter-text">정상</span></div>
				<div class="meter meter-right" style="width: 5%;"><span class="meter-text"></span></div>
				<div class="meter meter-right" style="width: 4.65%;"><span class="meter-text">과체중</span></div>
				<div class="meter meter-right" style="width: 2.8%;"><span class="meter-text"></span></div>
				<div class="meter meter-right" style="width: 7.15%;"><span class="meter-text">비만</span></div>
				<div class="meter meter-right" style="width: 7.15%;"><span class="meter-text"></span></div>
				<div class="meter meter-right" style="width: 7.15%;"><span class="meter-text">고도비만</span></div>
				<div class="meter meter-right" style="width: 7.15%;"><span class="meter-text"></span></div>
			</div>
			<br>
			<div class="progress-meter2">
				<div class="meter meter-right" style="width: 0%;"><span class="meter-text">&nbsp;0</span></div>
				<div class="meter meter-right" style="width: 52.8%;"><span class="meter-text">18.5</span></div>
				<div class="meter meter-right" style="width: 12.9%;"><span class="meter-text">23</span></div>
				<div class="meter meter-right" style="width: 5.7%;"><span class="meter-text">25</span></div>
				<div class="meter meter-right" style="width: 14.3%;"><span class="meter-text">30</span></div>
				<div class="meter meter-right" style="width: 14.3%;"><span class="meter-text"></span></div>
			</div>
<br><br>
		</div>
		<div align="center">
 
		  <img src="" name="edit-save" id="img"/><br>
		  <span id="cmt"></span>
		  </div>
		  
</div>
<br><br><br>

</body>
<script>
	function bmicheck() {
	

		var chk="";
		if( $("#gender").is(":checked") || $("#gender2").is(":checked")){
			var chk = "T";
		}
		
		if(chk=="T"){
			if(chk) $(".gender").prop('checked', true);
			else  $(".gender").prop('checked', false);
		}
		

		var gender = chk;
		
		if(chk==false){
			alert("성별을 선택하세요");
	
		}else{
			var age = $('#age').val();
			
		 	if(age=="" || age==null){
		 		
				alert("나이를 입력하세요");
				
			} else{
				var cm = $('#cm').val()*0.01;
				
				if(cm=="" || cm==null){
					alert("키를 입력하세요");
				}else{
					var kg = $('#kg').val();
					if(kg=="" || kg==null){
						alert("몸무게를 입력하세요");
						
					}else{
						$("#myProgress").show();
						var bmi = kg/cm/cm;
						var status="";
						var per=bmi/35*100;
				 		var comment ="";
								if(bmi<18.5){
									status = "저체중";		
									comment = "말라 비틀어졌군요"
									document.getElementById("img").src="resources/images/squid.jpg";
									document.getElementById("cmt").innerHTML=comment;
								} 
								if(bmi>=18.5 && bmi<23){	
									status="정상";
									comment="건강한 체형입니다.";
									document.getElementById("img").src="resources/images/lion.png";
									document.getElementById("cmt").innerHTML=comment;
								}
								if(bmi>=23 && bmi<25){
									status="과체중"
									//per=60;
									comment="건강한 뚱땡이네염";
									document.getElementById("img").src="resources/images/cat.PNG";
									document.getElementById("cmt").innerHTML=comment;
								}
								if(bmi>=25 && bmi<30){
									status="비만";
									//per=80;
									comment="돼지뚱띠~ 운동하세염!";
									document.getElementById("img").src="resources/images/fat.jpg";
									document.getElementById("cmt").innerHTML=comment;
								}
								if(bmi>=30){
									status="고도비만";
									//per=100;
									comment="꿀꿀꿀꿀 꿀꿀 꿀꿀꿀";
									document.getElementById("img").src="resources/images/pig.PNG";
									document.getElementById("cmt").innerHTML=comment;
								}
						var i = 0;

						  if (i == 0) {
						    i = 1;
						    var elem = document.getElementById("myBar");
						    var width = 10;
						    var id = setInterval(frame, 10);
						    
						    function frame() {
						      if (width >= per) {
						        clearInterval(id);
						        i = 0;
						      } else {
						        width++;
						        if(width>=100){
						        elem.style.width = 100 + "%";
						        	
						        }else{
						        	elem.style.width = width + "%";	
						        }
						        //elem.innerHTML = bmi	 + "%";
						      }
						    
						  }
						}
						  
						  //document.getElementById("img").src="resources/images/pig.PNG";
						  //document.getElementById("bmi").innerHTML=Math.floor(bmi);
						  document.getElementById("bmi").innerHTML=bmi.toFixed(1);
						  document.getElementById("result").innerHTML=status;
					}
					
			}
		}
	}

	
	
		

				
	

	}
	

</script>
<footer>
	<jsp:include page ="../common/footer.jsp"/>
</footer>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<style>

.button{
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);

	max-width: 32px;

	border-radius: 4px;
	padding: 6px;

	text-align: center;
	color: gray;
	box-shadow: gray 0 0px 0px 2px inset;
}

a{

font-family: none !important;
font-size: 16px !important;


}


/* .button:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: #fa4a4a 0 80px 0px 2px inset;
	cursor: pointer;
} */

#goLogin{
	display: inline-block;
	margin-right: 100px;
}
#goHome{
	display: inline-block;

} 


#a{
	position: center;
}

#goLogin:hover{
	cursor: pointer;

}
#goHome:hover{
	cursor: pointer;
	
}

h1{
font-size:35px;
font-family: 'Nanum Gothic', sans-serif;
}


</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<br>
	<div align="center">
	<img src="resources/images/family.png" style="height:250px; width:250px; ">
	</div>
	<br>
	<h1 align="center">저희  AweSome의 회원이 되신걸 환영합니다.</h1>
	<br>
	
	
	<div id="a" align="center">
	<div id="goLogin"  onclick="location.href='loginView.do'"	>
	<img id="loginImg" src="resources/images/jogging.png" style="height:110px; width:110px; ">
	<br>
	<a class="button" id="login">로그인하러 가기</a>
	</div>
	
	<div id="goHome" onclick="location.href='home.do'">
	<img id="mainImg" src="resources/images/house.png" style="height:110px; width:110px; ">
	<br>
	<a  class="button" id="home">메인으로 가기</a>
	</div>
	</div>
	<br>
	


<br><br>
</body>

<footer>
		<jsp:include page ="../common/footer.jsp"/>
	</footer>

<script>
$("#goLogin").mouseover(function(){
	
	$("#login").css({"color": "rgba(255, 255, 255, 0.85)","box-shadow" : "#fa4a4a 0 80px 0px 2px inset"});

}).mouseout(function(){
	$("#login").css({"color": "gray","box-shadow" : "gray 0 0px 0px 2px inset"});
	
});

$("#goHome").mouseover(function(){
	
	$("#home").css({"color": "rgba(255, 255, 255, 0.85)","box-shadow" : "#fa4a4a 0 80px 0px 2px inset"});

}).mouseout(function(){
	$("#home").css({"color": "gray","box-shadow" : "gray 0 0px 0px 2px inset"});
	
})


</script>


<!-- 
  $(".normalTr td").mouseenter(function(){
       $(this).parent().children().css({"background":"#FFF7D5","cursor":"pointer"}).click(function(){
   	     	var bId = $(this).parent().children().find('input').val(); // 게시글의  글번호 
   	      	$("#bId").val(bId);
          	$("#formTag").submit(); 
       });
  
    }).mouseout(function(){
       $(this).parent().children().css({"background":"white"});
    })
 -->



</html>
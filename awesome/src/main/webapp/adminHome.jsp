<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
         
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- 드래그앤드랍 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  
  
<!--   switch버튼 css -->
 <link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="js/switch-master/css/style.css">


<!-- 관리자 사이드 메뉴 아이콘  -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

body {
  font-family: "Lato", sans-serif;
}
#main {
  transition: margin-left .5s;
  padding: 16px;
}
#afterWriteDiv{
  transition: margin-left .5s;
  padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}


#draggable1 { 
	width: 360px; 
 	resize: both;  
 	overflow: auto; 
 	margin : 80px 20px 0px 600px;
	display : inline-block;
	position: absolute;
	cursor : pointer;
}
#draggable2 { 
	width: 350px; 
 	resize: both;  
 	overflow: auto; 
 	margin: 80px 20px 0px 1000px;
	display : inline-block;
	position: absolute;
	cursor : pointer;
}
#draggable3 { 
	width: 350px; 
 	resize: both;  
 	overflow: auto; 
 	margin: 400px 20px 0px 600px;
	display : inline-block;
	position: absolute;
	cursor : pointer;
}
#draggable4 { 
	width: 350px; 
 	resize: both;  
 	overflow: auto; 
 	margin: 400px 20px 0px 1000px;
	display : inline-block;
	position: absolute;
	cursor : pointer;	
}


.switch{
	cursor : pointer;	
}
</style>
</head>
<body>
<%-- <jsp:include page ="../common/menubar.jsp"/>
<jsp:include page ="../admin/adminMenu.jsp"/> --%>
	<div id="container" style="overflow: auto; height: auto;" ><!-- container -->


   	  <div id="draggable1" class="ui-widget-content">
	 	<div style="width : 100%; height : 50px; background : red; position: relative; overflow-x : none;">
			<label class="switch" style="margin-left: 10px; margin-top : 5px">
			  <input id ="myCheck1" type="checkbox" onclick="myFunction1()" checked >
			  <span></span>
			</label>
	 	</div>
	 	
	 	<div id="dragArea1" style="width : 100%; height : 200px; background : gray; position: relative;">
			<p id="text" style="display:none">Checkbox is CHECKED!</p>
		</div>
	 </div>
 	  <div id="draggable2" class="ui-widget-content">
	 	<div style="width : 100%; height : 50px; background : red; position: relative;">
			<label class="switch" style="margin-left: 10px; margin-top : 5px">
			  <input id ="myCheck2" type="checkbox" onclick="myFunction2()" checked >
			  <span></span>
			</label>
	 	</div>
	 	
	 	<div id="dragArea2" style="width : 100%; height : 200px; background : gray; position: relative;">
			<p id="text" style="display:none">Checkbox is CHECKED!</p>
		</div>
	 </div>
	 		
 	  <div id="draggable3" class="ui-widget-content">
	 	<div style="width : 100%; height : 50px; background : red; position: relative;">
			<label class="switch" style="margin-left: 10px; margin-top : 5px">
			  <input id ="myCheck3" type="checkbox" onclick="myFunction3()" checked >
			  <span></span>
			</label>
	 	</div>
	 	
	 	<div id="dragArea3" style="width : 100%; height : 200px; background : gray; position: relative;">
			<p id="text" style="display:none">Checkbox is CHECKED!</p>
		</div>
	 </div>
	 
	  <div id="draggable4" class="ui-widget-content">
	 	<div style="width : 100%; height : 50px; background : red; position: relative;">
			<label class="switch" style="margin-left: 10px; margin-top : 5px">
			  <input id ="myCheck4" type="checkbox" onclick="myFunction4()" checked >
			  <span></span>
			</label>
	 	</div>
	 	
	 	<div id="dragArea4" style="width : 100%; height : 200px; background : gray; position: relative;">
			<p id="text" style="display:none">Checkbox is CHECKED!</p>
		</div>
	 </div>
			
	
	</div>			
	<!-- container
		
 		switch script
	 -->
	  	<script>
		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		
		  ga('create', 'UA-46156385-1', 'cssscript.com');
		  ga('send', 'pageview');
		</script>

	<!-- 드래그앤드롭 js --> 
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		  <script>
		  $( function() {
		    $("#draggable1").draggable();
		    $("#draggable2").draggable();
		    $("#draggable3").draggable();
		    $("#draggable4").draggable();
		  } );
		  </script> 
		  
		  
		<script>
		function myFunction1() {
			  var checkBox1 = document.getElementById("myCheck1");
			  var dragArea1 = document.getElementById("dragArea1");
			  
			  if (checkBox1.checked == true){
				  alert('열림');
				  dragArea1.style.height = "200px";
			  } else if(checkBox1.checked == false){
				  alert('닫힘');
				  dragArea1.style.height = "0px";
			  } 
			}
		</script>
	
		<script>
		function myFunction2() {
			  var checkBox2 = document.getElementById("myCheck2");
			  var dragArea2 = document.getElementById("dragArea2");
			  
			  if (checkBox2.checked == true){
				  alert('열림');
				  dragArea2.style.height = "200px";
			  } else if(checkBox2.checked == false){
				  alert('닫힘');
				  dragArea2.style.height = "0px";
			  } 
			}
		
		</script>
	
	
		<script>
		function myFunction3() {
			  var checkBox3 = document.getElementById("myCheck3");
			  var dragArea3 = document.getElementById("dragArea3");
			  
			  if (checkBox3.checked == true){
				  alert('열림');
				  dragArea3.style.height = "200px";
			  } else if(checkBox3.checked == false){
				  alert('닫힘');
				  dragArea3.style.height = "0px";
			  } 
			}
		</script>
		
	
		<script>
		function myFunction4() {
			  var checkBox4 = document.getElementById("myCheck4");
			  var dragArea4 = document.getElementById("dragArea4");
			  
			  if (checkBox4.checked == true){
				  alert('열림');
				  dragArea4.style.height = "200px";
			  } else if(checkBox4.checked == false){
				  alert('닫힘');
				  dragArea4.style.height = "0px";
			  } 
			}
		</script>
	
		
		
</body>

<%-- <footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer> --%>

</html>
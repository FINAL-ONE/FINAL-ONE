<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
      <title>jQuery Multidraggable Plugin Demo</title>
        <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="js/Drag-Drop/demo/styles.css" media="screen" title="no title" charset="utf-8">
        <script src="http://code.jquery.com/jquery-3.1.0.min.js"></script>
        <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
        <script src="js/Drag-Drop/demo/multidraggable.js" charset="utf-8"></script>
        
    
    
<style>
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 0;
  position: absolute;
  z-index: 1;
  top: 40;
  left: 0;
  background-color: #fa4a4a;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
  box-shadow: 4px 4px 4px lightgray;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color : white;
  display: block;
  transition: 0.3s;
  font-size: 18px;
}

.sidenav a:hover {
  color: black;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
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

/* content */
.contentDiv{
	width : 600px;
	height : 300px;
	display: inline-block;
	margin-left : 120px;
	margin-bottom: 30px;
	margin-top : 30px;
	text-align: center;
	color : white;
}

#contentDiv1{
	background : green;
}
#contentDiv2{
	background : green;
}
#contentDiv3{
	color : white;
	border : 1px solid gray;
	cursor: pointer;
	background : green;
}
#contentDiv4{
	background : green;
}



</style>
</head>
<body>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">상품등록</a>
  <a href="#">상품조회</a>
  <a href="#">회원조회</a>
  <a href="#">후기게시판 조회</a>
</div>
  <ul id="multidraggable">
            <li class="red">Red</li>
            <li class="blue">Blue</li>
            <li class="orange">Orange</li>
            <li class="black">black</li>
        </ul>
        <script type="text/javascript">
            $('#multidraggable').multidraggable();
        </script>
    </body>

 <div id="main">
	  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; 관리자 메뉴 보기</span>
	  <br>
  		
  		
	  <div class = "contentDiv" id = "contentDiv1">
	  	주문 현황 미리보기
	  </div>
	  
	  <div class = "contentDiv"  id = "contentDiv2">
	  	인기 상품 랭킹 미리보기
	  </div>
	  
	  <div class = "contentDiv" id = "contentDiv3" onclick= "location.href='memberLookup.do'">
	  	<!-- 최근 회원 가입 회원 테이블 5명 미리보기 ajax 이후에 작업 한 부분 
			페이지가 열리면 바로 DB를 갔다와서 top5를 불러오고  -->
			<h1 align="center">최신 가입 회원</h1>
			<table align="center" border="1" cellspacing="0" width="600" id="tb">
				<thead>
					<tr>
						<th>회원아이디</th>
						<th>회원이름</th>
						<th>성별</th>
						<th>생년월일</th>
						<th>핸드폰번호</th>
						<th>가입일</th>
					</tr>
				</thead>
				<tbody>
					
				</tbody>
			</table>
			
			<script>
			function topList(){
				$.ajax({
					url : "topList.do",		// topList.do 작업하러 BoardController로 ㄱㄱ
					dataType : "json",
					success:function(data){
						// 가져온 한줄한줄을 tr태그로 tbody에 들어가야한다.
						// tbody부분을 변수로 받는다.
						$tableBody = $("#tb tbody");
						// 값을 비워줘야 누적 방지 
						$tableBody.html("");
						
						
						// 2번 방법과 3번 방법
						for(var i in data){
							var $tr = $("<tr>");
							var $userId = $("<td>").text(data[i].userId);
							var $userName = $("<td>").text(decodeURIComponent(data[i].userName.replace(/\+/g, " ")));
							var $gender = $("<td>").text(decodeURIComponent(data[i].gender.replace(/\+/g, " ")));
							var $birthday = $("<td>").text(data[i].birthday);
							var $phone = $("<td>").text(data[i].phone);
							var $enrollDate = $("<td>").text(data[i].enrollDate);
						
							
							$tr.append($userId);
							$tr.append($userName);
							$tr.append($gender);
							$tr.append($birthday);
							$tr.append($phone);
							$tr.append($enrollDate);
							
							$tableBody.append($tr);
							
						}
						
					},
					error:function(request, status, errorData){
						alert("error code : " + request.status + "\n"
								+ "message : " + request.responseText
								+ "error : " + errorData);
					}
				})
			}
			
			// 자동실행 되게 
			$(function(){
				topList();	// home에 로드되자마자 뿌려준다.
				
				setInterval(function(){
					topList();
				}, 5000);	// 5초마다 한번씩 갱신 되서 뿌려준다. 
			});
		
		</script>
				
			
	  </div>
	  
	  <div class = "contentDiv" id = "contentDiv4">
	  	그래프 미리보기
	  </div> 
</div>

<script>
	function openNav() {
	  document.getElementById("mySidenav").style.width = "250px";
	  document.getElementById("main").style.marginLeft = "250px";
	  document.getElementById("afterWriteDiv").style.marginLeft = "250px";
	  
	  
	}

	function closeNav() {
	  document.getElementById("mySidenav").style.width = "0";
	  document.getElementById("main").style.marginLeft= "0";
	  document.getElementById("afterWriteDiv").style.marginLeft= "0";
	  
	}
	
	


</script>
</body>
</html>
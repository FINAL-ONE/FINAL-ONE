<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Star Rating -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- 관리자 사이드 메뉴 아이콘  -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
<style>
/* 관리자용 사이드 메뉴 */
body {font-family: "Lato", sans-serif;}

.admin_sidebar {
  height: 106%;
  width: 160px;
  position: absolute;
  z-index: 1;
  top: 20;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 16px;
}

.admin_sidebar a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
}

.admin_sidebar a:hover {
  color: #f1f1f1;
}

.admin_main {
  margin-left: 160px; /* Same as the width of the sidenav */
  padding: 0px 10px;
}

@media screen and (max-height: 450px) {
  .admin_sidebar {padding-top: 15px;}
  .admin_sidebar a {font-size: 18px;}
}





/* 상품 후기  */
#afterWrite{
  border-collapse: collapse;
  border-spacing: 0;
  width: 1300px;
  border: 1px solid #ddd;
  text-align :center;
  margin-left : 250px;
}
#afterWrite th, td {
  text-align: center;
  padding: 16px;
  
}
tr:nth-child(even) {
  background-color: #f2f2f2;
}
  
#afterWriteBtn{
	float: right;
	margin-bottom: 20px;
	
}
/* 별점  */
.fa-star{
	color : dark-gray;
}
.checked {
  	color: orange;
}


#afterAvgForm{
	/* background : red; */
	width : 200px;
	height : 100px;
}



/*포인트 수정 버튼 css  */
.myBtn{
	width :80px;
	height : 30px;
	font-size : 13px;
	border-radius: 4px;
	background-color: #4CAF50;
	border: none;
	color: #FFFFFF;
	text-align: center;
	padding: 6px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 3px;
}

.myBtn span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.myBtn span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.myBtn:hover span {
  padding-right: 25px;
}

.myBtn:hover span:after {
  opacity: 1;
  right: 0;
}




</style>

</head>
<body>
	<jsp:include page ="../common/menubar.jsp"/>
	<div class="admin_sidebar">
	  <a href="#home"><i class="fa fa-fw fa-home"></i>
	  	<c:url var ="myinfo" value="home.do"/>
	  	<span onclick ="location.href='${myinfo }'">Home </span>
	  </a>
	  
	  <a href="#services"><i class="fa fa-fw fa-wrench"></i> Services</a>
	  
	  
	  <a href="#clients"><i class="fa fa-fw fa-user"></i> Clients</a>
	  
	  
	  <a href="#contact"><i class="fa fa-fw fa-envelope"></i> Contact</a>
	</div>
	
	<div id="container" style="overflow: auto; height: auto;" ><!-- container -->
			<div id ="afterWriteDiv" style= "margin-top : 20px; margin-bottom: 100px;">
				
					
					 <form id = "afterAvgForm" action="stargIdSelect.do" method="post" enctype="Multipart/form-data">
						
						<c:forEach var="aflist" items="${aflist}">
							<input id="aGid" type="hidden" name="gId">
						</c:forEach>
						<div id = "sellheaderArea" style="margin-left : 780px; width : 300px;">
							<div style="font-size : 30px; text-align : center; font-weight: bold; background : yellow; width : 200px;"> 후기리뷰 </div>					    
							<div id ="sAvgListArea" style= "width:100px;  background : red;">
						</div>
						
						<p style="margin-bottom: 3px;">상품별 후기 평점 보기</p>
						<select id="goodsList" name="goodsList" style="margin-bottom : 5px; width : 180px; height : 30px;">
								<option value="0" selected>옵션을 선택하세요</option>
								<c:forEach var="aflist" items="${aflist}">
									<option value="${aflist.gId}">${aflist.goodsTitle}</option>
								</c:forEach>
						</select>
						<br>
						
						<!-- <input id="gId-btn" type="button" value="확인"> &nbsp; -->
					    <button id="gId-btn" class="myBtn success" onclick="selectTitleList()"><span>확인</span></button>&nbsp;
						<button type="button" id="myBtn" class="myBtn success" onclick="restList()"><span>리셋</span></button>
							<c:forEach var="sAvgList" items="${sAvgList}">
							<br>
					      	 		<span style= "margin-left : 73px;"  class="fa fa-star checked"></span>
					      	 		<span style="width : 400px; height : 200px; font-size : 20px; margin-left : 5px;">${sAvgList}</span>
				      		</c:forEach>
						</div>	
						
					 </form>
			</div>
			
			<table align="center" id ="afterWrite" class= "ediTable" border="1" cellspacing="1">
				<tr bgcolor ="#fa4a4a" style = "color : white">
					<th width ="200px">후기사진</th>
					<th width ="200px">상품명</th>
					<th width ="400px">후기내용</th>
					<th width ="200px">작성자</th>
					<th width ="200px">별점</th>
					<th width ="200px">작성일</th>
					<!-- <th width = "100px">평점</th> -->
				</tr>
				<c:forEach var="aflist" items="${aflist}">
						
					<tr>
						<td><img src="resources/afteruploadFiles/${aflist.ref_filePath}" width ="150px" height ="130px"></td>
				 		<td>${aflist.goodsTitle}</td>
						<td>${aflist.rContent}</td>
						<td>
							<c:if test="${sessionScope.loginUser.userId eq 'admin' }">
								<c:out value = "${loginUser.userName }"/>
							</c:if>
						</td>
						
						<td>
							 <c:if test="${aflist.sellStart eq '1'}">
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
							</c:if>
					      	 <c:if test="${aflist.sellStart eq '2'}">
							   	   <span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
					      	 </c:if>
					    
					      	 <c:if test="${aflist.sellStart eq '3'}">
							   	    <span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
					      	 </c:if>
					      	 <c:if test="${aflist.sellStart eq '4'}">
							   	    <span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
					      	 </c:if>
					      	 <c:if test="${aflist.sellStart eq '5'}">
							   	    <span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
					      	 </c:if>
						</td>
						<td><c:out value = "${aflist.createDate }"/></td>

					    <%-- <td>
					      	 <c:forEach var="sAvgList" items="${sAvgList}">
					      	 		${sAvgList}
					      	 </c:forEach>
					    </td> --%>
					</tr>
				</c:forEach>
			</table>
		</div>

	
	<script>
		$("#goodsList").on("change",function(){
			/* var tex = $("#goodsList option:selected").text(); */
			var va = $("#goodsList option:selected").val();	
				alert(va);
		 	
			$("#aGid").val(va);
			
	});	
		</script>
	
	<script>
		function restList(){
			location.href="sellafterlistViewAdmin.do";
		}
		
	</script>
	
	<script>
		function selectTitleList(){
			if($("#gId-btn").val()==''){
				return false;
			}
				$("#afterAvgForm").submit();
		}
	
	</script>
	
	<!-- 
		<script>
			$("#gId-btn").on("click",function(){
				if($("#gId-btn").val()==''){
					alert("리스트에서 값을 선택해  주세요");
					return false;
				}
					$("#afterAvgForm").submit();
			});
	</script> -->
</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</html>
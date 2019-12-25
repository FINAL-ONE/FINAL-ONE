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

<style>

#afterWrite{
  border-collapse: collapse;
  border-spacing: 0;
  width: 1300px;
  border: 1px solid #ddd;
  
}
#afterWrite th, td {
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

	.centerDiv{
	  width:1300px;
/* 	  border:3px solid pink; */
      margin-left:auto;
      margin-right:auto;
      height: auto;
      padding-left: 60px;
	}

.adminMain-btn, .adminList-btn {
    margin: 10px 0px 15px;
    border: 1px solid #fe6666;
    background: #fe6666;
    border-radius: 2px;
    color: #fff;
    text-align: center;
    font-size: 14px;
    font-weight: 600;
    width: 259px;
    height: 40px;
    cursor: pointer;
}

.adminMain-btn:hover, .adminList-btn:hover{
	background: #fff;
	color: #fe6666;
}	

</style>

</head>
<body>
	<jsp:include page ="../common/menubar.jsp"/>

	<div class="centerDiv ">
	<div id="container" style="overflow: auto; height: auto;" ><!-- container -->
		<div id ="afterWriteDiv" style= "margin-top : 6px; margin-bottom: 70px; margin-left:auto; margin-right:auto; width: 1000px;">
			 <form id = "afterAvgForm" action="stargIdSelect.do" method="post" enctype="Multipart/form-data " style="margin-left:auto; margin-right:auto;">
				
				<c:forEach var="aflist" items="${aflist}">
					<input id="aGid" type="hidden" name="gId">
				</c:forEach>
					<div style="font-size:30px; font-weight:bold; width:230px; position:relative; left:-20px;"> 후기리뷰 리스트 </div>					    
				<br>
				<div style="margin-bottom: 15px; width:700px; position:relative; left: -60px">후기 평점을 보고싶은 상품을 선택해주세요</div>
				
				<div id = "sellheaderArea" style="width:500px;">
					<select id="goodsList" name="goodsList" style="margin-bottom : 15px; width : 180px; height : 30px;">
							<option value="0" selected>옵션을 선택하세요</option>
							<c:forEach var="aflist" items="${aflist}">
								<option value="${aflist.gId}">${aflist.goodsTitle}</option>
							</c:forEach>
					</select>
				<br>
				    <button type="button" id="gId-btn" class="myBtn success" onclick="selectTitleList()"><span>확인</span></button>
					<button type="button" id="myBtn" class="myBtn success" onclick="restList()"><span>리셋</span></button>
				</div>
						
			 </form>
			</div>
				<br>			
			<table align="center" id ="afterWrite" class= "ediTable" border="1" cellspacing="1" style ="text-align: center;">
				<tr bgcolor ="#fa4a4a" style = "color : white">
					<th width ="200px">후기사진</th>
					<th width ="200px">상품명</th>
					<th width ="400px">후기내용</th>
					<th width ="200px">작성자</th>
					<th width ="200px">평균평점 / 내 점수</th>
					<th width ="200px">작성일</th>
					<!-- <th width = "100px">평점</th> -->
				</tr>
				<c:forEach var="aflist" items="${aflist}">
						
					<tr>
						<td><img src="resources/afteruploadFiles/${aflist.ref_filePath}" width ="150px" height ="130px"></td>
				 		<td>${aflist.goodsTitle}</td>
						<td>${aflist.rContent}</td>
						<td>
							${aflist.userName }
							<%-- <c:if test="${sessionScope.loginUser.userId eq 'admin' }">
								<c:out value = "${loginUser.userName }"/>
							</c:if> --%>
						</td>
						
						<td>
							<c:forEach var="sAvgList" items="${sAvgList}">
				      	 		<span class="fa fa-star checked"></span>
				      	 		<span style="font-size : 20px;">${sAvgList}</span>
				      		</c:forEach>
				      		/ ${aflist.sellStart}
							<%--  <c:if test="${aflist.sellStart eq '1'}">
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
					      	 </c:if> --%>
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
			
			<p align="center" style="margin : 50px 0 50px 0;">
				<button class="adminMain-btn" type="button" style="width : 110px; height : 40px;" onclick="location.href='home.do'">HOME 이동</button>
				<button class="adminList-btn" type="button" style="width : 110px; height : 40px;" onclick="location.href='sell_goodsList.do'">목록전체보기</button>
			</p>
	
	</div>
	
	
	<script>
		$("#goodsList").on("change",function(){
			/* var tex = $("#goodsList option:selected").text(); */
			var va = $("#goodsList option:selected").val();	
		 	
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
			if($("#goodsList option:selected").val() <= 0){
				alert("평점을 보실 상품을 리스트에서 선택해주세요");
			}else {
				$("#afterAvgForm").submit();
				
			}
		}
	
	</script>
	</div>
</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</html>
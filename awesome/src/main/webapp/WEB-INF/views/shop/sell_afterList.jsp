<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Star Rating -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    
<style>
.outer{
	width : 100%;
	height : 100%;
}


/* 상품 후기  */
#afterWrite{
  border-collapse: collapse;
  border-spacing: 0;
  width: 1300px;
  border: 1px solid #ddd;
  text-align :center;
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
<%-- <jsp:include page ="../admin/adminMenu.jsp"/> --%>

	
	<div id="container" style="overflow: auto; height: auto;" ><!-- container -->
		<div class = "outer">
			<div id ="afterWriteDiv" style="margin-left : 790px; margin-top : 20px; margin-bottom: 20px;">
				<span align="center" style="font-size : 30px; font-weight: bold;"> 후기리뷰 </span>
					
					 <form id = "afterAvgForm" action="stargIdSelect.do" method="post" enctype="Multipart/form-data">
						<span>상품별 후기 평점 보기</span>
						<br>
						<c:forEach var="aflist" items="${aflist}">
							<input id="aGid" type="hidden" name="gId">
						</c:forEach>
											    
						
						<div id ="sAvgListArea" style="width:200px; height : 200px; margin-left : 520px;">
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
						<td><img src="resources/afteruploadFiles/${aflist.ref_filePath}" width ="150px" height ="150px"></td>
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
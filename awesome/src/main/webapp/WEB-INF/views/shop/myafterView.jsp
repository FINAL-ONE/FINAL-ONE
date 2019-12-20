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
	height : 30px;
}




/* 모달창 css */
/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  /* margin: auto; */
  margin-top : 200px;
  margin-left : 40%;
  padding: 20px;
  border: 1px solid #888;
  width: 300px;
  text-align : center;

}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}



.myupdate-btn, .mydelet-btn {
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

.myupdate-btn:hover, .mydelet-btn:hover{
	background: #fff;
	color: #fe6666;
}	
	
	
	
	



</style>


</head>
<body>

<jsp:include page ="../common/menubar.jsp"/>

	<div id="container" style="overflow: auto; height: auto;" ><!-- container -->
		<div class = "outer">
			<div id ="afterWriteDiv" style="margin-left : 790px; margin-top : 20px;">
				<span align="center" style="font-size : 30px; font-weight: bold;"> 후기리뷰 </span>
					
					 <form id = "afterAvgForm" action="stargIdSelect.do" method="post" enctype="Multipart/form-data">
							<input id="aGid" type="hidden" name="gId">
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
					<th width ="150px">수정</th>
					<th width ="150px">삭제</th>
				</tr>
				<c:forEach var="mflist" items="${mflist}">
				
					<tr>
						<td><img src="resources/afteruploadFiles/${mflist.ref_filePath}" width ="150px" height ="150px"></td>
				 		<td>${mflist.goodsTitle}</td>
						<td>${mflist.rContent}</td>
						<td>
							${mflist.userId }
							<%-- <c:if test="${sessionScope.loginUser.userId eq 'admin' }">
								<c:out value = "${loginUser.userName }"/>
							</c:if> --%>
						</td>
						
						<td>
							 <c:if test="${mflist.sellStart eq '1'}">
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
							</c:if>
					      	 <c:if test="${mflist.sellStart eq '2'}">
							   	   <span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
					      	 </c:if>
					    
					      	 <c:if test="${mflist.sellStart eq '3'}">
							   	    <span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
					      	 </c:if>
					      	 <c:if test="${mflist.sellStart eq '4'}">
							   	    <span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
					      	 </c:if>
					      	 <c:if test="${mflist.sellStart eq '5'}">
							   	    <span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
					      	 </c:if>
						</td>
						<td><c:out value = "${mflist.createDate }"/></td>
						<td>
							<button class="myupdate-btn" type="button" style="width : 110px; height : 40px;" onclick="updateForm();">수정하기</button>	
						</td>
						<td>
							<button class="mydelet-btn" type="button" style="width : 110px; height : 40px;" onclick="deleteForm('${mflist.userId}');">삭제하기</button>
							${mflist.gId}
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>

	</div>
	
	

 	<div id="myModal" class="modal">
	  <div class="modal-content">
	    <span class="close">&times;</span>
	    	 <form action="myafterDelete.do" method="post">
	    	 <br>
		    	<!-- <span>상품 후기를 삭제하시겠습니까?</span> -->
		    	<span>해당 상품 후기를 삭제하시겠습니까?</span>
		    	<%-- <c:forEach var="mflist" items="${mflist}"> --%>
		    		<input id="modaluserId" type="hidden" name="userId" value="">
			    	<input type="hidden" name="mId" value="${sessionScope.loginUser.mid }">
		    	<%-- </c:forEach> --%>
		    	<input class="myupdate-btn" type="submit" value="삭제하기">&nbsp;
	    	</form>
	  </div>
	</div>

	
	<!-- 포인트 수정 script   -->
		<script>
				$(function() {
					
					var modal = document.getElementById("myModal");
					
					$(".close").click(function(){
						modal.style.display = "none";
					})
					
					window.onclick = function(event) {
						  if (event.target == modal) {
						    modal.style.display = "none";
						  }
					}
				});
				
				
				function deleteForm(userId){
					showModal(userId);
					/* modal.style.display = "block"; */
				}
				
				function showModal(userId, gId){
					var modal = document.getElementById("myModal");
					modal.style.display = "block";
					$("#modaluserId").val(userId);
					
					/* $("#modalUserName").html(userName)
					
					$("#modalPoint").val(point); */
				}
			</script>
			 

</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</body>
</html>
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
/* 상품 후기  */
#afterWrite{
  border-collapse: collapse;
  border-spacing: 0;
  width : 100%;
  border: 1px solid #ddd;
  text-align :center;
  margin-bottom: 100px;
}
#afterWrite th, td {
  text-align: center;
  padding: 16px;
  width : 200px;
  
}
#afterWrite tr:nth-child(even) {
  background-color: #f2f2f2;
  cursor : pointer;
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
</style>

</head>
<body>
<jsp:include page ="../common/menubar.jsp"/>
<%-- <jsp:include page ="../admin/adminMenu.jsp"/> --%>

	
	<div id="container" style="overflow: auto; height: auto;" ><!-- container -->
		<div id ="afterWriteDiv">
			<h3 align="left"> 후기작성 </h3>
			
			<!-- <button id ="afterWriteBtn" onclick="location.href='afterWrite.do'">후기 작성하기</button> -->
			<table id ="afterWrite">
				<tr>
					<th width ="200px">후기사진</th>
					<th width ="400px">후기내용</th>
					<th width ="200px">작성자</th>
					<th width ="200px">별점</th>
					<th width ="200px">작성일</th>
				</tr>
				<c:forEach var="aflist" items="${aflist}">
					<tr>
						<td><img src="resources/afteruploadFiles/${aflist.filePath}" width ="200px" height ="200px"></td>
					<%-- 	<td>${aflist.goodsTitle}</td> --%>
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
						<%-- <td>${aflist.sellStart }</td> --%>
					</tr>
					
				</c:forEach>
			</table>
		</div>

	
	</div>
</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</html>
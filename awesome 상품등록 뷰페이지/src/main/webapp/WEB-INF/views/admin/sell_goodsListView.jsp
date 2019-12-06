<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.outer{
	width : 100%;
	height : 100%;
}
.goodsTable {
  border-collapse: collapse;
  border-spacing: 0;
  width: 90%;
  border: 1px solid #ddd;
  text-align :center;
}
th, td {
  text-align: left;
  padding: 16px;
  
}

tr:nth-child(even) {
  background-color: #f2f2f2;
  cursor : pointer;
}
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>   
	<%-- <jsp:include page ="../admin/adminMenu.jsp"/> --%>
	<div class = "outer">
		<div id="container" style= "height: 800px; overflow: auto;"><!-- container -->

			<c:if test="${!empty loginUser }">
		   		<div align ="center">
		   			<button onclick="location.href='goodsWriterView.do'">상품 등록하기</button>
		   		</div>
			</c:if>
			<br>
	
			<table class = "goodsTable"align="center" width = "75%" border="1" cellspacing="0" style="clear:right;" id ="td">
				<tr bgcolor ="#99ccff">
					<th>상품번호</th>
					<th>이미지</th>
					<th>상품명</th>
					<th>상품설명</th>
					<th>올린날짜</th>
					<th>수정날짜</th>
					<th>상태</th>
				</tr>
				
				<c:forEach var="a" items="${list}">
					<tr>
						<td width ="200px">${a.sellNum}</td>
						<td width ="250px">
							<img src="resources/auploadFiles/${a.filePath}" width ="100px" height ="100px">
						</td>
						<td width ="450px">
							<c:if test="${!empty loginUser}">
								<!-- 이따가 작성 -->
											
								<c:url var="adetail" value="adetail.do">
									<c:param name="gId" value="${a.gId }"/>
								</c:url>
								<a href="${adetail}">${a.goodsTitle}</a>
							</c:if>
							<c:if test="${empty loginUser}">
								${a.goodsTitle}
							</c:if>
						</td>
						<td width ="550px">${a.goodsContent}</td>
						<td width ="400px">${a.sellDate}</td>
						<td width ="400px">${a.modifyDate}</td>
						<td width ="300px">${a.status}</td>
					</tr>
				</c:forEach>
			</table>
	
			<p align="center">
				<c:url var ="adminMain" value="adminMain.do"/>
				<a href="${adminMain}">관리자페이지 이동</a>&nbsp;
				<c:url var ="sell_goodsList" value="sell_goodsList.do"/>
				<a href="${sell_goodsList}">목록전체보기</a>
			</p>
	
		</div>
	</div>
</body>
<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</html>
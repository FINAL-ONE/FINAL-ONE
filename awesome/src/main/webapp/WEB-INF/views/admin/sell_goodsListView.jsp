<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page ="../common/menubar.jsp"/>
	<jsp:include page ="../admin/adminMenu.jsp"/>
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <c:if test="${!empty loginUser }">
   		<div align ="center">
   			<button onclick="location.href='goodsWriterView.do'">상품 등록하기</button>
   		</div>
   </c:if>
	<br>
	
	<table align="center" width ="600" border="1" cellspacing="0" style="clear:right;" id ="td">
		<tr bgcolor ="#99ccff">
			<th>상품번호</th>
			<th>상품명</th>
			<th>상품설명</th>
			<th>이미지</th>
			<th>올린날짜</th>
			<th>수정날짜</th>
			<th>첨부파일</th>
			<th>상태</th>
		</tr>
		
		<c:forEach var="a" items="${list}">
			<tr>
				<td align="center">${a.sellNum}</td>
				<td>
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
				
				<td align="center">${a.goodsContent}</td>
				<td align="center">${a.goodsImage}</td>
				<td align="center">${a.sellDate}</td>
				<td align="center">${a.modifyDate}</td>
				<td align="center">
					<!--이따 작성  -->
					<c:if test="${!empty a.filePath}">
						*첨부파일*
					</c:if>
					<c:if test="${empty a.filePath}">
						&nbsp;
					</c:if>
				</td>
				<td align="center">${a.status}</td>
			</tr>
		</c:forEach>
	</table>
	
	<p align="center">
		<c:url var ="adminMain" value="adminMain.do"/>
		<a href="${adminMain}">관리자페이지 이동</a>&nbsp;
		<c:url var ="sell_goodsList" value="sell_goodsList.do"/>
		<a href="${sell_goodsList}">목록전체보기</a>
	</p>
	
</body>
</html>
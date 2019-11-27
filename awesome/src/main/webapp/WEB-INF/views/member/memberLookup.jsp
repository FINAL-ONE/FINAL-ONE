<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="" %>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#member-content{
	width : 80%;
	height : 90%;
	margin-top : 50px;
	margin-left : 200px;

}
#membertable{
	width : 90%;
	margin-top : 100px;
}
#membertable th{
	height : 50px;
	text-align : center;
	cursor : pointer;
}
#membertable td{
	height : 40px;
	text-align : center;
	cursor : pointer;
}
#membertable tr:hover{
	background : green;
	color : white;
}
</style>

</head>
<body>

	<jsp:include page ="../common/menubar.jsp"/>
	<jsp:include page ="../admin/adminMenu.jsp"/>

	<div id ="member-content">
		<br><br>
		<h3 align="center">
			총 회원 수 : ${pi.listCount}명
		</h3>
		
		<table align="center" border="1" cellspacing="1" id ="membertable">
				<tr>
					<th width = "100px" align="center">회원아이디</th>
					<!-- <th>회원비밀빈호</th> -->
					<th width = "100px">회원이름</th>
					<th width = "100px">성별</th>
					<th width = "100px">생년월일</th>
					<th width = "100px">핸드폰번호</th>
					<th width = "100px">이메일</th>
					<th width = "700px">주소</th>
					<th width = "100px">포인트</th>
					<th width = "130px">가입일</th>
					<th width = "130px">수정일</th>
					<th width = "100px">탈퇴상태</th>
				<tr>
		
			<c:forEach var="n" items="${list}">
				<tr>
					<td align="center">${n.userId}</td>
					<%-- <td align="center">${n.userPwd}</td> --%>
					<td>${n.userName}</td>
					<td>${n.gender}</td>
					<td>${n.birthday}</td>
					<td>${n.phone}</td>
					<td>${n.email}</td>
					<td>${n.address}</td>
					<td>${n.point}</td>
					<td>${n.enrollDate}</td>
					<td>${n.modifyDate}</td>
					<td>${n.status}</td>
				</tr>
			</c:forEach>
				
			<!-- 페이징 부분 -->
				<tr align ="center" height ="20">
					<td colspan="11">
						<!-- [맨처음으로] -->
						<c:url var = "blistfirstBack" value ="/memberLookup.do">
							<c:param name="page" value="1"/>
						</c:url>
							<a href ="${blistfirstBack }"> <font color="lightgray">[맨처음으로]</font></a>	
							
							<!-- [이전] -->
						<c:if test="${pi.currentPage <= 1 }">
							[이전]&nbsp;
						</c:if>
						
						<c:if test="${pi.currentPage > 1 }">
							<c:url var = "blistBack" value ="/memberLookup.do">
								<c:param name="page" value="${pi.currentPage - 1 }"/>
							</c:url>
							<a href ="${blistBack }"> <font color="lightgray">[이전]</font></a>	
						</c:if>
						
						<!-- [번호들 ]-->
						<c:forEach var = "p" begin="${pi.startPage }" end= "${pi.endPage }">
							<c:if test ="${p eq pi.currentPage }">
								<font color ="red" size ="4"><b>[${p}]</b></font>
							</c:if>
						
							<c:if test="${p ne pi.currentPage }">
								<c:url var ="blistCheck" value="memberLookup.do">
									<c:param name="page" value="${p}"/>
								</c:url>
								<a href ="${blistCheck }"><font color="lightgray">${p }</font></a>
							</c:if>
						</c:forEach>
						
						<!-- [다음]  -->
						<c:if test="${pi.currentPage >= pi.maxPage }">
							&nbsp;[다음]
						</c:if>
						
						<c:if test="${pi.currentPage < pi.maxPage}">
							<c:url var ="blistEnd" value ="memberLookup.do">
								<c:param name ="page" value = "${pi.currentPage + 1 }"/>
							</c:url>
							<a href ="${blistEnd }"><font color="lightgray">[다음]</font></a>		
						</c:if>
						
						<!-- [맨끝으로] -->
						<c:url var = "blistlastBack" value ="/memberLookup.do">
							<c:param name="page" value="${pi.maxPage }"/>
						</c:url>
							<a href ="${blistlastBack }"><font color="lightgray">[맨끝으로]</font> </a>	
					</td>
				</tr>
		</table>
	</div>
	
	
</body>
</html>
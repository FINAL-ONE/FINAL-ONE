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

<jsp:include page="../common/menubar.jsp"/>	
<div id="container" style="overflow: auto; height: 800px;" ><!-- container -->


<!-- 로그인 했을 때만  -->
<c:if test="${!empty loginUser }">
	&nbsp;&nbsp;&nbsp;
	<button onclick="location.href='dinsertView.do'">글쓰기</button>
</c:if>









</div>
</body>
<footer>
	<jsp:include page ="../common/footer.jsp"/>
</footer>
</html>
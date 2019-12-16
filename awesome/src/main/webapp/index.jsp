<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="application"/>

 
</head>
<body>

</body>
<script>

$(function(){
	document.location.replace('home.do');
});


</script>
</html>	

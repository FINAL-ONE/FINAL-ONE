<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>

<body>
	<jsp:include page="../common/menubar.jsp" />
<h1>나의 BMI지수 확인</h1>
<hr>
<table>
	<tr>
		<td>성별</td>
		<td><input type="radio" name="gender" value="여자">여자<input type="radio"name="gender" value="남자">남자</td>
	</tr>
	<tr>
		<td>연령</td>
		<td>
		<select id="year" name="year">
		<option value="2019">2019</option>
		<option value="2019">2019</option>
		<option value="2019">2019</option>
		<option value="2019">2019</option>
		<option value="2019">2019</option>
		<option value="2019">2019</option>
		<option value="2019">2019</option>
		<option value="2019">2019</option>
		<option value="2019">2019</option>
		<option value="2019">2019</option>
		<option value="2019">2019</option>
		
		</select>
		<td>
	</tr>
</table>
</body>
</html>
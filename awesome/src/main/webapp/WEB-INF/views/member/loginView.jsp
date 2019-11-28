<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<style>
	.loginDiv{
	/* 	border: 1px solid black; */
		text-align:center; 
		width: 700px;
		height: 500px;
		margin-top: 70px;
		margin-left: auto;
		margin-right: auto;
	}
	
	.loginInput{
		height: 45px;
	    line-height: 45px;
	    background: #fff;
	    color: black;
	    border: 1px solid #ccc;
	    font-size: 14px;
	    padding: 0 12px;
	    vertical-align: middle;
	    width: 300px;
	
	}

.loginBtn {
    margin: 10px 0px 15px;
    border: 1px solid #fe6666;
    background: #fe6666;
    border-radius: 2px;
    color: #fff;
    text-align: center;
    font-size: 14px;
    font-weight: 600;
    width: 326px;
    height: 40px;
}

.findLogin {
    background: #fff;
    border: 1px solid #fe6666;
    text-align: center;
    font-size: 14px;
    border-radius: 2px;
     color: #fe6666; 
    font-weight: 600;
    width: 326px;
    height: 40px;
}
    

input:focus { outline: none; }

</style>

<body>

<jsp:include page ="../common/menubar.jsp"/>
<div id="container" style="overflow: auto; height: 700px;" ><!-- container -->


<div class= loginDiv >
	<b style="font-size:36px">LOGIN</b>	
	<br><br>
	<p style="font-size: 13px; color:#888888; font-weight: bold;line-height:1.5">
		AWESOME의 다양한 서비스를 이용하시려면 로그인을 해주세요.<br>
		회원가입을 하시면 다양한 서비스를 받으실 수 있습니다<br><br>
	</p>
	<form id= "loginForm" action="login.do" method="post">
		<input class= "loginInput" name="userId" style="margin-bottom:10px;"placeholder="아이디 입력	"> <br>
		<input class= "loginInput" type="password" name="userPwd" style="margin-bottom:5px;" placeholder="비밀번호 입력" type="password"><br>
		<button class= "loginBtn">로그인</button><br>
		<button class="findLogin">아이디 / 비밀번호 찾기</button><br>
	</form>
	<br><br>
		<p style="color:#666666; font-size:12px; margin:0px; line-height:1.5">
		문제가 있거나 문의 사항이 있으시면 아래의 주소로 문의하시기 바랍니다.<br>
		고객지원: <a href="">hokwan92@naver.com</a> 
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</p>
	
</div>
		


</div>
</body>
<footer>
	<jsp:include page ="../common/footer.jsp"/>
</footer>

</html>
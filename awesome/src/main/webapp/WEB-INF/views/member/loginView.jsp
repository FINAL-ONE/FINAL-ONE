<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">
<title>Insert title here</title>
</head>

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
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
    cursor: pointer;
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
    cursor: pointer;
}
    .loginBtn:hover{
    background: #fff;
    color: #fe6666;}
    
    .findLogin:hover{
    background: #fe6666;
    color: #fff;
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
	
	
	
		<input class= "loginInput" id="userId" style="margin-bottom:10px;"placeholder="아이디 입력" > <br>
		<input class= "loginInput" id="userPwd" type="password"  style="margin-bottom:5px;" placeholder="비밀번호 입력" type="password"><br>
		<button class= "loginBtn" type="button" onclick="loginCheck()">로그인</button><br>
		<button class="findLogin" type="button" id = "find_id_btn" onclick="javascript:popupidOpen();">아이디 찾기</button><br>
		<button class="findLogin" type="button" id = "find_pw_btn" onclick="javascript:popuppwOpen();">비밀번호 찾기</button><br>

	<br><br>
		<p style="color:#666666; font-size:12px; margin:0px; line-height:1.5">
		문제가 있거나 문의 사항이 있으시면 아래의 주소로 문의하시기 바랍니다.<br>
		
		
		<script type="text/javascript">
function popupOpen(){

	var popUrl = "email.do";	//팝업창에 출력될 페이지 URL

	var popOption = "top=55, left=600, width=750, height=880, resizable=no, scrollbars=no, status=no, location=no,";    //팝업창 옵션(optoin)

		window.open(popUrl,"",popOption);

	}
	
</script>

고객지원: <a href="javascript:popupOpen();" > awesome@naver.com </a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</p>
	
</div>
		

</div>
<script>
function loginCheck(){
         if($("#userId").val() == ""){
            alert("아이디를 입력해주세요.");
            $("#userId").focus();
         }else if($("#userPwd").val() == ""){
            alert("비밀번호를 입력해주세요.");
            $("#userPwd").focus();
         }
         
      var userId =  $("#userId").val();
       var userPwd = $("#userPwd").val();
         
   	$.ajax({
		url : "login.do",
		type:"post",
		dataType : "JSON",
		data : {
			userId : userId,
			userPwd : userPwd
		},
		success : function(data) {
			if (data.result != "") {
				console.log(data);
				alert(decodeURIComponent(data.result)+ "님 환영합니다." );
				location.href="home.do";
			}else{ 
				alert("아이디나 비밀번호를 다시 확인해주세요");
			}
			
			
		},
		error : function(request, status, errorData) {
			alert("아이디나 비밀번호를 다시 확인해주세요");
		}
	});	
       
}
         
 
</script>


<script type="text/javascript">
function popupidOpen(){

	var popUrl = "find_id_form.do";	//팝업창에 출력될 페이지 URL

	var popOption = "top=300, left=500, width=900, height=440, resizable=no, scrollbars=no, status=no, location=no,";    //팝업창 옵션(optoin)

		window.open(popUrl,"",popOption);

	}
	
</script>


<script type="text/javascript">
function popuppwOpen(){

	var popUrl = "find_pw_form.do";	//팝업창에 출력될 페이지 URL

	var popOption = "top=200, left=500, width=900, height=530, resizable=no, scrollbars=no, status=no, location=no,";    //팝업창 옵션(optoin)

		window.open(popUrl,"",popOption);

	}
	
</script>



</body>
<footer>
	<jsp:include page ="../common/footer.jsp"/>
</footer>

</html>
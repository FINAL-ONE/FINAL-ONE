	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
	<link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<style>
	
	input{
		outline:none;
		height: 25px;
		font-size: 16px;
		border: 2px solid #ffda79;
	}
	
	button:hover{
		cursor:pointer;
	}
	
	
	.centerText table {
		margin: auto;
	}
	
	.guide {
		display: none;
		font-size: 12px;
		top: 12px;
		right: 10px;
	}
	
	.nickNameGuide {
		display: none;
		font-size: 12px;
		top: 12px;
		right: 10px;
	}
	.emailGuideError{
		display: none;
		font-size: 13px;
		color:#D95F49;
	}
	
	.emailGuideOk{
		display: none;
		font-size: 13px;
		color: #489AD8;
	}
	
	
	
	div.ok {
		color: #489AD8;
	}
	
	div.error {
		color:  #D95F49;
	}
	
	table.type02 {
		border-collapse: separate;
		border-spacing: 0;
		text-align: left;
		line-height: 1.5;
		border-top: 1px solid #ccc;
		border-left: 1px solid #ccc;
		margin: auto;
	}
	
	table.type02 th {
		width: 150px;
		padding: 10px;
		font-weight: bold;
		vertical-align: top;
		border-right: 1px solid #ccc;
		border-bottom: 1px solid #ccc;
		border-top: 1px solid #fff;
		border-left: 1px solid #fff;
		background: #eee;
	}
	
	table.type02 td {
		width: 500px;
		padding: 10px;
		vertical-align: top;
		border-right: 1px solid #ccc;
		border-bottom: 1px solid #ccc;
	}
	
	#joinBtn {
		margin: 10px 0px 15px;
		border: 2px solid #fe6666;
		background: #fe6666;
		border-radius: 10px;
		color: #fff;
		text-align: center;
		font-size: 19px;
		font-weight: 500;
		width: 220px;
		height: 50px;
		cursor: pointer;
		-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
		-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
		-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
		-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
		transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
		padding: 6px;
		text-align: center;
	}
	
	.centerDiv{
		
			  width:880px;
			  border:none;
			 /* border: 1px solid pink; */ 
		      margin-left:auto;
		      margin-right:auto;
		      height: auto;
		     padding-left: 10px;
		}
		
	
	
	#cancelBtn {
		background: #8b8b8b;
		border: 2px solid #8b8b8b;
		text-align: center;
		font-size: 19px;
		border-radius: 10px;
		color: #fff;
		font-weight: 500;
		width: 220px;
		height: 50px;
		cursor: pointer;
		-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
		-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
		-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
		-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
		transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
		padding: 6px;
		text-align: center;
	}
	
	#joinBtn:hover {
		border: 2px solid #383838;
		background: #fff;
		color: #383838;
	}
	
	#cancelBtn:hover {
		border: 2px solid #383838;
		background: #fff;
		color: #383838;
	}
	
	label:hover{
		cursor:pointer;
	}
	
	input[type="radio"]:hover {cursor:pointer;}
	
	
	input[type="radio"]{
	position: relative;
	    top: 3px;
	
	
	}
	
	
	select{
		font-size: 16px;
		height: 30px;
		outline:none;
		position: relative; 
		top: -2px; 
		border: 2px solid #ffda79;
	}
	
	.star{
		color: #fa4a4a;
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
    margin-top: 100px;
    margin-left: auto;
    margin-right: auto;
    padding: 40px;
    border: 1px solid #888;
    width:580px;

}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
  position: relative;
    top: -30px;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
	
.emailCheckBtn{

    height: 30px;
    margin-left: 5px;
    position: relative;
}	
	
	
	</style>
		<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js" z></script>
			<link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">
	</head>
	<body>
		<jsp:include page="../common/menubar.jsp" />
	
	<div class = "centerDiv">
		<br>
		<br>
	
		<h1 align="center">
				<img src="${contextPath}/resources/images/membership.png"
					style="height: 53px; vertical-align: top">&nbsp;회원가입
		</h1>
		
		<p align="center"
			style="font-size: 13px; color: #888888; font-weight: bold; line-height: 1.5">
			회원가입 후 다양한 서비스를 편리하게 이용하실 수 있습니다.<br> <br>
		</p>
		<div class="centerText">
			<form action="minsert.do" method="post" id="joinForm">
				<table class="type02" cellspacing="5">
					<tr>
						<th scope="row"><span class= "star">*</span> 아이디</th>
						<td><input type="text" name="userId" id="userId"> <!---------------- ajax 후에 적용할 부분 ------------------->
							<div class="guide ok">이 아이디는 사용 가능합니다.</div>
							<div class="guide error">이 아이디는 사용할 수 없습니다.</div> <input
							type="hidden" name="idDuplicateCheck" id="idDuplicateCheck"
							value="0"> <!-- ------------------------------------------------ -->
	
						</td>
					</tr>
					<tr>
						<th scope="row"><span class= "star">*</span> 비밀번호</th>
						<td><input type="password" name="userPwd" id="userPwd"
							requi#D95F49>
							<div id="checkPwd" class="checkInfo" style="font-size: 0.8em"></div></td>
					</tr>
					<tr>
						<th scope="row"><span class= "star">*</span> 비밀번호 확인</th>
						<td><input type="password" name="userPwd2" id="userPwd2"
							requi#D95F49>
							<div id="checkPwd2" class="checkInfo" style="font-size: 0.8em"></div></td>
					</tr>
					<tr>
						<th scope="row"><span class= "star">*</span> 이름</th>
						<td><input type="text" name="userName" id="userName"
							requi#D95F49>
							<div id="checkName" class="checkInfo" style="font-size: 0.8em"></div></td>
					</tr>
					<tr>
						<th scope="row"><span class= "star">*</span> 닉네임</th>
						<td><input type="text" name="userNickname" id="nickName"
							requi#D95F49>
							<div id="checknickName" class="checkInfo" style="font-size: 0.8em"></div>
							<!---------------- ajax 후에 적용할 부분 ------------------->
							<div class="nickNameGuide ok nickNameOk ">중복되지 않은 닉네임입니다.</div>
							<div class="nickNameGuide error nickNameError ">중복된 닉네임입니다.
							</div> <input type="hidden" name="nickNameDuplicateCheck"
							id="nickNameDuplicateCheck" value="0"> <!-- ------------------------------------------------ -->
						</td>
					</tr>
					<tr>
						<th scope="row">성별</th>
						<td><input id="genderM" type="radio" name="gender" value="남"style="width: 20px; height: 20px;" > <label for="genderM">남</label> &nbsp;&nbsp;&nbsp;
							<input id="genderY" type="radio" name="gender" value="여" style="width: 20px; height: 20px;" checked> <label for="genderY">여</label></td>
					</tr>
					<tr>
						<th scope="row">생년월일</th>
						<td><select id="user_birth_year">
								<option value="">-</option>
								<option value="2019">2019</option>
								<option value="2018">2018</option>
								<option value="2017">2017</option>
								<option value="2016">2016</option>
								<option value="2015">2015</option>
								<option value="2014">2014</option>
								<option value="2013">2013</option>
								<option value="2012">2012</option>
								<option value="2011">2011</option>
								<option value="2010">2010</option>
								<option value="2009">2009</option>
								<option value="2008">2008</option>
								<option value="2007">2007</option>
								<option value="2006">2006</option>
								<option value="2005">2005</option>
								<option value="2004">2004</option>
								<option value="2003">2003</option>
								<option value="2002">2002</option>
								<option value="2001">2001</option>
								<option value="2000">2000</option>
								<option value="1999">1999</option>
								<option value="1998">1998</option>
								<option value="1997">1997</option>
								<option value="1996">1996</option>
								<option value="1995">1995</option>
								<option value="1994">1994</option>
								<option value="1993">1993</option>
								<option value="1992">1992</option>
								<option value="1991">1991</option>
								<option value="1990">1990</option>
								<option value="1989">1989</option>
								<option value="1988">1988</option>
								<option value="1987">1987</option>
								<option value="1986">1986</option>
								<option value="1985">1985</option>
								<option value="1984">1984</option>
								<option value="1983">1983</option>
								<option value="1982">1982</option>
								<option value="1981">1981</option>
								<option value="1980">1980</option>
								<option value="1979">1979</option>
								<option value="1978">1978</option>
								<option value="1977">1977</option>
								<option value="1976">1976</option>
								<option value="1975">1975</option>
								<option value="1974">1974</option>
								<option value="1973">1973</option>
								<option value="1972">1972</option>
								<option value="1971">1971</option>
								<option value="1970">1970</option>
								<option value="1969">1969</option>
								<option value="1968">1968</option>
								<option value="1967">1967</option>
								<option value="1966">1966</option>
								<option value="1965">1965</option>
								<option value="1964">1964</option>
								<option value="1963">1963</option>
								<option value="1962">1962</option>
								<option value="1961">1961</option>
								<option value="1960">1960</option>
								<option value="1959">1959</option>
								<option value="1958">1958</option>
								<option value="1957">1957</option>
								<option value="1956">1956</option>
								<option value="1955">1955</option>
								<option value="1954">1954</option>
								<option value="1953">1953</option>
								<option value="1952">1952</option>
								<option value="1951">1951</option>
								<option value="1950">1950</option>
								<option value="1949">1949</option>
								<option value="1948">1948</option>
								<option value="1947">1947</option>
								<option value="1946">1946</option>
								<option value="1945">1945</option>
								<option value="1944">1944</option>
								<option value="1943">1943</option>
								<option value="1942">1942</option>
								<option value="1941">1941</option>
								<option value="1940">1940</option>
								<option value="1939">1939</option>
								<option value="1938">1938</option>
								<option value="1937">1937</option>
								<option value="1936">1936</option>
								<option value="1935">1935</option>
								<option value="1934">1934</option>
								<option value="1933">1933</option>
								<option value="1932">1932</option>
								<option value="1931">1931</option>
								<option value="1930">1930</option>
								<option value="1929">1929</option>
								<option value="1928">1928</option>
								<option value="1927">1927</option>
								<option value="1926">1926</option>
								<option value="1925">1925</option>
								<option value="1924">1924</option>
								<option value="1923">1923</option>
								<option value="1922">1922</option>
								<option value="1921">1921</option>
								<option value="1920">1920</option>
								<option value="1919">1919</option>
								<option value="1918">1918</option>
								<option value="1917">1917</option>
								<option value="1916">1916</option>
								<option value="1915">1915</option>
								<option value="1914">1914</option>
								<option value="1913">1913</option>
								<option value="1912">1912</option>
								<option value="1911">1911</option>
								<option value="1910">1910</option>
								<option value="1909">1909</option>
								<option value="1908">1908</option>
								<option value="1907">1907</option>
								<option value="1906">1906</option>
								<option value="1905">1905</option>
								<option value="1904">1904</option>
								<option value="1903">1903</option>
								<option value="1902">1902</option>
								<option value="1901">1901</option>
						</select> 년 &nbsp;<select id="user_birth_month">
								<option value="">-</option>
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
						</select> 월&nbsp;&nbsp; <select id="user_birth_day">
								<option value="">-</option>
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
						</select>일</td>
						<input type = "text" id = "DOB" maxlength="8" name="birthday" style="width: 159px; margin-left: 0px;" hidden>
	
					</tr>
					<tr>
						<th scope="row">전화번호</th>
	
						<td><input type="tel" name="phone" id="phone" requi#D95F49>
							<div id="checkPhone" class="checkInfo" style="font-size: 0.8em"></div></td>
					</tr>
					<tr>
						<th scope="row"><span class= "star">*</span> 이메일</th>
						<td id="emailPt">
							<input id="emailId" type="text" style="width: 141px;" onchange= "showEmailGuide();">
							<em>@</em> 
							<input id = "emailTail" type="text"  value="" style="width: 150px; margin-left: 0px;" readonly >
							<select id="emailSelect"  class="info" style="width: 150px; margin-left: 0px; height: 31px; top: 0px" onchange="SetEmailTail(emailSelect.options[this.selectedIndex].value);">
									<option value = "notSelected">선택</option>
									<option value="naver.com">naver.com</option>
									<option value="google.com">google.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="yahoo.com">yahoo.com</option>
									<option value="nate.com">nate.com</option>
									<option value="hotmail.com">hotmail.com</option>
									<option value="daum.net">daum.net</option>
									<option value="etc">직접입력</option>
							</select>
							<br>
							<input id="emailAddress" name ="email" value = "" type="hidden"> 
								<button  type="button" id="myBtn" class="myBtn success" onclick="emailCheck();" style="margin-top: 10px; height: 35px; font-size: 14px;">이메일 인증하기</button>
								<span class="emailGuideError"> 이메일을 인증해주세요.</span>
								<span class= "emailGuideOk"> 이메일이 인증되었습니다.  </span>
						</td>
					</tr>
					
								<div id="myModal" class="modal">
									  <!-- Modal content -->
									  <div class="modal-content">
									   <span class="close">&times;</span>
										    	<span><b id=modalUserName> </b>로 인증번호를 발송하시겠습니까? </span><button type= "button" class="myBtn success" style="height: 30px; margin-left: 5px"onclick= "emailSendCheckNum();">인증번호 발송 </button>
<!-- 										    	<input id="modalMid" type="hidden" value="" name ="mId" >
										    	<input id="modalPoint" type="number" value="" name ="point" style ="width : 100px;  text-align:center;"> -->
										    	<br>
										    	<div style="margin-top: 10px;">
											    	<input id= "emailNum" type= "text" placeholder="인증번호 입력" style="padding-left: 10px; padding-right: 10px;"> 
											    	<button type="button"  class= "emailCheckBtn" onclick="emailNumCheck();"> 인증번호 확인 </button> 
										    	</div>
									  </div>
									</div>					
					
					
					<!-- 
						이제 주소 input을 작성 할낀데 너무 식상하니깐 API 사용해보자
						주소와 우편번호를 입력할 <input>들을 생성하고 적당한 name과 class를 부여하자
					 -->
					<tr>
						<th scope="row">우편번호</th>
						<td><input type="text" name="post"
							class="postcodify_postcode5" value="" size="6" id="address">
							<button type="button" id="postcodify_search_button" style="height: 30px;font-size: 14px;">검색</button></td>
					</tr>
					<tr>
						<th scope="row">도로명 주소</th>
						<td><input type="text" name="address1" style="width: 400px;"
							class="postcodify_address" value=""></td>
					</tr>
					<tr>
						<th scope="row">상세 주소</th>
						<td><input type="text" name="address2"  style="width: 400px;"
							class="postcodify_extra_info" value=""></td>
					</tr>
	
	
	
					<!-- jQuery와 Postcodify를 로딩하자 -->
				
					<script>
						// 검색 단추를 누르면 팝업 레이어가 열리도록 설정한다.
						$(function() {
							
						});
					</script>
	
				</table>
				<br> <br>
				<div colspan="2" align="center">
					<!-- 이 버튼은 type이 "button"이어야지만 중복 아이디일 때 회원 가입 클릭시 submit 막을 수 있다. -->
					&nbsp; <input type="reset" id="cancelBtn" value="취소하기" onclick="cancel();">
						<button type="button" onclick="validate()" id="joinBtn">가입하기</button>
				</div>
	
	
			</form>
			<br> <br> <!-- <a href="home.do">시작 페이지로 이동</a> -->
		</div>
		<!-- 작성 후 minsert.do 요청을 처리하는 부분 작성하러 MemberController로 가자. -->
	
	
		<!-- ajax 후에 추가 하입시더 -->
		<script>
			$(function() {
				$("#userId").on(
						"keyup",
						function() {
							
							var userId = $(this).val().trim();
	
							if (userId.length < 4) {
								$(".guide").hide();
								$("#idDuplicateCheck").val(0);
								$("#userId").css("border", "2px solid #ffda79")
								return; // 애초에 4글자 안되게 아이디를 쓰면 ajax가 실행 되지 않고
								// 이벤트 처리 함수가 종료되게 하기 위해서
							}
	
							$.ajax({
								url : "dupid.do",
								data : {
									id : userId
								},
								success : function(data) {
	
									//1. Stream이용한 방식
									//if(data == "true"){
	
									//2.jsonView를 이용한 방식
									//json 객체 타입으로 리턴 받기 때문에 boolean형 그 자체
									if (data.isUsable == true) {
										$(".guide.error").hide();
										$(".guide.ok").show();
										$("#userId").css("border", "2px solid #489AD8")
										$("#idDuplicateCheck").val(1);
									} else {
										$(".guide.error").show();
											$("#userId").css("border", "2px solid #D95F49")
										$(".guide.ok").hide();
										
										
										$("#idDuplicateCheck").val(0);
									}
								},
								error : function(request, status, errorData) {
									alert("error code: " + request.status + "\n"
											+ "message: " + request.responseText
											+ "error: " + errorData);
								}
							});
						});
				
				
				$("#postcodify_search_button").postcodifyPopUp();
				
			});
	
			$(function() {
				
	
			$("#userPwd").keyup(function() {
				var userPwd =  $(this).val().trim();
				var pwdRe = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
	
				 if (userPwd.length <1) {
					$("#checkPwd").css("color", "#ffda79");
					$("#userPwd").css("border", "2px solid #ffda79");
					$("#checkPwd").text("비밀번호를 입력하세요.");
					pwdCheck = false;
				} else if (!pwdRe.test(userPwd)) {
					$("#checkPwd").css("color", "#D95F49");
					$("#userPwd").css("border", "2px solid #D95F49");
					$("#checkPwd").text("문자,숫자,특수문자를 포함한 8-20자");
					pwdCheck = false;
				} else {
					$("#checkPwd").css("color", "#489AD8");
					$("#userPwd").css("border", "2px solid #489AD8");
					$("#checkPwd").text("사용가능한 비밀번호입니다.");
					pwdCheck = true;
				}
			});
	
			$("#userPwd2").keyup(function() {
				var userPwd2 =  $(this).val().trim();
	
				if (pwdCheck == false) {
					$("#checkPwd2").css("color", "#D95F49");
					$("#userPwd2").css("border", "2px solid #D95F49");
					$("#checkPwd2").text("비밀번호를 먼저 입력하세요.");
					$("#userPwd2").val("");
					pwdCheck2 = false;
					$("#userPwd").focus()
				} else if ($("#userPwd").val() != userPwd2) {
					$("#checkPwd2").css("color", "#D95F49");
					$("#userPwd2").css("border", "2px solid #D95F49");
					$("#checkPwd2").text("비밀번호가 일치하지 않습니다.");
					pwdCheck2 = false;
				} else {
					$("#checkPwd2").css("color", "#489AD8");
					$("#userPwd2").css("border", "2px solid #489AD8");
					$("#checkPwd2").text("비밀번호가 일치합니다.");
					pwdCheck2 = true;
				}
	
			});
	
			$("#userName").keyup(function() {
				var nameRe = /^[가-힣]{2,6}$/;
				var userName = $("#userName").val();
	
				if (userName == "") {
					$("#checkName").css("color", "#ffda79");
					$("#userName").css("border", "2px solid  #ffda79");
					$("#checkName").text("이름을 입력하세요.");
					nameCheck = false;
				} else if (!nameRe.test(userName)) {
					$("#checkName").css("color", "#D95F49");
					$("#userName").css("border", "2px solid #D95F49");
					$("#checkName").text("2~6자의 한글");
					nameCheck = false;
				} else {
					$("#checkName").css("color", "#489AD8");
					$("#userName").css("border", "2px solid #489AD8");
					$("#checkName").text("유효한 이름입니다.");
					nameCheck = true;
				}
			});
	
			$("#nickName").keyup(function() {
				var nicknameRe = /^[가-힣,a-z,A-z,0-9]{2,6}$/;
				var nickName = $("#nickName").val().trim();
	
				if (nickName == "") {
					$("#checknickName").css("color", "#ffda79");
					$("#nickName").css("border", "2px solid #ffda79");
					$("#checknickName").text("닉네임을 입력하세요.");
					$(".nickNameError").hide();
					$(".nickNameOk").hide();
					nickNameCheck = false;
				} else if (!nicknameRe.test(nickName)) {
					$("#checknickName").css("color", "#D95F49");
					$("#nickName").css("border", "2px solid #D95F49");
					$("#checknickName").text("문자,숫자를 포함한 2-6자");
					$(".nickNameError").hide();
					$(".nickNameOk").hide();
					nickNameCheck = false;
				} else {
					$("#checknickName").css("color", "#489AD8");
					$("#nickName").css("border", "2px solid #489AD8");
					$("#checknickName").text("유효한 닉네임입니다.");
					nickNameCheck = true;
					
					
					if (nickNameCheck == true) {
						
	
						$.ajax({
							url : "dupNickName.do",
							data : {
								nickName : nickName
							},
							success : function(data) {
		
							
								if (data.isUsable == true) {
									$(".nickNameError").hide();
									$(".nickNameOk").show();
									$("#DuplicateCheck").val(1);
									$("#nickName").css("border", "2px solid #489AD8")
								} else {
									$(".nickNameError").show();
									$("#nickName").css("border", "2px solid #D95F49");
									$(".nickNameOk").hide();
									$("#nickNameDuplicateCheck").val(0);
								}
							},
							error : function(request, status, errorData) {
								alert("error code: " + request.status + "\n"
										+ "message: " + request.responseText
										+ "error: " + errorData);
							}
						});
					}
				}
			});
	
			$("#phone").keyup(function() {
				var phoneRe = /^\d{3}\d{4}\d{4}$/;
				var phone = $("#phone").val();
	
				if (phone == "") {
					$("#checkPhone").css("color", "#ffda79");
					$("#phone").css("border", "2px solid #ffda79");
					$("#checkPhone").text("번호를 입력하세요.");
					phoneCheck = false;
				} else if (!phoneRe.test(phone)) {
					$("#checkPhone").css("color", "#D95F49");
					$("#phone").css("border", "2px solid #D95F49");
					$("#checkPhone").text("정확한 전화번호 11자리");
					phoneCheck = false;
				} else {
					$("#checkPhone").css("color", "#489AD8");
					$("#phone").css("border", "2px solid #489AD8");
					$("#checkPhone").text("유효한 전화번호입니다.");
					phoneCheck = true;
				}
			});
	
			});
			
			
			
			
			function validate() {
				
				var emailId = $("#emailId").val();
				
				var emailTail = $("#emailTail").val();
				email = emailId + "@" + emailTail;
				
				$("#emailAddress").val(email);
				
				var year = $("#user_birth_year > option:selected").val();
				var month = $("#user_birth_month > option:selected").val();
				var date = $("#user_birth_day > option:selected").val();
	
				var bDay = year + month + date;
				document.getElementById("DOB").value = bDay;
	 
				/* alert("bDay : " + bDay);
				alert("#DOB : " + $("#DOB").val()); */
				//아이디 중복 체크 후 회원가입 버튼을 눌렀을 때
				
				var dob = $("#DOB").val();
	
				var strLength = dob.length;
	
				
				if (strLength == 8) {
					dobCheck = true;
				}else{
					dobCheck = false;
				
				}
				if ($("#idDuplicateCheck").val() == 0) {
					alert("사용 가능한 아이디를 입력해 주세요");
					$("#userId").focus();
				} else if (pwdCheck == false) {
					alert("비밀번호를 확인해주세요.");
					$("#userPwd").focus();
				} else if (pwdCheck2 == false) {
					alert("비밀번호 일치여부를 확인해주세요.");
					$("#userPwd2").focus();
				} else if (nameCheck == false) {
					alert("이름를 확인해주세요.");
					$("#userName").focus();
				} else if (nickNameCheck == false) {
					alert("닉네임을 확인해주세요.");
					$("#nickName").focus();
	
				} else if ($("#idDuplicateCheck").val() == 0) {
					alert(" 사용가능한 닉네임을  입력해주세요.");
					$("#nickName").focus();
				}
	
				else if (phoneCheck == false) {
					alert("전화번호를 확인해주세요.");
					$("#phone").focus();
				} else if (dobCheck == false) {
					alert("생년월일를 확인해주세요.");
					$("#user_birth_year").focus();
				} else if ($("input:radio[name='gender']").is(":checked") == false) {
					alert("성별을 선택해주세요.");
					$("input:radio[name='gender']").focus();
	
				} else if ($("#email").val() == "") {
					alert("이메일을 입력해주세요.");
					$("#email").focus();
				} else if ($("#address").val() == "") {
					alert("주소를 입력해주세요.");
					$("#address").focus();
		
				} else if( emailCheckResult == false){
					alert("이메일을 인증을해주세요.")
					$("#emailId").focus();
					
				}else {
					$("#joinForm").submit();
				}
			}
	
			
			idCheck = false;
			pwdCheck = false;
			pwdCheck2 = false;
			nameCheck = false;
			nickNameCheck = false;
			phoneCheck = false;
			dobCheck = false;
			emailCheckResult= false; 
			emailRnum = "";
			/* emailCheck = false; */
	
			// 중복검사 // 
			$("#userId").keyup(function() {
				var userId = $("#userId").val();
				var idRe = /^[a-z,A-z,0-9]{4,12}$/;
	
				$.ajax({
					url : "/KH_Groupware/checkId.me",
					data : {
						userId : userId
					},
					success : function(data) {
						if (userId == "") {
							$("#checkId").css("color", "#D95F49");
							$("#userId").css("border", "2px solid #D95F49");
							$("#checkId").text("아이디를 입력하세요.");
							idCheck = false;
						} else if (!idRe.test(userId)) {
							$("#checkId").css("color", "#D95F49");
							$("#userId").css("border", "2px solid #D95F49");
							$("#checkId").text("4-12의 영문자,숫자만 입력가능합니다.");
							idCheck = false;
						} else if (data > 0) {
							$("#checkId").css("color", "#D95F49");
							$("#userId").css("border", "2px solid #D95F49");
							$("#checkId").text("중복된 아이디입니다.");
							idCheck = false;
						} else {
							$("#checkId").text("사용가능한 아이디입니다.");
							$("#checkId").css("color", "#489AD8");
							$("#userId").css("border", "2px solid #489AD8");
							idCheck = true;
						}
					}
				});
			});
	
			// modal clodr;
			
			$(function() {
				
				var modal = document.getElementById("myModal");
				
				$(".close").click(function(){
					modal.style.display = "none";
				});
				
				
				window.onclick = function(event) {
					  if (event.target == modal) {
					    modal.style.display = "none";
					  }
				}
			});
			
			
			
			
			// modalBtn
			
			function emailCheck(){
				
				var emailId = $("#emailId").val().trim();
				var emailTail = $("#emailTail").val();

				if(emailId.length <1){
					alert("이메일 아이디를 작성해주세요")	
				    return; 
				}
				
				if(emailTail.length	< 1){
					alert("이메일 주소를 작성해주세요")	
					return;
				}
				
				var userEmail = emailId + "@" + emailTail;
				
				$("#emailAddress").val(userEmail);	
				
				showModal(userEmail);
				
			}
			
			// modal popup
			function showModal(email){
				var modal = document.getElementById("myModal");
				modal.style.display = "block";
				$("#modalUserName").html(email)
				$("#modalMid").val(1);
				$("#modalPoint").val(1);
			}
			
			
			function showEmailGuide(){
				emailCheckResult= false; 
				emailRnum = "";
				$(".emailGuideError").show();	
				$(".emailGuideOk").hide();
			}
			
			
			
			// 이메일 번호 발송 
			function emailSendCheckNum(){
				
				var emailId = $("#emailId").val().trim();
				var emailTail = $("#emailTail").val();	
				var userEmail = emailId + "@" + emailTail;
				
				$.ajax({
					url : "emailCheck.do",
					data : {
						userEmail : userEmail
					},
					success : function(data) {
						if (data != "fail") {
							alert("이메일로 인증번호가 발송되었습니다. 메일을 확인해주세요 test: " + data)
							emailRnum = data; 
						} 
					},
					error : function(request, status, errorData) {
						alert("이메일 전송 시스템에 문제가  있습니다. 관리자에게 문의해주세요");
					}
				});	
				
			};
			

			function emailNumCheck(){
				
				var emailNum = $("#emailNum").val();
				var modal = document.getElementById("myModal");
				if(emailRnum ==emailNum ){
					
					alert("이메일이 인증되었습니다. ");	
				
					emailCheckResult = true; 
					modal.style.display = "none";
					$("#emailNum").val("");
					$(".emailGuideError").hide();	
					$(".emailGuideOk").show();
				
				}else{
					alert("인증번호를 다시 확인해주세요");	
					emailCheckResult = false;
				}
			
			}
			
			
			function SetEmailTail(emailValue) {
				showEmailGuide();
	
				if (emailValue == "notSelected")
					return;
				else if (emailValue == "etc") {
					$("#emailTail").attr("placeholder", ""); 
					$("#emailTail").attr("readonly", false);
					$("#emailTail").val("");
					$("#emailTail").focus();
				} else {
					$("#emailTail").attr("readonly", "true");
					$("#emailTail").val(emailValue);
				}
							
			}
			
			function cancel(){
				location.href="home.do";	
			}
	
			
		</script>
	</div>
	</body>
	
		<footer>
		<jsp:include page ="../common/footer.jsp"/>
	</footer>
	
	</html>
	

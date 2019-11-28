<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
   .centerText table{
      margin: auto;
   }
   
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>   
	<div id="container" style="overflow: auto; height: 800px;" ><!-- container -->

	
	<br><br><br><br><br><br><br>
   <h1 align="center">회원가입</h1>
   
   <div class="centerText">
      <form action="minsert.do" method="post" id="joinForm">
         <table width="500" cellspacing="5">
            <tr>
               <td width="150">* 아이디</td>
               <td width="450">
                  <input type="text" name="userId" id="userId">
               </td>
            </tr>
            <tr>
               <td>* 비밀번호</td>
               <td><input type="password" name="userPwd"></td>
            </tr>
            <tr>
               <td>* 이름</td>
               <td><input type="text" name="userName"></td>
            </tr>
      
            <tr>
               <td>성별</td>
               <td>
                  <input type="radio" name="gender" value="남">남
                  <input type="radio" name="gender" value="여">여
               </td>
            </tr>
            <tr>
               <td>생년월일</td>
               <td><input type="text" name="birthday"></td>
            </tr>
            <tr>
               <td>전화번호</td>
               <td><input type="tel" name="phone"></td>
            </tr>
            <tr>
               <td>이메일</td>
               <td><input type="email" name="email"></td>            
            </tr>
        
            <!-- 이제 주소  input을 작성할 낀데 너무 식상하니~ 심심하네~ 그러니 "API"!를 사용해보자구!
               	주소와 우편번호를 입력할 <input>들을 생성하고 적당한 name과 class를 부여해보드라구! -->
            <tr>
               <td>우편번호</td>
               <td>
                  <input type="text" name="post" class="postcodify_postcode5" value="" size="6">
                  <button type="button" id="postcodify_search_button">검색</button>
               </td>
            </tr>
            <tr>
               <td>도로명 주소</td>
               <td><input type="text" name="address1" class="postcodify_address" value=""></td>
            </tr>
            <tr>
               <td>상세주소</td>
               <td><input type="text" name="address2" class="postcodify_extra_info" value=""></td>
            </tr>
            
            <!-- jQuery와 Postcodify를 로딩하자 -->
            <script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
            <script>
               // 검색 단추를 누르면 팝업 레이어가 열리도록 설정한다.
               $(function(){
                  $("#postcodify_search_button").postcodifyPopUp();
               });
            </script>
            
            <tr>
               <td colspan="2" align="center">
                  <button type="submit">가입하기</button>
                  &nbsp; 
                  <input type="reset" value="취소하기">
               </td>
            </tr>
         </table>
      </form>
      <br><br>
      <a href="home.do">시작 페이지로 이동</a>
      <!-- 작성 후 minsert.do 요청을 처리하는 부분 작성하러 MemberController로 가자. -->
   </div>

	</div>
</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</html>
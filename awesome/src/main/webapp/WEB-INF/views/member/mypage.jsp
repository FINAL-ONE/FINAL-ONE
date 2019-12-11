<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
   .centerText table{
      margin: auto;
   }
   
</style>

</head>
<body>
	
	<jsp:include page ="../common/menubar.jsp"/>
	<div id="container" style="overflow: auto; height: 800px;" ><!-- container -->
	
	
	<h1 align="center">${loginUser.userName }님의 정보 보기</h1>
   
   <div class="centerText">
      <form action="mupdate.do" method="post" id="myinfoupdateForm">
         <table width="500" cellspacing="5">
            <tr>
               <td width="150">* 아이디</td>
               <td width="450">
                  <input type="text" name="userId" id="userId" value="${loginUser.userId}" readonly>
               </td>
            </tr>
            <tr>
               <td>* 이름</td>
               <td><input type="text" name="userName" value="${loginUser.userName }" readonly></td>
            </tr>
      
            <tr>
               <td>성별</td>
               <c:if test="${loginUser.gender eq '남' }">
	               <td>
	                  <input type="radio" name="gender" value="남" checked>남
	                  <input type="radio" name="gender" value="여">여
	               </td>
               </c:if>
               <c:if test="${loginUser.gender eq '여' }">
	               <td>
	                  <input type="radio" name="gender" value="남">남
	                  <input type="radio" name="gender" value="여" checked>여
	               </td>
               </c:if>
               
            </tr>
            <tr>
               <td>생년월일</td>
               <td><input type="text" name="birthday" value="${loginUser.birthday}"></td>
            </tr>
            <tr>
               <td>전화번호</td>
               <td><input type="tel" name="phone" value="${loginUser.phone }"></td>
            </tr>
            <tr>
               <td>이메일</td>
               <td><input type="email" name="email" value="${loginUser.email }"></td>            
            </tr>
        
                       <!-- ,를 기준으로 짤라 처음 값은 addr에 넣고 for문을 돌고 또 다음에 짜른값을 addr에 넣고 또 돌리는식 -->
            <c:forTokens var = "addr" items="${loginUser.address }" delims="," varStatus="status">
	            <c:if test="${status.index eq 0 }">	<!-- index값을 뽑으려면 status.index로 뽑아야한다. addr.index불가능 -->
		            <tr>
		               <td>우편번호</td>
		               <td>
		                  <input type="text" name="post" class="postcodify_postcode5" value="${addr }" size="6">
		                  <button type="button" id="postcodify_search_button">검색</button>
		               </td>
		            </tr>
	            </c:if>
	            <c:if test="${status.index eq 1 }">
		            <tr>
		               <td>도로명 주소</td>
		               <td><input type="text" name="address1" class="postcodify_address" value="${addr }"></td>
		            </tr>
	            </c:if>
	             <c:if test="${status.index eq 2 }">
		            <tr>
		               <td>상세주소</td>
		               <td><input type="text" name="address2" class="postcodify_extra_info" value="${addr }"></td>
		            </tr>
	            </c:if>
             </c:forTokens>
             
            
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
                  <input type="submit" value="수정하기">
 		<!-- mupdate.do 매핑 주소 메소드 만들러 MemberController ㄱㄱ  -->
                  &nbsp; 
				  <c:url var ="mdelete" value ="mdelete.do">
				  	<c:param name="userId" value="${loginUser.userId}"/>
				  </c:url>
				  <a href="${mdelete }"> 탈퇴하기</a>
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
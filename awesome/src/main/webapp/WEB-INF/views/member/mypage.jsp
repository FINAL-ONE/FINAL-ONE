<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
   .centerText table{
      margin: auto;
   }
   
table.type07 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border: 1px solid #ccc;
    margin: auto;
}
table.type07 thead {
    border-right: 1px solid #ccc;
    border-left: 1px solid #ccc;
    background: #CA8687;
}
table.type07 thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #fff;
}
table.type07 tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #fcf1f4;
}
table.type07 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}

#crystalBtn {
    margin: 10px 0px 15px;
    border: 1px solid #CA8687;
    background: #CA8687;
    border-radius: 3px;
    color: #fff;
    text-align: center;
    font-size: 17px;
    font-weight: 500;
    width: 180px;
    height: 50px;
    cursor: pointer;
}

#byebyeBtn {
    background: #A9A9A9;
    border: 1px solid #A9A9A9;
    text-align: center;
    font-size: 17px;
    border-radius: 3px;
     color: #fff; 
    font-weight: 500;
    width: 180px;
    height: 50px;
    cursor: pointer;
}
    #crystalBtn:hover{
    border: 1px solid #383838;
    background: #fff;
    color: #383838;
    }
    
    #byebyeBtn:hover{
    border: 1px solid #383838;
    background: #fff;
    color:#383838;
    }
    
    #userId, #userName{
    background-color: #F5F5F5;
    }
    
</style>

</head>
<body>
	
	<jsp:include page ="../common/menubar.jsp"/>
	
	<br><br><br><div><h1 align="center"><img src="${contextPath}/resources/images/modification.png" style="height: 50px; vertical-align: top">&nbsp;회원 정보수정</h1></div><br>
	
   <div class="centerText">
      <form action="mupdate.do" method="post" id="myinfoupdateForm">
         <table class="type07" width="600 cellspacing="5">
         <thead>
            <tr>
	<th colspan=2 scope="cols"><h2 align="center">${loginUser.userName }님의 정보 보기</h2></th>
            </tr>
            </thead>
            <tbody>
            <tr>
               <th scope="row">* 아이디</th>
               <td>
                  <input type="text" name="userId" id="userId" value="${loginUser.userId}" readonly >
               </td>
            </tr>
           
            <tr>
                <th scope="row">* 이름</th>
               <td><input type="text" name="userName" id="userName" value="${loginUser.userName }" readonly></td>
            </tr>
            <tr>
					<th scope="row">* 비밀번호</th>
					<td><input type="password" name="userPwd" id = "userPwd" value="${loginUser.userPwd}"></td>
				</tr>
            
            <tr>
				<th scope="row">* 닉네임</th>
					<td><input type="text" name="userNickname" value="${loginUser.userNickname}"  readonly></td>
				</tr>
            <tr>
               <th scope="row">성별</th>
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
               <th scope="row">생년월일</th>
               <td><input type="text" name="birthday" value="${loginUser.birthday}" readonly></td>
            </tr>
            <tr>
               <th scope="row">전화번호</th>
               <td><input type="tel" name="phone" value="${loginUser.phone }"></td>
            </tr>
            <tr>
               <th scope="row">이메일</th>
               <td><input type="email" name="email" value="${loginUser.email }"></td>            
            </tr>
        
                       <!-- ,를 기준으로 짤라 처음 값은 addr에 넣고 for문을 돌고 또 다음에 짜른값을 addr에 넣고 또 돌리는식 -->
            <c:forTokens var = "addr" items="${loginUser.address }" delims="," varStatus="status">
	            <c:if test="${status.index eq 0 }">	<!-- index값을 뽑으려면 status.index로 뽑아야한다. addr.index불가능 -->
		            <tr>
		               <th scope="row">우편번호</th>
		               <td>
		                  <input type="text" name="post" class="postcodify_postcode5" value="${addr }" size="6">
		                  <button type="button" id="postcodify_search_button">검색</button>
		               </td>
		            </tr>
	            </c:if>
	            <c:if test="${status.index eq 1 }">
		            <tr>
		               <th scope="row">도로명 주소</th>
		               <td><input type="text" name="address1" class="postcodify_address" value="${addr }"></td>
		            </tr>
	            </c:if>
	             <c:if test="${status.index eq 2 }">
		            <tr>
		               <th scope="row">상세주소</th>
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
            
            </tbody>
         </table>
         <br><br>
            <div colspan="2" align="center">
                  <input type="submit" id = "crystalBtn" value="수정하기">
 		<!-- mupdate.do 매핑 주소 메소드 만들러 MemberController ㄱㄱ  -->
                  &nbsp; 
				  <c:url var ="mdelete" value ="mdelete.do">
				  	<c:param name="userId" value="${loginUser.userId}"/>
				  </c:url>
				  <button type = "button" onclick="aaa()" id ="byebyeBtn" > 탈퇴하기 </button>
               </div>
         
      </form>
      <br><br>
      <a href="home.do">시작 페이지로 이동</a>
      <!-- 작성 후 minsert.do 요청을 처리하는 부분 작성하러 MemberController로 가자. -->
   </div>
<script>
	function aaa(){
		if(confirm('정말 탈퇴 하시겠습니까?')){
			$("#myinfoupdateForm").attr("action", "mdelete.do");
			$("#myinfoupdateForm").submit();
		}else{
			$("#userId").focus();
		}
	}
</script>
	
</body>
</html>
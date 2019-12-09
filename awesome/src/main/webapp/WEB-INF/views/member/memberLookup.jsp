<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<!-- switch버튼 css -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="js/switch-master/css/style.css">	

<style>
#member-content{
	width : 1300px;
	margin-top : 50px;
	margin-left : 200px;
	
}
.membertable{
  border-collapse: collapse;
  border-spacing: 0;
  width: 1300px;
  border: 1px solid #ddd;
  text-align :center;
}
th, td {
  text-align: center;
  padding: 16px;
  
}
tr:nth-child(even) {
  background-color: #f2f2f2;
  cursor : pointer;
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
  /* margin: auto; */
  margin-top : 100px;
  margin-left : 30%;
  padding: 40px;
  border: 1px solid #888;
  width: 40%;

}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
#myBtn{
	width :84px;
	height : 30px;
	font-size : 11px;
}
</style>

</head>
<body>

	<jsp:include page ="../common/menubar.jsp"/>
	<div id="container" style="overflow: auto; height: auto;" ><!-- container -->
	
	<div id ="member-content">
		<h3 align="center">
			총 회원 수 : ${pi.listCount}명
		</h3>
	</div>	
			<table align="center" border="1" cellspacing="1" class ="membertable">
					<tr bgcolor ="#99ccff">
						<th width = "100px" align="center">회원ID</th>
						<!-- <th>회원비밀빈호</th> -->
						<th width="150px">회원이름</th>
						<th width="70px">성별</th>
						<th>생년월일</th>
						<th>핸드폰번호</th>
						<th>이메일</th>
						<th>주소</th>
						<th>포인트</th>
						<th width="70px">가입일</th>
						<th width="70px">수정일</th>
						<th width="70px">탈퇴상태</th>
					<tr>
			
				<c:forEach var="n" items="${list}">
					<tr>
						<td align="center">${n.userId}</td>
						<%-- <td align="center">${n.userPwd}</td> --%>
						<td width="70x">${n.userName}</td>
						<td>${n.gender}</td>
						<td>${n.birthday}</td>
						<td>${n.phone}</td>
						<td>${n.email}</td>
						<td width="400px">${n.address}</td>
						<td>
							<input type="text" value ="${n.point}" style =" width : 80px; text-align:center;" readonly >

							<!-- <input type="button" value="수정" id ="myBtn"> -->
							
							<!-- Trigger/Open The Modal -->
							<button id="myBtn" class="myBtn" onclick="myBtn();">포인트 수정</button>
								<!-- The Modal -->
							
								<div id="myModal" class="modal">
								  <!-- Modal content -->
								  <div class="modal-content">
								    <span class="close">&times;</span>
								    	 <form action="pointUpdate.do" method="post">
									    	<span>${n.userName}님의 포인트를 추가하시겠습니까?</span>
									    	<input type="hidden" value="${n.mid}" name ="mId">
									    	<input type="number" value="${n.point}" name ="point" style ="width : 100px;  text-align:center;">
									    	<input type="submit" value="수정하기">&nbsp;
								    	</form>
								  </div>
								</div>
						</td>
						<td>${n.enrollDate}</td>
						<td>${n.modifyDate}</td>
						<td>${n.status}</td>
		
		<!-- switch버튼 css -->
	       <!-- <div class="css-script-ads" style="margin:30px auto">
		    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
			CSSScript Demo Page
			<ins class="adsbygoogle"
			     style="display:inline-block;width:728px;height:90px"
			     data-ad-client="ca-pub-2783044520727903"
			     data-ad-slot="3025259193"></ins>
			<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
			</script>
		</div> -->
	           <td>
		           <label class="switch">
		             <input type="checkbox" checked>
		             <span></span>
		           </label>
	           </td>
	
				<script>
					  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
					  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
					  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
					  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
					
					  ga('create', 'UA-46156385-1', 'cssscript.com');
					  ga('send', 'pageview');
				</script>

							
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
	
		<script>
			// 포인트 팝업 모달
			// Get the modal
			var modal = document.getElementById("myModal");
			
			// Get the button that opens the modal
			/* var btn = document.getElementById("myBtn"); */
			var btn = document.getElementsByClassName("myBtn")[0];
			
			// Get the <span> element that closes the modal
			var span = document.getElementsByClassName("close")[0];
			
			// When the user clicks the button, open the modal 
			btn.onclick = function() {
			  modal.style.display = "block";
			}
			// When the user clicks on <span> (x), close the modal
			span.onclick = function() {
			  modal.style.display = "none";
			}
			
			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
			  if (event.target == modal) {
			    modal.style.display = "none";
			  }
			}
			
		</script>
</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>

</html>
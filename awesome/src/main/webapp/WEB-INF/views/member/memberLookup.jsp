<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<!-- switch버튼 css -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="js/switch-master/css/style.css">


 <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
        <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
		<script src="js/Export-Html-Table-To-Excel-Spreadsheet-using-jQuery-table2excel/src/jquery.table2excel.js"></script>
<style>
#member-content{
	width : 1400px;
	margin-top : 50px;
	/* background : yellow; */
	margin-left : 60px;
	margin-bottom: 10px;
}
.membertable{
  border-collapse: collapse;
  border-spacing: 0;
  width: 1400px;
  border: 1px solid #ddd;
  text-align :center;
}


th, td {
  text-align: center;
  padding: 16px;
}
tr:nth-child(even) {
  background-color: #f2f2f2;
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

/*포인트 수정 버튼 css  */
.myBtn{
	width :80px;
	height : 30px;
	font-size : 13px;
	border-radius: 4px;
	background-color: #4CAF50;
	border: none;
	color: #FFFFFF;
	text-align: center;
	padding: 6px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 3px;
}

.myBtn span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.myBtn span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.myBtn:hover span {
  padding-right: 25px;
}

.myBtn:hover span:after {
  opacity: 1;
  right: 0;
}
</style>

</head>
<body>

	<jsp:include page ="../common/menubar.jsp"/>
	<div id="container" style="overflow: auto; height: auto;" ><!-- container -->
	
	<div id ="member-content">
		<span align="left" style ="font-size : 20px; font-weight: bold; margin-right :875px;">
			총 회원 수 : ${pi.listCount}명
		</span>

		<span style ="margin-left : 200px;"><!-- <img src="resources/images/excel.png"> --></span>
		<button id = "ExportBtn" class="btn btn-success"><img src="resources/images/excel.png" alt="">엑셀로 내려받기</button>
	</div>	
	
			<table align="center" border="1" cellspacing="1" class ="membertable" id="table2excel">
					<tr bgcolor ="#fa4a4a" style = "color : white" class="noExl">
						<th width = "100px" align="center">회원ID</th>
						<!-- <th>회원비밀빈호</th> -->
						<th width = "130px">회원이름</th>
						<th width = "80px">성별</th>
						<th width = "120px">생년월일</th>
						<th width = "120px">핸드폰번호</th>
						<th>이메일</th>
						<th width = "300px">주소</th>
						<th width = "120px">포인트</th>
						<th width = "160px">가입일</th>
						<th width = "160px">수정일</th>
						<th width = "140px">탈퇴상태</th>
						<!-- <th>탈퇴처리</th> -->
					</tr>
				<c:forEach var="n" items="${list}">
					<tr class="active">
						<td align="center">${n.userId}</td>
						<%-- <td align="center">${n.userPwd}</td> --%>
						<td>${n.userName}</td>
						<td>${n.gender}</td>
						<td>${n.birthday}</td>
						<td>${n.phone}</td>
						<td>${n.email}</td>
						<td>${n.address}</td>
						<td>
							<input type="text" value ="${n.point}" style =" width : 80px; text-align:center;" readonly >

							<!-- <input type="button" value="수정" id ="myBtn"> -->
							
							<!-- Trigger/Open The Modal -->
							<button id="myBtn" class="myBtn success" onclick="myBtn();"><span>수정</span></button>
								<!-- The Modal -->
							
								<div id="myModal" class="modal">
								  <!-- Modal content -->
								  <div class="modal-content">
								    <span class="close">&times;</span>
							    	 	<c:forEach var="nl" items="${list}" varStatus="status">
											<%-- ${fn:length(list)} --%>

									    	 <form action="pointUpdate.do" method="post">
										    	<span>${nl.userName}님의 포인트를 추가하시겠습니까?</span>
										    	<input type="hidden" value="${nl.mid}" name ="mId">
										    	<input type="number" value="${nl.point}" name ="point" style ="width : 100px;  text-align:center;">
										    	<input class="myBtn success" type="submit" value="수정하기">&nbsp;
									    	</form>
								    	</c:forEach>
								  </div>
								</div>
						</td>
						<td>${n.enrollDate}</td>
						<td>${n.modifyDate}</td>
						<%-- <td>${n.status}</td> --%>
		
		           <td>
		           	   <c:if test="${n.status eq 'Y'}">
				           <label class="switch">
				             <input type="checkbox" checked disabled>
				             <span></span>
				           </label>
		           	   </c:if>
		           	   <c:if test="${n.status eq 'N'}">
				           <label class="switch">
				             <input type="checkbox" disabled>
				             <span></span>
				           </label>
		           	   </c:if>
		           </td>
							
					</tr>
					</c:forEach>
				
		
					
				<!-- 페이징 부분 -->
				<tr align ="center" height ="20">
					<td colspan="12">
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
	
	
	
		<!-- switch script -->
		<script>
			  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
			
			  ga('create', 'UA-46156385-1', 'cssscript.com');
			  ga('send', 'pageview');
		</script>
		
		
		
		<script>
			// 포인트 팝업 모달
			// Get the modal
			var modal = document.getElementById("myModal");
			var list1 = new Array();

			for (var i = 0; i < list1.length; i++) {
			    alert(list1[i]);
			}

			// Get the button that opens the modal
			/* var btn = document.getElementById("myBtn"); */
			var btn = document.getElementsByClassName("myBtn")[i];
		
			
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
		
<!-- 엑셀로 다운받기 -->	
<script type="text/javascript" src="https://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
		
	<!-- 엑셀로 다운받기 -->
	<script>
		$(function() {
			$("#ExportBtn").click(function(){
			$("#table2excel").table2excel({
				exclude: ".noExl",
				name: "Excel Document Name"
			}); 
			 });
		});
	</script>
	<script>
		try {
		  fetch(new Request("https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js", { method: 'HEAD', mode: 'no-cors' })).then(function(response) {
		    return true;
		  }).catch(function(e) {
		    var carbonScript = document.createElement("script");
		    carbonScript.src = "//cdn.carbonads.com/carbon.js?serve=CK7DKKQU&placement=wwwjqueryscriptnet";
		    carbonScript.id = "_carbonads_js";
		    document.getElementById("carbon-block").appendChild(carbonScript);
		  });
		} catch (error) {
		  console.log(error);
		}
	</script>
	<script>
	
	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-36251023-1']);
	  _gaq.push(['_setDomainName', 'jqueryscript.net']);
	  _gaq.push(['_trackPageview']);
	
	  (function() {
	    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();
	</script>
		
		
		
		
</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>

</html>
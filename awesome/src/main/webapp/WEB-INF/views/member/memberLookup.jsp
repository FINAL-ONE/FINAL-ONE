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

<!-- Excel 다운받기 (크롤링 기법) -->
 <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
        <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
		<script src="js/Export-Html-Table-To-Excel-Spreadsheet-using-jQuery-table2excel/src/jquery.table2excel.js"></script>


<style>



#member-content{
	width : 1400px;
	margin-top : 20px;
	/* background : yellow; */
	margin-left : 180px;
	margin-bottom: 10px;
}
.membertable{
  border-collapse: collapse;
  border-spacing: 0;
  width: 1400px;
  border: 1px solid #ddd;
  text-align :center;
  	margin-left : 180px;
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

.pagingArea button {
	  border: 1px solid #dcdcdc;
	  outline: none;
	  padding: 6px 12px;
	  cursor: pointer;
	  background: white;
	  font-size: 13px;
      color: #828282;
}
</style>

</head>
<body>

	<jsp:include page ="../common/menubar.jsp"/>
		
		
	<div id="container" style="overflow: auto; height: auto;" ><!-- container -->

		<div id ="member-content">
			<span align="left" style ="font-size : 20px; font-weight: bold; margin-right :450px;">
				총 회원 수 : ${pi.listCount}명
			</span>
			<span style ="font-size : 25px; font-weight: bold; margin-right : 318px;"> 회원 관리 </span>
			<span style ="margin-left : 200px;"></span>
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
								<input type="hidden" value="${n.mid}" name ="mId">
								<input type="hidden" value="${n.userId}" name ="userId">
								<!-- Trigger/Open The Modal -->
								<button  type="button" id="myBtn" class="myBtn success" onclick="showModifyPoint(${n.mid}, '${n.userName}', ${n.point});"><span>수정</span></button>
									<!-- The Modal -->
								
									<div id="myModal" class="modal">
									  <!-- Modal content -->
									  <div class="modal-content">
									    <span class="close">&times;</span>
									    	 <form action="pointUpdate.do" method="post">
										    	<span><b id=modalUserName> </b>님의 포인트를 추가하시겠습니까?</span>
										    	<input id="modalMid" type="hidden" value="" name ="mId" >
										    	<input id="modalPoint" type="number" value="" name ="point" style ="width : 100px;  text-align:center;">
										    	<input class="myBtn success" type="submit" value="수정하기">&nbsp;
									    	</form>
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
					</table>
					<br>	
						
					<!-- 페이징 부분 -->
					 <div class="pagingArea" align="center">
				         <!-- 맨 처음으로(<<) -->
				         <button onclick="location.href='memberLookup.do?page=1'"> << </button>
       
        					<!-- 이전 페이지로(<) -->
					        <c:if test="${pi.currentPage <= 1 }">
					            <button disabled> < </button>
					        </c:if>
					         <c:if test="${pi.currentPage > 1 }">
					         
					            <button onclick="location.href='memberLookup.do?page=${pi.currentPage -1}'"> < </button>
					        </c:if>
        
						<!-- 10개의 페이지 목록 -->
				         <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
				           <c:if test="${pi.currentPage == p }">
				               <button style="background:#ec434a;color:white" disabled >${p}</button>
				           </c:if>
				            <c:if test="${pi.currentPage != p }">
				               <button onclick="location.href='memberLookup.do?page=${p}'">${p}</button>
				            </c:if>
				       </c:forEach>
				       
				         <c:if test="${pi.currentPage >= pi.maxPage }">
			            	<button disabled> > </button>
			          	</c:if>
				          <c:if test="${pi.currentPage < pi.maxPage }">
				            <button onclick="location.href='memberLookup.do?page=${pi.currentPage + 1}'"> > </button>
				          </c:if>
					     
					     <!-- 맨 끝으로(>>) -->
    					<button onclick="location.href='memberLookup.do?page=${pi.maxPage}'"> >> </button>
     
					</div> <!-- 페이징 부분 -->
			</div> <!-- container -->
			
			<!-- switch script -->
			<script>
				  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
				  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
				  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
				  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
				
				  ga('create', 'UA-46156385-1', 'cssscript.com');
				  ga('send', 'pageview');
			</script>
			
			
			<!-- 포인트 수정 script   -->
			<script>
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
				
				
				function showModifyPoint(mId, userName, point){
					showModal(mId , userName, point );
					/* modal.style.display = "block"; */
				}
				
				function showModal(mId, userName, point){
					var modal = document.getElementById("myModal");
					modal.style.display = "block";
					$("#modalUserName").html(userName)
					$("#modalMid").val(mId);
					$("#modalPoint").val(point);
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
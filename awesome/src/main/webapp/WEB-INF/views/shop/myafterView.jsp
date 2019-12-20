<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Star Rating -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- 모달 -->
<link href="js/Modal.js-master/build/css/modal.css" rel="stylesheet">
    
<style>
.outer{
	width : 100%;
	height : 100%;
}


/* 상품 후기  */
#afterWrite{
  border-collapse: collapse;
  border-spacing: 0;
  width: 1300px;
  border: 1px solid #ddd;
  text-align :center;
}
#afterWrite th, td {
  text-align: center;
  padding: 16px;
  
}
tr:nth-child(even) {
  background-color: #f2f2f2;
}
  
#afterWriteBtn{
	float: right;
	margin-bottom: 20px;
	
}
/* 별점  */
.fa-star{
	color : dark-gray;
}
.checked {
  	color: orange;
}


#afterAvgForm{
	/* background : red; */
	width : 200px;
	height : 30px;
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



/* 모달 팝업 */
#updatenmodal {
		display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.4); /* Black w/ opacity */

}

#updatenmodal .login_modal_content {
  		background-color: #fefefe;
        margin: 15% auto; /* 15% from the top and centered */
        padding: 20px;
        border: 1px solid #888;
        width: 30%; /* Could be more or less, depending on screen size */ 
}
.login_modal_content{
		text-align:center; 
		width: 500px;
		height: 500px;
		margin-top: 100px;
		margin-left: auto;
		margin-right: auto;
}
.close{
	display : inline-block;
	float : right;
	color: #aaaaaa;
  	font-size: 28px;
  	font-weight: bold;
}		
.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

</style>


</head>
<body>

<jsp:include page ="../common/menubar.jsp"/>

	<div id="container" style="overflow: auto; height: auto;" ><!-- container -->
		<div class = "outer">
			<div id ="afterWriteDiv" style="margin-left : 790px; margin-top : 20px;">
				<span align="center" style="font-size : 30px; font-weight: bold;"> 후기리뷰 </span>
					
					 <form id = "afterAvgForm" action="stargIdSelect.do" method="post" enctype="Multipart/form-data">
						<c:forEach var="mflist" items="${mflist}">
							<input id="aGid" type="hidden" name="gId">
						</c:forEach>		
					 </form>
			</div>
			
			<table align="center" id ="afterWrite" class= "ediTable" border="1" cellspacing="1">
				<tr bgcolor ="#fa4a4a" style = "color : white">
					<th width ="200px">후기사진</th>
					<th width ="200px">상품명</th>
					<th width ="400px">후기내용</th>
					<th width ="200px">작성자</th>
					<th width ="200px">별점</th>
					<th width ="200px">작성일</th>
					<th width ="150px">수정</th>
					<th width ="150px">삭제</th>
				</tr>
				<c:forEach var="mflist" items="${mflist}">
				
					<tr>
						<td><img src="resources/afteruploadFiles/${mflist.ref_filePath}" width ="150px" height ="150px"></td>
				 		<td>${mflist.goodsTitle}</td>
						<td>${mflist.rContent}</td>
						<td>
							${mflist.userId }
							<%-- <c:if test="${sessionScope.loginUser.userId eq 'admin' }">
								<c:out value = "${loginUser.userName }"/>
							</c:if> --%>
						</td>
						
						<td>
							 <c:if test="${mflist.sellStart eq '1'}">
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
							</c:if>
					      	 <c:if test="${mflist.sellStart eq '2'}">
							   	   <span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
					      	 </c:if>
					    
					      	 <c:if test="${mflist.sellStart eq '3'}">
							   	    <span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
					      	 </c:if>
					      	 <c:if test="${mflist.sellStart eq '4'}">
							   	    <span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
					      	 </c:if>
					      	 <c:if test="${mflist.sellStart eq '5'}">
							   	    <span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
					      	 </c:if>
						</td>
						<td><c:out value = "${mflist.createDate }"/></td>
						<td>
							<button class="myupdate-btn" type="button" style="width : 110px; height : 40px;" onclick="updateForm();">수정하기</button>	
						</td>
						<td>
							<button id="mydelet-btn" onclick="test();">삭제하기</button>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>

	</div>
	
	<div id="updatenmodal">
	    <div class="login_modal_content">
			<b style="font-size:36px">LOGIN</b>	
	    	<span class="close">&times;</span>
			<br><br>
			<p style="font-size: 13px; color:#888888; font-weight: bold;line-height:1.5">
				AWESOME의 다양한 서비스를 이용하시려면 로그인을 해주세요.<br>
				회원가입을 하시면 다양한 서비스를 받으실 수 있습니다<br><br>
			</p>
	        <form id= "loginForm" action="login.do" method="post">



			</form>
	       <br><br>
			<p style="color:#666666; font-size:12px; margin:0px; line-height:1.5">
			문제가 있거나 문의 사항이 있으시면 아래의 주소로 문의하시기 바랍니다.<br>
			고객지원: <a href="">hokwan92@naver.com</a> 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</p>
	    </div>
	   
	    <div class="login_modal_layer"></div>
	</div>
	
	
	
	
	
	<!-- 수정하기 모달  -->
	<script>
			function updateForm(){
				alert('클릭11');
				Modal.confirm({
					  title: '로그인여부',
					  message: '로그인 하시겠습니까?',
					  onConfirm: function() {
						  $("#updatenmodal").attr("style", "display:block");
						 
			  		},
					  onCancel: function() {
			  		},
				});
		       
		    };
		   
		     $(".close").click(function(){
		        $("#updatenmodal").attr("style", "display:none");
		    });      
		     

	</script>
		
		
</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</body>
</html>
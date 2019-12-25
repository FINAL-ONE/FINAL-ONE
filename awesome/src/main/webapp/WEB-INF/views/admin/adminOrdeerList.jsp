<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">
<title>Insert title here</title>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<!-- switch버튼 css -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="js/switch-master/css/style.css">

<!-- Excel 다운받기 (크롤링 기법) -->
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<script src="js/Export-Html-Table-To-Excel-Spreadsheet-using-jQuery-table2excel/src/jquery.table2excel.js"></script>

<!-- 프린트하기  -->
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" href="js/jQuery-Plugin-To-Print-Any-Part-Of-Your-Page-Print/demo/css/normalize.min.css">


<!-- alert창 css -->
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style type='text/css'>


<style>
#member-content{
	width : 1400px;
	margin-top : 50px;
	/* background : yellow; */
	margin-left : 200px;
	margin-bottom: 10px;
}
.membertable{
  border-collapse: collapse;
  border-spacing: 0;
  width: 1400px;
  border: 1px solid #ddd;
  text-align :center;
  	margin-left : 200px;
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
  width: 450px;
	left : 8%;
	top : 5%;
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
#myBtn, .myBtn{
   width :100px;
   height : 35px;
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

#myBtn span, .myBtn span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

#myBtn span:after, .myBtn span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

#myBtn:hover span, .myBtn:hover span {
  padding-right: 25px;
}

#myBtn:hover span:after, .myBtn:hover span:after {
  opacity: 1;
  right: 0;
}

/* 출력하기 버튼 */
#print-btn{
    width :130px;
   height : 45px;
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
#print-btn:hover{
  	background-color: #219118;
  	color: #FFFFFF;
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

.adminMain-btn, .adminList-btn {
    margin: 10px 0px 15px;
    border: 1px solid #fe6666;
    background: #fe6666;
    border-radius: 2px;
    color: #fff;
    text-align: center;
    font-size: 14px;
    font-weight: 600;
    width: 350px;
    height: 40px;
    cursor: pointer;
}

.adminMain-btn:hover, .adminList-btn:hover{
	background: #fff;
	color: #fe6666;
}	
</style>


</head>
<body>
<jsp:include page ="../common/menubar.jsp"/>
	<div id="container" style="overflow: auto; height: auto;" ><!-- container -->

		<div id ="member-content">
					<p style="marign-top : 40px;">
						<span align="left" style ="font-size : 19px; font-weight: bold; margin-left : 197px; margin-right : 420px;">
							총 주문 수 : ${pi.listCount}명
						</span>
						<span style ="font-size : 25px; font-weight: bold; margin-right : 310px;"> 관리자 주문 리스트 </span>
						<button id = "print-btn" class="print-link no-print" onclick="jQuery('#ele1').print()"><img src="resources/images/printer.png" alt="" style="width : 25px; height:25px;">&nbsp;&nbsp;출력하기</button>
						<span style ="margin-left : 2px;"><!-- <img src="resources/images/excel.png"> --></span>
						<button id = "ExportBtn" class="btn btn-success"><img src="resources/images/excel.png" alt="">&nbsp;엑셀로 내려받기</button>
					</p>
				
			<div id="content_holder">
				<div id="ele1" class="a">
					<table align="center" border="1" cellspacing="1" class ="membertable" id="table2excel">
							<tr bgcolor ="#fa4a4a" style = "color : white" class="noExl">
								<th width = "130px" align="center">주문일자<br>[주문번호]</th>
								<th width = "130px">상품명</th>
								<th width = "80px">수량</th>
								<th width = "120px">주문자명</th>
								<th width = "120px">핸드폰번호</th>
								<!-- <th>이메일</th> -->
								<th width = "300px">주소</th>
								<th width = "120px">주문금액</th>
								<th width = "160px">진행상태</th>
							</tr>
						<c:forEach var="aol" items="${adminOrderlist}">
							<tr class="active">
								<td align="center">${aol.orderNum}</td>
								<td>${aol.gName}</td>
								<td>${aol.orderCount}</td>
								<td>${aol.userName}</td>
								<td>${aol.phone}</td>
								<%-- <td>${aol.email}</td> --%>
								<td>${aol.address}</td>
								<td>${aol.orderPrice}</td>
								<td>
									<c:if test = "${aol.orderStatus eq 'B'}">
										<span style="color : black; font-size : 14px; font-weight: bold;">배송 전</span>
									</c:if>
									<c:if test = "${aol.orderStatus eq 'I'}">
										<span style="color : orange; font-size : 14px; font-weight: bold;">배송 중</span>
									</c:if>
									<c:if test = "${aol.orderStatus eq 'C'}">
										<span style="color : blue; font-size : 14px; font-weight: bold;">배송 완료</span>
									</c:if>
									<c:if test = "${aol.orderStatus eq 'X'}">
										<span style="color : red; font-size : 14px; font-weight: bold;">주문 취소</span>
									</c:if>
								
								<br>
								
								
								<c:if test="${aol.orderStatus eq 'B'}">
								<button type="button" id ="orderStatusUpdate-btn" class="myBtn success" onclick="showModifyStatus(${aol.orderNum},'${aol.orderStatus}')"><span>배송변경</span></button>
								</c:if>
								
								 <c:if test="${aol.orderStatus eq 'I'}">
						         	<button class="btn btn-danger demo-1" id="myBtn"><span>배송변경</span></button>
								</c:if>
								
								<c:if test="${aol.orderStatus eq 'C'}">
						         	<button class="btn btn-danger demo-2" id="myBtn"><span>배송변경</span></button>
								</c:if>
								
								<c:if test="${aol.orderStatus eq 'X'}">
						         	<button class="btn btn-danger demo-3" id="myBtn"><span>배송변경</span></button>
								</c:if>
								
								<!-- Trigger/Open The Modal -->
										<!-- The Modal -->
										
										<div id="myModal" class="modal">
										  <!-- Modal content -->
										  <div class="modal-content">
										    <span class="close">&times;</span>
										    	 <form action="StatusUpdate.do" method="post">
											    	<span>배송 준비를 배송 중으로 변경하시겠습니까?</span><br><br>
											    	<input id="modalNum" type="hidden" value="" name ="orderNum" >
											    	<input id="modalStatus" type="hidden" value="" name ="orderStatus" >
											    	<input class="myBtn success" type="submit" value="변경">&nbsp;
											    	<input id = "cancel" class="myBtn success" type="button" value="취소">&nbsp;
										    	</form>
										  </div>
										</div>
								</td>
									
							</tr>
							</c:forEach>
						</table>
				 	 
				 	 <br>
					 <div class="pagingArea" align="center">	
						 <!-- 맨 처음으로(<<) -->
       						<button onclick="location.href='AdminorderList.do'"> << </button>
						<!-- [이전] -->
						<c:if test="${pi.currentPage <= 1 }">
							<button disabled> < </button>
						</c:if>
						
						<c:if test="${pi.currentPage > 1 }">
							<button onclick="location.href='AdminorderList.do?page=${pi.currentPage -1}'"> < </button>	
						</c:if>
						
						 <!-- 10개의 페이지 목록 -->
				         <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
				           <c:if test="${pi.currentPage == p }">
				               <button style="background:#ec434a;color:white" disabled >${p}</button>
				           </c:if>
				            <c:if test="${pi.currentPage != p }">
				               <button onclick="location.href='AdminorderList.do?page=${p}'">${p}</button>
				            </c:if>
				       </c:forEach>
       
						<!-- [다음]  -->
						<c:if test="${pi.currentPage >= pi.maxPage }">
				            <button disabled> > </button>
				          </c:if>
				          <c:if test="${pi.currentPage < pi.maxPage }">
				            <button onclick="location.href='AdminorderList.do?page=${pi.currentPage + 1}'"> > </button>
				          </c:if>
						          
		                   <!-- 맨 끝으로(>>) -->
         					<button onclick="location.href='AdminorderList.do?page=${pi.maxPage}'"> >> </button>
					</div>
					
				</div>	<!-- ele1 끝 -->
			</div>	<!-- content_holder 끝 -->
			<p align="center" style="margin : 50px 0 50px 0;">
				<button class="adminMain-btn" type="button" style="width : 180px; height : 40px;" onclick="location.href='home.do'">관리자 HOME 이동</button>
			</p>
	
		</div>	<!-- member-content 끝 -->
	</div>	<!-- container -->
	
	
	<!-- alert 창 script  -->
<!-- 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
	<script src="js/eModal-master/dist/eModal.js"></script>
	<script>
		var message1 = "배송이 진행중이라 변경할 수 없습니다.";
		var title1 = "배송 안내";
		 
		
		var message2 = "배송이 완료되었습니다.";
		var title2 = "배송 안내";
		
		
		var message3 = "배송이 취소되었습니다.";
		var title3 = "배송 안내";
		
		$(".demo-1").click(function(){
		    eModal.alert(message1, title1);
		});
		
		$(".demo-2").click(function(){
		    eModal.alert(message2, title2);
		});
		
		$(".demo-3").click(function(){
		    eModal.alert(message3, title3);
	});
	</script>


		
	<!-- alert 창 script  -->	
		<script type="text/javascript">
		
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
		<script type="text/javascript">
		
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
	
		<!-- 엑셀로 다운받기 script -->
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
		
			<!-- 배송 상태 변경 script   -->
		<script>
			$(function() {
				
				var modal = document.getElementById("myModal");
				
				$(".close").click(function(){
					modal.style.display = "none";
				});
				
				$("#cancel").click(function(){
					modal.style.display = "none";
				});
				window.onclick = function(event) {
					  if (event.target == modal) {
					    modal.style.display = "none";
					  }
				}
			});
			
			
			function showModifyStatus(orderNum, orderStatus){
				/* var orderStatus = document.getElementById("orderStatusUpdate-btn); */
				showModal(orderNum);
				/* modal.style.display = "block"; */
			}
			
			function showModal(orderNum){
				var modal = document.getElementById("myModal");
				modal.style.display = "block";
				$("#modalNum").val(orderNum)
				$("#modalStatus").val(orderStatus);
				/* $("#modalPoint").val(point); */
			}
		</script>
		
		
		
		<!-- 프린트로 출력하기  script -->
		<script src="js/jQuery-Plugin-To-Print-Any-Part-Of-Your-Page-Print/jQuery.print.js"></script> 
		<script type='text/javascript'>
            //<![CDATA[
            $(function() {
                $("#ele2").find('.print-link').on('click', function() {
                    //Print ele2 with default options
                    $.print("#ele2");
                });

                $("#ele4").find('button').on('click', function() {
                    //Print ele4 with custom options
                    $("#ele4").print({
                        //Use Global styles
                        globalStyles : false,

                        //Add link with attrbute media=print
                        mediaPrint : false,

                        //Custom stylesheet
                        stylesheet : "http://fonts.googleapis.com/css?family=Inconsolata",

                        //Print in a hidden iframe
                        iframe : false,

                        //Don't print this
                        noPrintSelector : ".avoid-this",

                        //Add this on top
                        append : "Free jQuery Plugins!!!<br/>",

                        //Add this at bottom
                        prepend : "<br/>jQueryScript.net!"
                    });
                });

                // Fork https://github.com/sathvikp/jQuery.print for the full list of options
            });
            //]]>

        </script>
		<script type="text/javascript">
		
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
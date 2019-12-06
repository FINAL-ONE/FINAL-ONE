<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page session="false" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
</head>
<style>
.pagingArea button {
	  border: 1px solid #dcdcdc;
	  outline: none;
	  padding: 6px 12px;
	  cursor: pointer;
	  background: white;
	  font-size: 13px;
      color: #828282;
}

.centerDiv{
	  width:880px;
      margin-left:auto;
      margin-right:auto;
      height: auto;
      padding-left: 40px;
      
}

#orderTable{
	border:none;
	border-top: 1px solid black;
}
.centerDiv #tr td{	
	text-align: center;
	font-weight: 600;
	height: 50px;
	font-size: 14px;
	border-top : none;
    border-left: 0 none;
/*     border-right: 1px solid #d0d0d0; */
    border-bottom: 1px solid #d0d0d0;
  
}

#orderTable td{
	height: 70px;
	border-bottom:  1px solid #d0d0d0;
	font-size: 14px;
	text-align : center;
}


.countBox{
height:170px;
border :5px solid gray;
}


#tb{
height : 170px;
width : 880px;
}

#tb tr td{
font-size : 40px;
font-family:  'Do Hyeon', sans-serif;
text-align: center;
}


#tb tbody tr td{
color : red;
font-size: 30px;
font-weight:bold;
font-family:  'Do Hyeon', sans-serif;
height:0px;
}


</style>
<body>
	<jsp:include page="../common/menubar.jsp" />

<div class = "centerDiv"> 
		<div>
		<h1>주문/배송 조회</h1>
			
	<br>
	<div class="countBox">
		<table id="tb">
		<thead>
		 	<tr>
			<td><img src="resources/images/order.png" style="height:30%; width:33%;"><br>
			배송전
			</td>
			<td><img src="resources/images/delivery2.png" style="height:39%; width:41%; "><br>
			배송중
			</td>
			<td><img src="resources/images/complete.png" style="height:30%; width:33%;"><br>
			배송완료
			</td>
			<td>
			<img src="resources/images/cancel.png" style="height:30%; width:33%;"><br>
			주문취소
			</td>
			</tr> 
			</thead>
			<tbody>
			</tbody>

		</table>
	
	</div>
	<br>
	
			<table align="center" cellspacing="0" width="880px" id="orderTable">
				<tr id="th">
					<td style="width: 150px">주문일자<br>[주문번호]</td>
					<td style="width: 400px" align="center">이미지</td>
					<td style="width: 400px" align="center">상품정보</td>
					<td style="width: 100px">수량</td>
					<td style="width: 100px">주문금액</td>
					<td style="width: 150px">진행상태</td>
				</tr>
				<c:forEach var="t" items="${list }">
					<c:forEach var="r" items="${rowCount }">
							<c:if test="${t.orderNum eq r.orderNum }">
								${r.orderNum }
								${r.rowCount }
							</c:if>
						</c:forEach>
					</c:forEach>
				
				
				
				
				<c:set var="orderNum" value="0" scope="application"/>
				
				<c:forEach var="o" items="${list}">	
					<tr>
					<c:if test ="${applicationScope.orderNum ne o.orderNum}"  > 
							<td rowspan="${o.rowCount }">${o.orderDate }<br>
								<c:url var="odetail" value="orderDetail.do">
									<c:param name="orderNum" value="${o.orderNum}"/>
								</c:url>
								<a href="${odetail }">[${o.orderNum}]</a>
							</td>
					</c:if>
	
					<c:if test="${applicationScope.orderNum eq o.orderNum}">
					
					</c:if>
					<c:set var="orderNum" value="${o.orderNum }" scope="application"/>
						<td>이미지추가</td>
						<td>${o.gName}</td>
						<td>${o.orderCount }</td>
						<td>${o.gPrice * o.orderCount }</td>
						<c:if test = "${o.orderStatus eq 'B'}">
						<td>
						배송전
						</td>
						</c:if>
						<c:if test = "${o.orderStatus eq 'I'}">
						<td>배송중</td>
						</c:if>
						<c:if test = "${o.orderStatus eq 'C'}">
						<td>배송완료</td>
						</c:if>
						<c:if test = "${o.orderStatus eq 'X'}">
						<td>주문취소</td>
						</c:if>

					</tr>
				</c:forEach>
				


			</table>
			<br>
				<!-- 페이징처리 하쟈-->
			 <br>
      <div class="pagingArea" align="center">
         <!-- 맨 처음으로(<<) -->
         <button onclick="location.href='orderview.do?page=1'"> << </button>
         
         <!-- 이전 페이지로(<) -->
        <c:if test="${pi.currentPage <= 1 }">
            <button disabled> < </button>
        </c:if>
         <c:if test="${pi.currentPage > 1 }">
         
            <button onclick="location.href='orderview.do?page=${pi.currentPage -1}'"> < </button>
        </c:if>
         
         <!-- 10개의 페이지 목록 -->
         <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
           <c:if test="${pi.currentPage == p }">
               <button style="background:#ec434a;color:white" disabled >${p}</button>
           </c:if>
            <c:if test="${pi.currentPage != p }">
               <button onclick="location.href='orderview.do?page=${p}'">${p}</button>
            </c:if>
       </c:forEach>
	 				
         <c:if test="${pi.currentPage >= pi.maxPage }">
            <button disabled> > </button>
          </c:if>
          <c:if test="${pi.currentPage < pi.maxPage }">
            <button onclick="location.href='orderview.do?page=${pi.currentPage + 1}'"> > </button>
          </c:if>
         
         <!-- 맨 끝으로(>>) -->
         <button onclick="location.href='orderview.do?page=${pi.maxPage}'"> >> </button>
            </div>
			
			<div>
				  
			</div>
			<br><br>
		</div>
		</div>
 		<script>
		function orderCount(){
			$.ajax({
				url:"orderCount.do",
				dataType:"json",
				success:function(data){
					//alert(data);
					$tableBody = $("#tb tbody");
					$tableBody.html(" ");
					
			
						var $tr = $("<tr>");
						var $beforeCount = $("<td>").text(data[0]);
						var $deliverCount = $("<td>").text(data[1]);
						var $completeCount = $("<td>").text(data[2]);
						var $cancelCount = $("<td>").text(data[3]);
					
						$tr.append($beforeCount);
						$tr.append($deliverCount);
						$tr.append($completeCount);
						$tr.append($cancelCount);
						
						$tableBody.append($tr);
					
					
				},
				error:function(request, status, errorData){
					alert("error code: " + request.status + "\n"
							+"message: " + request.responseText
							+"error: " + errorData);
				}
			})
		}
		
		$(function(){
			orderCount();
			
			/* setInterval(function(){
				orderCount();
			}, 5000); */
		})
		</script> 
		


	
</body>

<footer>
	<jsp:include page ="../common/footer.jsp"/>
</footer>

</html>
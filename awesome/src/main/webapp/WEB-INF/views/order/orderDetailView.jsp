<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<style>
.centerDiv {
	width: 880px;
	margin-left: auto;
	margin-right: auto;
	height: auto;
	padding-left: 40px;
}

table {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #d0d0d0;
	margin: 20px 10px;
}

table th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #d0d0d0;
}

table td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #d0d0d0;
}

#backto {
	float: right;
}
</style>
<body>

	<jsp:include page="../common/menubar.jsp" />
	<div class="centerDiv">
		<h1>주문상세조회</h1>
		<h2>주문 번호 : ${orderNum }</h2>
		<br>
		<h4>주문정보</h4>

		<table>
			<tr>
				<td>주문일자</td>
				<td>${list[0].orderDate }</td>


			</tr>
			<tr>
				<td>주문자</td>

				<td>${list[0].userName}</td>


			</tr>
			<tr>
				<td>주문처리상태</td>


				<c:forEach var="o" items="${list }">
					<c:set var="status" value="" />
					<c:if test="${o.orderStatus eq 'B'}">
						<c:set var="status" value="배송전" />
					</c:if>
					<c:if test="${o.orderStatus eq 'C'}">
						<c:set var="status" value="배송완료" />
					</c:if>
					<c:if test="${o.orderStatus eq 'I'}">
						<c:set var="status" value="배송중" />
					</c:if>
				</c:forEach>


				<c:url var="ocancel" value="cancelList.do">
					<c:param name="orderNum" value="${orderNum}" />
				</c:url>

				<td>${status }<br> <c:if test="${status eq '배송중' }">
						<button
							onclick="window.open('https://tracker.delivery/#/kr.cjlogistics/355406187216','window_name','width=430,height=500,location=no,status=no,scrollbars=yes');">배송조회</button>
					</c:if> <c:if test="${status eq '배송완료' }">
						<button
							onclick="window.open('https://tracker.delivery/#/kr.cjlogistics/355406187216','window_name','width=430,height=500, top = 500, left = 500, location=no,status=no,scrollbars=yes');">배송조회</button>
					</c:if> <c:if test="${status eq '배송전' }">
						<script>
							var popupX = (window.screen.width / 2) - 200;
							var popupY = (window.screen.height / 3) - 150;
						</script>
						<button
							onclick="window.open('${ocancel}','window_name','width=430,height=500, left='+ popupX + ', top='+ popupY+',location=no,status=no,scrollbars=yes');">주문취소</button>
					</c:if>
				</td>
			</tr>

		</table>

		<br> <br>
		<h4>결제정보</h4>
		<table >
			<tr>
				<td style="font-weight: bold">총 주문 금액</td>
				<c:set var="total" value="0" />

				<c:forEach var="o" items="${list}">

					<c:set var="total" value="${total + o.gPrice*o.orderCount}" />

				</c:forEach>
				<td style="font-weight: bold">${total }</td>


			</tr>
			<tr>
				<td>포인트 사용 금액</td>
				<td>${list[0].usedPoint}</td>


			</tr>
			<tr>
				<td style="font-weight: bold">총 결제 금액</td>

				<td style="font-weight: bold">${list[0].orderPrice}</td>
			</tr>
		</table>

		<br> <br>
		<h4>상품정보</h4>
		<table id="tb">
			<thead>
				<tr>
					<td>이미지</td>
					<td>상품정보</td>
					<td>수량</td>
					<td>판매가</td>
					<td>주문상태</td>

				</tr>
			</thead>

			<tbody>

			</tbody>
		</table>
		<br>
		<button onclick="location.href='orderview.do'" id="backto">목록으로
			돌아가기</button>
		<br> <br> <br>
		<br>
		<br>
	</div>

	<script>
		function gichan() {
			var orderNum = '${orderNum}';
			$.ajax({
				url : "gichan.do",
				dataType : "json",
				data : {orderNum : orderNum },
				success : function(data) {
					/* $.each(data, function() {
					     alert(this["oId"]);
					     alert(this.gName);

					}); */
					//alert(JSON.stringify(data));
					console.log(data);
						
						$tableBody = $("#tb tbody");
						$tableBody.html("");
					
					for ( var i in data) {
				

						var $tr = $("<tr>");
						var $image = $("<td>").text(data[i].oId);
						var $gName = $("<td>").text(decodeURIComponent(data[i].gName).replace(/\+/g, " "));
						var $orderCount = $("<td>").text(data[i].orderCount);
						var $orderPrice = $("<td>").text(data[i].orderPrice);
						if (data[i].orderStatus == 'B') {
							var $orderStatus = $("<td>").text("배송전");
						}
						if (data[i].orderStatus == 'C') {
							var $orderStatus = $("<td>").text("배송완료");
						}
						if (data[i].orderStatus == 'I') {
							var $orderStatus = $("<td>").text("배송중");
						}
						if (data[i].orderStatus == 'X') {
							var $orderStatus = $("<td>").text("주문취소");
						}

						$tr.append($image);
						$tr.append($gName);
						$tr.append($orderCount);
						$tr.append($orderPrice);
						$tr.append($orderStatus);

					
						$tableBody.append($tr);	
						
					}
				},
				error : function(request, status, errorData) {
					alert("error code: " + request.status + "\n" + "message: "
							+ request.responseText + "error: " + errorData);
				}
			})
		}
		
		$(function(){
			gichan();
			
			 setInterval(function(){
				gichan();
			}, 5000);  
		})
	</script>

</body>
<footer>
	<jsp:include page="../common/footer.jsp" />
</footer>
</html>
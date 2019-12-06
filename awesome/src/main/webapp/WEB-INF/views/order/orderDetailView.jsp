<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">

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

.table {
	width : 100%;
	border-collapse: separate;
	border-spacing: 1px;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #d0d0d0;
	margin: 20px 10px;
}

.table th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #d0d0d0;
}

.table td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #d0d0d0;
}


#backto {
	float: right;
}
/* 
table tbody	{
	display: table-row-group;
    width: 100%;
} */

#tb{
text-align: center;
}

.countBox{
height:170px;
border :5px solid gray;
}

.countBox td{
	font-family:Fantasy;}


#box{
height : 170px;
width : 880px;
}

#box tr td{
font-size : 40px;
text-align: center;

font-family:  'Do Hyeon', sans-serif;
}


#box tbody tr td{
color : red;
font-size: 30px;
font-weight:bold;
font-family:  'Do Hyeon', sans-serif;
height:0px;
}

#cancel a {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	display: block;
	max-width: 100px;
	text-decoration: none;
	border-radius: 4px;
	padding: 10px 20px;
}

#back a {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	display: block;
	max-width: 200px;
	text-decoration: none;
	border-radius: 4px;
	padding: 10px 20px;
}


a.button {
	color: gray;
	box-shadow: gray 0 0px 0px 2px inset;
}

a.button:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: #fa4a4a 0 80px 0px 2px inset;
}

</style>
<body>

	
	<jsp:include page="../common/menubar.jsp" />
	
	
	<div class="centerDiv">
	


		<br><br>
		<div class="countBox">
		<table id="box">
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
			<h1>주문상세조회</h1>
		
		<h2>주문 번호 : ${orderNum }</h2>
		<br>
		<h4>주문정보</h4>

		<table id="info" class="table">
			<thead>
				<tr>
					<td>주문일자</td>
					<td>${list[0].orderDate }</td>


				</tr>
				<tr>
					<td>주문자</td>

					<td>${list[0].userName}</td>


				</tr>
			</thead>

			</tr> 
 
			<tbody>
		 			<c:url var="ocancel" value="cancelList.do">
				<c:param name="orderNum" value="${orderNum}" />
			</c:url>
			</tbody>
		</table>
		<c:set var="status" value="" />
		<c:forEach var="o" items="${list }">
					<c:if test="${o.orderStatus eq 'B'}">
						<c:set var="status" value="배송전" />
					</c:if>
				</c:forEach>
				<c:if test="${status eq '배송전' }">
		<!-- <button onclick="cancel()">주문쥐소하기</button> -->
		<div align="right" id="cancel">
  			<a onclick="cancel()" class="button">주문취소하기</a>
		</div>
		</c:if>
		<br><br>
		<h4>배송지정보</h4>
		<table class="table">
			<tr>
				<td>받으실분</td>
				<td>${list[0].userName }</td>
				
				
			</tr>
			<tr>
				<td>배송지주소</td>
				<td>${list[0].address }</td>
				
			</tr>
			<tr>
				<td>연락처</td>
				<td>${list[0].phone }</td>	
			</tr>
		</table>
		
		
		<br> <br>
		<h4>결제정보</h4>
		<table class="table">
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
		<table class="table" id="tb" text-align="center">
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
		<div align="right" id="back">
  			<a onclick="location.href='orderview.do'" class="button" id="backto">주문조회 페이지로 이동</a>
		</div>
		<!-- <button onclick="location.href='orderview.do'" id="backto">주문조회 페이지로 이동</button> -->
		<br>
		
		
		<br> <br> <br> <br> <br>
	</div>

	<script>
		function gichan() {
			var orderNum = '${orderNum}';
			$.ajax({
				url : "gichan.do",
				dataType : "json",
				data : {
					orderNum : orderNum
				},
				success : function(data) {

					$tableBody = $("#tb tbody");
					$tableBody.html("");

					for ( var i in data) {

						var $tr = $("<tr>");
						var $image = $("<td>").text(data[i].oId);
						var $gName = $("<td>").text(
								decodeURIComponent(data[i].gName).replace(
										/\+/g, " "));
						var $orderCount = $("<td>").text(data[i].orderCount);
						var $orderPrice = $("<td>").text(data[i].gPrice*data[i].orderCount);
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
						
						$tableBody2 = $("#info tbody");
						$tableBody2.html("");
						
						for ( var i in data) {
							
						}
						var $tr2 = $("<tr>");
						var $title = $("<td>").text("주문상태");

						if (data[i].orderStatus == 'B') {
							var $status = "배송전";
						}
						if (data[i].orderStatus == 'C') {
							var $status = "배송완료";
						}
						if (data[i].orderStatus == 'I') {
							var $status = "배송중";
						}

						switch ($status) {
					
						case "배송중":
							var $show = $("<td id='st'>").text($status);
							var $button = $("<button>").text("배송조회").attr("onclick","delivery()");	

						case "배송완료":
							var $show = $("<td id='st'>").text($status);
							var $button = $("<button>").text("배송조회").attr("onclick","delivery()");	
						
						case "배송전":
							var $show = $("<td id='st'>").text($status);
						
			
						}
						

					}
				
					$show.append($button);
					$tr2.append($title);
					$tr2.append($show);
					$tableBody2.append($tr2);
				},
				error : function(request, status, errorData) {
					alert("error code: " + request.status + "\n" + "message: "
							+ request.responseText + "error: " + errorData);
				}
			})
		}

		
		function orderCount(){
			$.ajax({
				url:"orderCount.do",
				dataType:"json",
				success:function(data){
					//alert(data);
					$tableBody = $("#box tbody");
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
	
		$(function() {
			gichan();
			orderCount();

			setInterval(function() {
				gichan();
				orderCount();
			}, 5000);
		})
		
		function cancel(){
			var popupX = (window.screen.width / 2) - 200;
			var popupY = (window.screen.height / 3) - 150;
			
			window.open('${ocancel}','window_name','width=430,height=500, left='+ popupX + ', top='+ popupY+',location=no,status=no,scrollbars=yes');
			
			
		};
		
		function delivery(){
			window.open('https://tracker.delivery/#/kr.cjlogistics/355406187216','window_name','width=430,height=500, top = 500, left = 500, location=no,status=no,scrollbars=yes');
		}
	</script>

</body>
<footer>
	<jsp:include page="../common/footer.jsp" />
</footer>
</html>
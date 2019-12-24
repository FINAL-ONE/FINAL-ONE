<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">

<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">
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

#cancel {
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

#back  {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	display: block;
	max-width: 180px;
	height : 20px;
	text-decoration: none;
	border-radius: 4px;
	padding: 10px 20px;
}
#view  {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	max-width: 65px;
	text-decoration: none;
	border-radius: 4px;
	padding: 5px 10px;
	margin-left: 8px;
}
#view2  {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	max-width: 65px;
	text-decoration: none;
	border-radius: 4px;
	padding: 5px 10px;
	margin-left: 8px;
}

#complete  {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	max-width: 65px;
	text-decoration: none;
	border-radius: 4px;
	padding: 5px 10px;
	margin-left: 8px;
}
#view.button {
	color: gray;
	box-shadow: gray 0 0px 0px 2px inset;
}

#view.button:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: #fa4a4a 0 80px 0px 2px inset;
}

#view2.button {
	color: gray;
	box-shadow: gray 0 0px 0px 2px inset;
}

#view2.button:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: #fa4a4a 0 80px 0px 2px inset;
}

#back {
	color: gray;
	box-shadow: gray 0 0px 0px 2px inset;
}

#back:hover{
	color: rgba(255, 255, 255, 0.85);
	box-shadow: #fa4a4a 0 80px 0px 2px inset;
}

#cancel {
	color: gray;
	box-shadow: gray 0 0px 0px 2px inset;
}

#cancel:hover{
	color: rgba(255, 255, 255, 0.85);
	box-shadow: #fa4a4a 0 80px 0px 2px inset;
}
#font{
	font-size:50px;
	font-weight: bolder;
}

#complete {
	color: gray;
	box-shadow: gray 0 0px 0px 2px inset;
}

#complete:hover{
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
			<td><img src="resources/images/order3.png" style="height:15%; width:40%; "><br>
			배송전
			</td>
			<td><img src="resources/images/delivery3.png" style="height:15%; width:40%; "><br>
			배송중
			</td>
			<td><img src="resources/images/complete3.png" style="height:15%; width:40%; "><br>
			배송완료
			</td>
			<td>
			<img src="resources/images/cancel3.png" style="height:15%; width:40%; "><br>
			주문취소
			</td>
			</tr> 
			</thead>
			<tbody>
			</tbody>

		</table>
	
	</div>
	<br><br>
	<div id="font">
	
		주문상세조회
		</div>
		<h2 style="font-size: 30px">주문 번호 : ${orderNum }</h2>  
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
		<div align="right">
  			<a onclick="cancel()" class="button"  id="cancel">주문취소하기</a>
		</div>
		</c:if>
		<br><br>
		<h4>수정해야합니당</h4>
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
		<div align="right">
  			<a onclick="location.href='orderView.do'" class="button" id="back">주문조회 페이지로 이동</a>
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
    					var filePath = data[i].filePath;
						var $tr = $("<tr>");
						var $image = $("<td>");
						var $br = $("<br>");
						var $path=$("<img src='resources/auploadFiles/"+filePath  + "'  style='height:200px; width:150px;'>")
						var $gInfo = $("<td>");
						var $gTitle = decodeURIComponent(data[i].goodsTitle).replace(/\+/g, " ");
						var $gName = decodeURIComponent(data[i].gName).replace(/\+/g, " ");
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

						$image.append($path);
						$tr.append($image);
						$gInfo.append("<"+$gTitle+">");
						$gInfo.append($br);
						$gInfo.append($gName);
						$tr.append($gInfo);
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
							var $button = $("<a id='view' class='button'>").text("배송조회").attr("onclick","delivery()");	
							var $button2 = $("<a id='complete' class='button'>").text("구매확정").attr("onclick","complete()");	

						case "배송완료":
							var $show = $("<td id='st'>").text($status);
							var $button = $("<a id='view2' class='button'>").text("배송조회").attr("onclick","delivery()");	
						
						case "배송전":
							var $show = $("<td id='st'>").text($status);
						
			
						}
						

					}
				

					$show.append($button);
					$show.append($button2);
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
		
		function complete(){
			var orderNum = '${orderNum}';
			var usedPoint = ${list[0].usedPoint};
			var	orderPrice = ${list[0].orderPrice};

			if(confirm("구매 확정하시겠습니까 ?") == true){
				$.ajax({
					url:"orderComplete.do",
					dataType:"json",
					data: {orderNum : orderNum, usedPoint : usedPoint, orderPrice : orderPrice},
					success:function(data){
						alert("구매확정되었습니다.")
						
					},
					error:function(request, status, errorData){
						alert("error code: " + request.status 
								+"message: " + request.responseText
								+"error: " + errorData);
					}
				})
			}else{
				return;
			}
		}
	</script>

</body>
<footer>
	<jsp:include page="../common/footer.jsp" />
</footer>
</html>
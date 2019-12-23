<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="js/Modal.js-master/build/css/modal.css" rel="stylesheet">

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>


</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>   
	<%-- <jsp:include page ="../admin/adminMenu.jsp"/> --%>
	

		<!-- 아래 정보들은 ORDER_LIST INSERT문 넘길 정보 "실" 적용시 value 값 변경해야함 -->
			<table>
				<!-- 카드 결제시 넘길 정보  totalPrice, email, name, phone, address -->
				<tr>
					<th style="width:200px;">카드 정보</th>
				</tr>
				<tr>
<!--  카드 결제 정보 보내야 할것들  ------------------------------------------------------------------------------------------->
					<th>totalPrice</th>	<!-- 최종금액 -->
					<td><input id="totalPrice"  	name="totalPrice" 		value = "100">	</td>
					<th>email</th>	<!-- 이메일은 아무거나 보내기? 적혀있는건 동복이꺼 -->
					<td><input id="email"  			name="email" 			value = "qhrehdths@naver.com"></td>
					<th>name</th>	<!-- 카트결제 자 이름 -->
					<td><input id="name"  			name="name" 			value = "손동복"></td>
					<th>phone</th>	<!-- 카드 결제자 폰 번호 -->
					<td><input id="phone"  			name="phone" 			value = "010-5600-5415"></td>
					<th>address</th><!--카드 결제자 주소  -->
					<td><input id="address"  		name="address" 			value = "인천 서구 가좌동 여우제로 136 두산위브"></td>
<!--  카드 결제 정보 보내야 할것들  ------------------------------------------------------------------------------------------->
				</tr>
				<!-- 귀찮아서 이렇게 -->
				<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
				<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
				
				<tr>	
					<th>결제 정보</th>
				</tr>
				
				<tr>
					<th>gId</th>
					<td><input id="gId"  			name="gId" 				value = "10" readonly></td>
					<th>mId</th>
					<td><input id="mId"  			name="mId" 				value="${sessionScope.loginUser.mid }"/></td>
					<th>orderCount</th>
					<td><input id="orderCount"  	name="orderCount" 		value="1"/></td>
					<th>orderStatus</th>
					<td><input id="orderStatus"  	name="orderStatus" 		value="B"/></td>
				</tr>
				<tr>
					<th>usedPoint</th>	<!-- 사용 포인트 -->
					<td><input id="usedPoint"  		name="usedPoint" 		value="10"/></td>
					<th>dName</th>	<!-- 받는사람 이름 -->
					<td><input id="dName"  			name="dName" 			value="테스트"/></td>
					<th>dAddress</th>	<!-- 받는사람 주소 -->
					<td><input id="dAddress"  		name="dAddress" 		value="역삼역"/></td>
					<th>dPhone</th>	<!-- 받는사람 전화번호 -->
					<td><input id="dPhone"  		name="dPhone" 			value="010-5600-5415"/></td>
				</tr>
			</table>

	<!-- <input id="cateCd"  		name="cateCd" 			value="10010"/> -->
	
	
	<!-- 가용 포인트 사용시 (MEMBER TABLE : POINT 필드가 -가 안되게)
	     1. 가용포인트 > 결제금액  : 가용포인트는 결제금액을 넘지못한다.!!!!
	     2. 가용포인트 < 결제금액  : 가용포인트는 얼마든지 사용 가능 
	-->
	<input type="button" onclick="paymentNow()" value="결제하기">
		
	
	    <script>
	    /* 결제창 빼고 결제 버튼 클릭시 테스트 용  */
/* 	    function paymentNow(){

			var gId 		= $("#gId").val();
			var mId 		= $("#mId").val();
			var orderCount 	= $("#orderCount").val();
			var orderStatus = $("#orderStatus").val();
			var usedPoint 	= $("#usedPoint").val();
			var dName 		= $("#dName").val();
			var dAddress 	= $("#dAddress").val();
			var dPhone 		= $("#dPhone").val();
			var orderPrice 	= $("#totalPrice").val();
			
			
			$.ajax({
				url:"paymentViewSuccess.do",
					data:{gId:gId,
						  mId:mId,
						  orderCount:orderCount,
						  orderStatus:orderStatus,
						  usedPoint:usedPoint,
						  dName:dName,
						  dAddress:dAddress,
						  dPhone:dPhone,
						  orderPrice:orderPrice},
					
				success:function(data){
					
					alert("성공");

				},
				error:function(request, status, errorData){
					alert("error code : " + request.status + "\n"
										  + "message : " + request.responseText
										  + "error : " + errorData);
				}
			});
	    } */
	    
	    
	    
	    
			function paymentNow(){

		        var IMP = window.IMP; // 생략가능
		        IMP.init('imp15219507'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		        var msg;
		        
		        IMP.request_pay({
		            pg : 'inicis',
		            pay_method : 'card',
		            merchant_uid : 'merchant_' + new Date().getTime(),
		            name : '결제 TEST',
		            amount : $("#totalPrice").val(),
		            buyer_email : $("#email").val(),
		            buyer_name : $("#name").val(),
		            buyer_tel : $("#phone").val(),
		            buyer_addr : $("#address").val(),
		            buyer_postcode : '123-456',
		            //m_redirect_url : 'http://www.naver.com'
		        }, function(rsp) {
		            if ( rsp.success ) {
						var gId 		= $("#gId").val();
						var mId 		= $("#mId").val();
						var orderCount 	= $("#orderCount").val();
						var orderStatus = $("#orderStatus").val();
						var usedPoint 	= $("#usedPoint").val();
						var dName 		= $("#dName").val();
						var dAddress 	= $("#dAddress").val();
						var dPhone 		= $("#dPhone").val();
						var orderPrice 	= $("#totalPrice").val();
						
						$.ajax({
							url:"paymentViewSuccess.do",
								data:{gId:gId,
									  mId:mId,
									  orderCount:orderCount,
									  orderStatus:orderStatus,
									  usedPoint:usedPoint,
									  dName:dName,
									  dAddress:dAddress,
									  dPhone:dPhone,
									  orderPrice:orderPrice},
								
							success:function(data){
								
								alert("성공");
								/* 필요한 구문 작성  */
			
							},
							error:function(request, status, errorData){
								alert("error code : " + request.status + "\n"
													  + "message : " + request.responseText
													  + "error : " + errorData);
							}
						});


<%-- 		                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
		                jQuery.ajax({
		                    //url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
		                    url:"selectGoodsValue.do",
		                    type: 'POST',
		                    dataType: 'json',
		                    data: {
		                        imp_uid : rsp.imp_uid
		                        //기타 필요한 데이터가 있으면 추가 전달
		                    }
		                }).done(function(data) {
		                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
		                    if ( everythings_fine ) {
		                        msg = '결제가 완료되었습니다.';
		                        msg += '\n고유ID : ' + rsp.imp_uid;
		                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
		                        msg += '\결제 금액 : ' + rsp.paid_amount;
		                        msg += '카드 승인번호 : ' + rsp.apply_num;
		                        
		                        alert(msg);
		                    } else {
		                        //[3] 아직 제대로 결제가 되지 않았습니다.
		                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
		                    }
		                });
		                //성공시 이동할 페이지
		                location.href='<%=request.getContextPath()%>/order/paySuccess?msg='+msg;
					--%>
					
		            } else {
		                msg = '결제에 실패하였습니다.';
		                msg += '에러내용 : ' + rsp.error_msg;
		                //실패시 이동할 페이지
		                <%-- location.href="<%=request.getContextPath()%>/order/payFail"; --%>
		                alert(msg);
		            } 
		            
		        });   
			};
			
			// 기존 스크립트 정보		        
			/* IMP.request_pay({
			    pg : 'inicis', // version 1.1.0부터 지원.
			    pay_method : 'card',
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : '주문명:결제테스트',
			    amount : 14000,
			    buyer_email : 'iamport@siot.do',
			    buyer_name : '구매자이름',
			    buyer_tel : '010-1234-5678',
			    buyer_addr : '서울특별시 강남구 삼성동',
			    buyer_postcode : '123-456',
			    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
			}, function(rsp) {
			    if ( rsp.success ) {
			        var msg = '결제가 완료되었습니다.';
			        msg += '고유ID : ' + rsp.imp_uid;
			        msg += '상점 거래ID : ' + rsp.merchant_uid;
			        msg += '결제 금액 : ' + rsp.paid_amount;
			        msg += '카드 승인번호 : ' + rsp.apply_num;
			    } else {
			        var msg = '결제에 실패하였습니다.';
			        msg += '에러내용 : ' + rsp.error_msg;
			    }
			    alert(msg);
			});   
				 */	   
			
    </script>
		
		
		
			
</body>
<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</html>
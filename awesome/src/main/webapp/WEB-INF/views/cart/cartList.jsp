<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>장바구니</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link href="js/Modal.js-master/build/css/modal.css" rel="stylesheet">
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

	<style>
	
		body { margin:0; padding:0; font-family:'맑은 고딕', verdana; }
		a { color:#05f; text-decoration:none; }
		a:hover { text-decoration:underline; }
		
		h1, h2, h3, h4, h5, h6 { margin:0; padding:0; }
		ul, lo, li { margin:0; padding:0; list-style:none; }
	
		/* ---------- */
		
		div#root { width:900px; margin:0 auto; }
		header#header {}
		nav#nav {}
		section#container { }
			section#content { float:right; width:1000px; }
			section#container::after { content:""; display:block; clear:both; }
		
		/* ---------- */
		
	table.type05 {
    border-collapse: separate;
    border-spacing: 1px;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    margin: 20px 10px;
	}
	table.type05 th {
	    width: 150px;
	    padding: 10px;
	    font-weight: bold;
	    vertical-align: top;
	    border-bottom: 1px solid #ccc;
	    background: #efefef;
	}
	table.type05 td {
	    width: 350px;
	    padding: 10px;
	    vertical-align: top;
	    border-bottom: 1px solid #ccc;
	}
	</style>
	
	
	<style>
		
		section#content ul {margin:10px; }
		section#content div.goodsThumb img { width:200px; height:200px; }
		section#content div.goodsName { padding:10px 0; text-align:center; }
		section#content div.goodsName a { color:#000; }
		
		section#content ul li { margin:10px 0; padding:10px 0; border-bottom:1px solid #999; }
		section#content ul li img { width:250px; height:250px; }
		section#content ul li::after { content:""; display:block; clear:both; }
		section#content div.thumb { float:left; width:250px; }
		section#content div.gdsInfo { float:right; width:calc(100% - 320px); }
		section#content div.gdsInfo { font-size:20px; line-height:2; }
		section#content div.gdsInfo span { display:inline-block; width:100px; font-weight:bold; margin-right:10px; }
		section#content div.gdsInfo .delete { text-align:right; }
		section#content div.gdsInfo .delete button { font-size:18px; padding:5px 10px; border:1px solid #eee; background:#eee;}
		
		.allCheck { float:left; width:200px; }
		.allCheck input { width:16px; height:16px; }
		.allCheck label { margin-left:10px; }
		.delBtn { float:right; width:300px; text-align:right; }
		.delBtn button { font-size:18px; padding:5px 10px; border:1px solid #eee; background:#eee;}
		
		.checkBox { float:left; width:30px; }
		.checkBox input { width:16px; height:16px; }
		
		.listResult { padding:20px; background:#eee; }
		.listResult .sum { float:left; width:45%; font-size:22px; }
		
		.listResult .orderOpne { float:right; width:45%; text-align:right; }
		.listResult .orderOpne button { font-size:18px; padding:5px 10px; border:1px solid #999; background:#fff;}
		
		.listResult .orderDiv { float:right; width:45%; text-align:right; }
		.listResult .orderDiv button { font-size:18px; padding:5px 10px; border:1px solid #999; background:#fff;}
		.listResult::after { content:""; display:block; clear:both; } 
		
		.orderInfo { border:5px solid #eee; padding:20px; display:none; }
		.orderInfo .inputArea { margin:450px 0 0 240px; }
		.orderInfo .inputArea label { display:inline-block; width:120px; margin-right:10px; }
		.orderInfo .inputArea input { font-size:14px; padding:5px; }
		#userAddr2, #userAddr3 { width:250px; }
		
		.orderInfo .inputArea:last-child { margin-top:30px; }
		.orderInfo .inputArea button { font-size:20px; border:2px solid #ccc; padding:5px 10px; background:#fff; margin-right:20px;}
		
		.orderInfo .inputArea #sample2_address { width:230px; }
		.orderInfo .inputArea #sample2_detailAddress { width:280px; }
		.orderInfo .inputArea #sample2_extraAddress { display:none; }

	.centerDiv{
		  width:880px;
	  	  /* border: 1px solid pink; */ 
	      margin-left:auto;
	      margin-right:auto;
	      height: auto;
	      padding-left: 40px;
	}
		
	</style>
	
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<div id="container" style="overflow: auto; height: auto;" ><!-- container -->
	<div class = "centerDiv"> 
	<!-- <section id="container"> -->
		<section id="content">
			<ul>
				<li>
					<div class="allCheck">
						<input type="checkbox" name="allCheck" id="allCheck" /><label for="allCheck">모두 선택</label>
					</div>
					
					<div class="delBtn">
						<button type="button" class="selectDelete_btn">선택 삭제</button>
						
						<script>
							$(".selectDelete_btn").click(function(){
								var confirm_val = confirm("정말 삭제하시겠습니까?");
								
								if(confirm_val) {
									var checkArr = new Array();
									
									// 체크된 체크박스의 갯수만큼 반복
									$("input[class='chBox']:checked").each(function(){
										checkArr.push($(this).attr("data-cartNum"));  // 배열에 데이터 삽입
									});
										
									$.ajax({
										url : "deleteCart.do",
										type : "post",
										data : { chbox : checkArr },
										success : function(result){
											
											if(result == 1) {												
												location.href = "cartList.do";
											} else {
												alert("삭제 실패");
											}
										}
									});
								}	
							});
						</script>
						
						
					</div>
					
				</li>
			
				<%-- jsp상의 변수 선언 --%>
				<c:set var="sum" value="0" />
			
				<c:forEach items="${cartList}" var="cartList">
				<li>
					<div class="checkBox">
						<input type="checkbox" name="chBox" class="chBox" data-cartNum="${cartList.cartNum}" />
						
						<script>
						$(function(){ //전체선택 체크박스 클릭
							$("#allCheck").click(function(){ //만약 전체 선택 체크박스가 체크된상태일경우 
								if($("#allCheck").prop("checked")) { //해당화면에 전체 checkbox들을 체크해준다
									$("input[type=checkbox]").prop("checked",true); // 전체선택 체크박스가 해제된 경우
									} else { //해당화면에 모든 checkbox들의 체크를해제시킨다. 
										$("input[type=checkbox]").prop("checked",false); 
									} 
							});
						
						      $(".chBox").click(function(){
						          if($("#allCheck").is(":checked")){
						              if($(this).prop('checked', false)){
						                 $("#allCheck").prop('checked', false);
						             } 
						          }
						     });
						});

						</script>
					</div>
				
					<div class="thumb">
					 <%-- 	<img src="${cartList.filePath}" />  --%>
					 <img src="resources/auploadFiles/${cartList.filePath}" />  
					</div>
					<div class="gdsInfo">
						<p>
						<span>상품명</span>${cartList.goodsName}<br />
						<span>개당 가격</span><fmt:formatNumber pattern="###,###,###" value="${cartList.goodsPrice}" />원<br />
									<input id= "eachPrice${cartList.cartNum}"  value= "${cartList.goodsPrice}"  type ="hidden">
						<span>구입 수량</span>
						<button type="button" class="plus" onclick = "plus(${cartList.cartNum});">+</button>
						<input type="number"  id= "numBox${cartList.cartNum}" class="numBox" min="1" max="${cartList.count}" value="1" readonly="readonly"/>
						<button type="button"<%--   id= "numBox${cartList.cartNum}" --%> class="minus" onclick = "minus(${cartList.cartNum});">-</button>
						
						<input type="hidden" value="${cartList.count}" class="gdsStock_hidden" />
						<input type="hidden" value="${cartList.gId}" id="gId">
						<input type="hidden" value="${cartList.mId}" id="mId">
						
						<script>
							// + 버튼을 누르면 수량이 증가하되, 상품의 전체 수량보다 커지지 않음
						
							function plus(cartNum){
								var num = $("#numBox" + cartNum).val();
								var plusNum = Number(num) + 1;
								var stock = $(".gdsStock_hidden");
								
								if(num >= 10){
									alert("10개까지만 주문가능합니다.")
									return;
								}
								
								$("#numBox" + cartNum).val(plusNum);
								
								var eachPrice = $("#eachPrice" + cartNum).val();
								
								var amount = $("#numBox" + cartNum).val()
								
								var finalPrice= eachPrice * amount; 
								var finalPrice2 = comma(finalPrice); 
								
								$("#finalPrice" + cartNum).html(finalPrice2);
							}
							
							// - 눌렀을 때
							function minus(cartNum){
								var num = $("#numBox" + cartNum).val();
								var minusNum = Number(num) - 1;
								var stock = $(".gdsStock_hidden");
								
								if(num <= 1){
									alert("1개 이상만 주문가능합니다.")
									return;
								}
								
								$("#numBox" + cartNum).val(minusNum);
								var eachPrice = $("#eachPrice" + cartNum).val();
								
								var amount = $("#numBox" + cartNum).val()
								
								var finalPrice = eachPrice * amount; 
								var finalPrice2 = comma(finalPrice); 
								
								$("#finalPrice" + cartNum).html(finalPrice2);
								
							}
							
							function comma(num){
							    var len, point, str; 
							       
							    num = num + ""; 
							    point = num.length % 3 ;
							    len = num.length; 
							   
							    str = num.substring(0, point); 
							    while (point < len) { 
							        if (str != "") str += ","; 
							        str += num.substring(point, point + 3); 
							        point += 3; 
							    } 
							     
							    return str;
							 
							}
							
							
							
							
							
							
						</script>
						
						
							 개<br/> 
							<span>최종 가격</span><span id="finalPrice${cartList.cartNum}">${cartList.goodsPrice}</span>원
						</p>
						
						<div class="delete">
							<button type="button" class="delete_${cartList.cartNum}_btn" data-cartNum="${cartList.cartNum}">삭제</button>
							
							<script>
								$(".delete_${cartList.cartNum}_btn").click(function(){
									var confirm_val = confirm("정말 삭제하시겠습니까?");
									
									if(confirm_val) {
										var checkArr = new Array();
										
										checkArr.push($(this).attr("data-cartNum"));
																					
										$.ajax({
											url : "deleteCart.do",
											type : "post",
											data : { chbox : checkArr },
											success : function(result){
												if(result == 1) {												
													location.href = "/cart/cartList";
												} else {
													alert("삭제 실패");
												}
											}
										});
									}	
								});
							</script>
						</div>
					</div>			
				</li>
				
				<%-- 반복할 때마다 sum에 상품 가격(gdsPrice)*상품 갯수(cartStock)만큼을 더함 --%>
				<%-- <c:set var="sum" value="${sum + (cartList.goodsPrice * cartList.count)}" /> --%>
				<%-- <c:set var="sum" value="${sum + (cartList.goodsPrice * cartList.count)}" /> --%>
				<c:set var="sum" value="${sum + (cartList.goodsPrice * cartList.count)}" />
				
				</c:forEach>
			</ul>
			
			<div class="listResult">
				<div class="sum">
					<%-- 총 합계 : <fmt:formatNumber pattern="###,###,###" value="${sum}"/>원 --%>
					총 합계 : <fmt:formatNumber pattern="###,###,###" value="${sum}"/>원
				</div>
				<!-- <div class="orderDiv"> -->
				<div class="orderOpne">
					<button type="button" class="orderOpne_bnt">주문 정보 입력</button>
					
					<script>
						$(".orderOpne_bnt").click(function(){
							$(".orderInfo").slideDown();  // $(".orderInfo")를 나타내고
							$(".orderOpne_bnt").slideUp();  // $(".orderOpne_bnt")를 숨김
						});						
					</script>
				</div>
			</div>
			
         <div class="orderInfo">
            <form role="form" method="post" autocomplete="off">
                     
               <input type="hidden" name="amount" value="${sum}" />
                     
	      <h2>정보</h2>
	     <div class="order_detail mt80">
	
	         <table class="type05">
	            <tbody>
	            <tr>
	               <th>보내는분</th>
	               <td><input name="sdname" id="sdname" class="order_txt order_dimmed" type="text" style="width:130px" value="${cartList[0].name }" > </td>
	            </tr>
	            <tr class="last">
	               <th>연락처</th>
	               <td><input type="text" id="sdPhone" value="${cartList[0].phone }"></td>
	            </tr>
	            <tr class="last">
	               <th>주소</th>
	               <td><input type="text" id="sdAddress" value="${cartList[0].address }"></td>
	            </tr>
	            <tr class="last">
	               <th>이메일</th>
	               <td><input type="text" id="sdEmail" value="${sessionScope.loginUser.email}"></td>
	            </tr>
	            </tbody>
	            </table>
	      </div>
      
         <h3 class="order_detail_tit">배송지 정보</h3>
         <table class="type05">
            <thead>
             <tr>
                 <th scope="cols" colspan="2">배송지 정보</th>
             </tr>
             </thead>
            <tbody>
            <tr>
            <th>배송지선택</th>
            <td>
            <div id="addrradio">
               <div class="order_del_sel" onclick="deliver1()">
                  <input id="delivradio1" class="order_rdo" type="radio" onclick="" checked="checked" value="" name="delivaddradio">
                  <label style="margin-right:15px" class="order_selected" for="ss3">기본 배송지</label>
               </div>
               <div class="order_del_sel" onclick="deliver2()">
               <input id="delivradio2" class="order_rdo" type="radio" onclick="" value="user" name="delivaddradio" >
               <label style="margin-right:15px" for="" class="">새 배송지</label>
               </div>
            </div>
            </td>
            </tr>

            <tr>
               <th>받으실분</th>
               <td><input type="text" value="${cartList[0].name }" id="name"></td>
            </tr>
            <tr>
               <th>주소</th>
               <td><input type="text" value="${cartList[0].address }" id="address"></td>
            </tr>
            <tr>
               <th><span>연락처</span></th>
               <td><input type="text" value="${cartList[0].phone }" id="phone"></td>
            </tr>
            
            </tbody>
            </table>
      <br><br>
      
      <div class="order_detail mt80">
      <h3 class="order_detail_tit">결제 정보</h3>
         <table class="type05">
            <thead>
             <tr>
                 <th scope="cols" colspan="2">결제 정보</th>
             </tr>
             </thead>
            <tbody>
            <tr>
               <th>포인트 사용</th>
               <td><input class="order_txt order_dimmed" placeholder="사용할 포인트를 입력하세요" style="width:130px" type="tel" name="dcp" id="dcp" maxlength="10" data-dcp="0" data-usedcp="0" value="0">원<span class="ml8 fc666">(사용가능 포인트 : <strong class="order_fcT1 fctah" id="mycpp" data-mycpp="0"><span>${cartList[0].point }</span></strong>원)</span></em><a id="cupbtn" alt="적용"><span class="order_btn_apply"></span></a><!--20160427 적립금 안내 문구 추가-->
               <!-- <span class="fctah ml10 fc666" style="vertical-align:top;position: relative;top:12px">※ 적립금은 최소 2,000원 이상부터 사용가능합니다.</span> -->   
               </td>
            </tr>
            </tbody>
            </table>
            
            <input type="hidden" value="B" id="orderStatus">
      </div>
     <!--  
      <div>
      <h3 class="order_detail_tit">결제 수단</h3>
      		<table class="type05">
				<tbody>
				<tr class="last">
					<th>결제 수단</th>
					<td>
						<div id="payradio">
							<div class="order_del_sel">
								<input id="payCard" class="order_rdo" type="radio" checked="checked" value="2" name="paywayradio">
								<label style="margin-right:15px" class="order_selected" for="">카드 결제</label>
								
								<input id="payCash" class="order_rdo" type="radio" value="4" name="paywayradio">
								<label style="margin-right:15px" for="">무통장 입금</label>
								
							</div>
						</div>
					</td>
				</tr>
				</tbody>
				</table>
          </div>
           -->
			<div class="inputArea">
	  			 <button class="order_btn" type= "button" onclick="paymentNow()">결제</button>
	             <button type="button" class="cancel_btn">취소</button>
	        </div>
		</div>   
		<script>
		$(".cancel_btn").click(function(){
			$(".orderInfo").slideUp();  // $(".orderInfo")를 숨기고
			$(".orderOpne_bnt").slideDown();  // $(".orderOpne_bnt")를 나타냄
		});						
		</script>

				</form>	
			</div>
		</section><!-- </section> -->
		</div> <!-- centerDiv끝 -->	
	</div> <!--  container 끝  -->
	
</body>

<script>
   function deliver1(){
      document.getElementById("name").value = "${cartList[0].name}";   
      document.getElementById("address").value = "${cartList[0].address}";
      document.getElementById("phone").value = "${cartList[0].phone}";
   }
   
   function deliver2(){
      document.getElementById("name").value = "";   
      document.getElementById("address").value = "";
      document.getElementById("phone").value = "";
   }
  
   
   
   
   

   
   
   
   
   
   
   
   
   
   
    function paymentNow(){
      //사용할 포인트가 적립포인트보다 크다면
      if($("#dcp").val()>${cartList[0].point}){
            alert("포인트가 모자랍니다.");
      	return; 
      
      }else{  
    	  var IMP = window.IMP; // 생략가능
	        IMP.init('imp15219507'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	        var msg;
	        
	        var gId 		= $("#gId").val();	// 상품 번호
			var mId 		= $("#mId").val();	// 
			var orderCount 	= $(".numBox").val();
			var orderStatus = $("#orderStatus").val();
			var usedPoint 	= $("#dcp").val();
			var dName 		= $("#name").val();
			var dAddress 	= $("#address").val();
			var dPhone 		= $("#phone").val();
			var orderPrice 	= ${sum} - $("#dcp").val();
			
			console.log(gId);
			console.log(mId);
			console.log(orderCount);
			console.log(orderStatus);
			console.log(usedPoint);
			console.log(dName );
			console.log(dAddress);
			console.log(dPhone);
			console.log(orderPrice );
	        
	        IMP.request_pay({
	            pg : 'inicis',
	            pay_method : 'card',
	            merchant_uid : 'merchant_' + new Date().getTime(),
	            name : '결제 TEST',
	            //amount : orderPrice,
	            amount : '100',
	            buyer_email : $("#sdEmail").val(),
	            buyer_name : $("#sdname").val(),
	            buyer_tel : $("#sdPphone").val(),
	            buyer_addr : $("#sdAddress").val(),
	            buyer_postcode : '123-456',
	            //m_redirect_url : 'http://www.naver.com'
	        }, function(rsp) {
	        	console.log(rsp);
	            if ( rsp.success ) {
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
							// 필요한 구문 작성 
							location.href="orderView.do";
		
						},
						error:function(request, status, errorData){
							alert("error code : " + request.status + "\n"
												  + "message : " + request.responseText
												  + "error : " + errorData);
						}
					});

	            } else {
	                msg = '결제에 실패하였습니다.';
	                msg += '에러내용 : ' + rsp.error_msg;
	                //실패시 이동할 페이지
	                location.href="cartList.do";
	                alert(msg);
	                console.log(msg);
	           	  } 
	        });    
	}
   }
    
   
   
   /* 결제 */
   
    /*  
			var gId 		= $("#gId").val();	// 상품 번호
			var mId 		= $("#mId").val();	// 
			var orderCount 	= $(".numBox").val();
			var orderStatus = $("#orderStatus").val();
			var usedPoint 	= $("#dcp").val();
			var dName 		= $("#name").val();
			var dAddress 	= $("#address").val();
			var dPhone 		= $("#phone").val();
			var orderPrice 	= $("#totalPrice").val(); 
			var orderPrice 	= ${sum} - $("#dcp").val();
			 alert("gId : " + gId); 
			 alert("mId : " + mId); 
			 alert("orderCount : " + orderCount); 
			 alert("orderStatus : " + orderStatus); 
			 alert("usedPoint : " + usedPoint); 
			 alert("dName : " + dName); 
			 alert("dAddress : " + dAddress); 
			 alert("dPhone : " + dPhone); 
			 alert("orderPrice : " + orderPrice);  
		 
		
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
			});   */
   
   
   
   
   
</script>


<footer>
	<jsp:include page ="../common/footer.jsp"/>
</footer>

</html>
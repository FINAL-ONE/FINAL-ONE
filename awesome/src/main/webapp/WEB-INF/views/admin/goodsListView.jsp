<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.3.1/lumen/bootstrap.min.css"> -->
<style>
  .container { margin: 150px auto; }
</style>
</head>
<body>

	<jsp:include page ="../common/menubar.jsp"/>
	<jsp:include page ="../admin/adminMenu.jsp"/>
	
	<br><br>
	<c:if test="${!empty loginUser }">
   		<div align ="center">
   		<!--
   			상품 이름 
   			대 분류
   			중 분류
   			소 분류
   			상품 상태
   			매진 구분
   		-->
   		<table>
   					<input id="ajaxText" type = "hidden"  readonly>
   				<tr>
   					<th><input type="checkbox" name="user_CheckBox" id="categoryCk">카테고리</th>
		            <td id="Chidden" style="display:none;">	    
						<select id="lclCd" name="lclCd">
							<c:forEach var="c" items="${gClist}">
								<c:if test="${c.cateCd eq lclCd}">
									<option value="${c.cateCd}" selected="${lclCd}">${c.cateNm}</option>
								</c:if>
								<c:if test="${c.cateCd != lclCd}">
									<option value="${c.cateCd}">${c.cateNm}</option>
								</c:if>
								
							</c:forEach>
	
						</select>
					</td>
				</tr>
				
				<tr id="Lhidden" style="display:none;">
		            <th>대 선택</th>
		            <td>
						<select id="mclCd" name="mclCd">
							<c:forEach var="l" items="${gLlist}">
								<c:if test="${l.cateCd eq mclCd}">
									<option value="${l.cateCd}" selected="${mclCd}">${l.cateNm}</option>
								</c:if>
								<c:if test="${l.cateCd != mclCd}">
									<option value="${l.cateCd}">${l.cateNm}</option>
								</c:if>
							</c:forEach> 
						</select>
					</td>
				</tr>
				
				<tr id="Mhidden" style="display:none;">
		            <th>중 선택</th>
		            <td>
						<select id="sclCd" name="sclCd">
							<c:forEach var="m" items="${gMlist}">
								<c:if test="${m.cateCd eq sclCd}">
									<option value="${m.cateCd}" selected="${sclCd}">${m.cateNm}</option>
								</c:if>
								<c:if test="${m.cateCd != sclCd}">
									<option value="${m.cateCd}">${m.cateNm}</option>
								</c:if>							
							</c:forEach>
						</select>
					</td>
				</tr>
				<th><input type="checkbox" name="user_CheckBox" id="statusCk">상품상태</th>
				<tr id="statushidden" style="display:none;">
					<td>
						<select id="goodsStatus" name ="goodsStatus">
			                    <option value="Y" selected="selected">사용
			                    <option value="N">미사용
		                </select>
					</td>
				</tr>
				<th><input type="checkbox" name="user_CheckBox" id="soldoutCk">매진구분</th> 
				<tr id="soldouthidden" style="display:none;">
					<td>
						<select id="soldout" name ="soldout">
								<option value="Y">매진
								<option value="N" selected="selected">판매
		                </select>
					</td>
				</tr>
   		
   		
   			<tr>
	            <th>상품 이름</th>
	            <td>
	            	<input type="text" id="goodsName" name="goodsName" placeholder="상품명을 입력 하세요." list="myinter" />
					<%-- <input type="text" id="goodsName" name="goodsName" placeholder="선택하세요." list="myinter" />   
					<datalist id="myinter" name="myinter">
						<select id="selectBox" name="selectBox">
							<c:forEach var="g" items="${glist}">
								<option value="${g.goodsName}">${g.goodsName}</option>
							</c:forEach>
						</select>
					</datalist> --%>
				</td>
			</tr>
   		
   		</table>
   		
   		
   		
   			<button onclick="location.href='goodsInsertView.do'">상품 등록하기</button>
   			<!-- <button id='btn-add-row'>행 추가</button>
			<button id='btn-delete-row'>행 삭제</button> -->
			
   		</div>
	</c:if>
	<br>
	<table align="center" width="100%" border="1" cellspaction="0" style="clear:right;" id="surveyListTable"
		class="table table-bordered table-striped table-hover rowfy">
		<thead>
			<tr ><!-- bgcolor="#fa4a4a" -->
			<th style="display:none;">숨킨 상품번호</th>
				<th>상품번호</th>
				<th>상품이름</th>
				<th>상품가격</th>
				<th>상품수량</th>
				<th>상품상태</th>
				<th>매진구분</th>
				<th>등록날짜</th>
				<th>수정날짜</th>
	<!-- 			<th>카c</th>
				<th>카n</th>
				<th>대</th>
				<th>중</th>
				<th>소</th> -->
			</tr>
		</thead>
			<c:forEach var="n" items="${glist}">
				<tr>
					<input id="gId" type = "hidden" value = "${n.gId}">
					<input id="cateCd"  type = "hidden" value = "${n.cateCd}">
					<input id="cateNm"  type = "hidden" value = "${n.cateNm}">
					<input id="lclCd"  type = "hidden" value = "${n.lclCd}">
					<input id="mclCd"  type = "hidden" value = "${n.mclCd}">
					<input id="sclCd"  type = "hidden" value = "${n.sclCd}">
					
					<td align="center" width="10%">${n.gId}</td>
					<td width="20%">
	<%-- 					<c:if test="${!empty loginUser}">
							<c:url var="ndetail" value="ndetail.do">
								<c:param name="nId" value="${n.gId}"></c:param>
							</c:url>
							<a href="${ndetail}">${n.nTitle}</a>
						</c:if> --%>
						<%-- <c:if test="${!empty loginUser}"> --%>
							&nbsp;${n.goodsName}
						<%-- </c:if> --%>
					</td>
					<td align="center" width="10%"><fmt:formatNumber value="${n.goodsPrice}" groupingUsed="true" /></td>
					<td align="center" width="10%"><fmt:formatNumber value="${n.count}" groupingUsed="true" /></td>
					
					<td align="center" width="10%">${n.goodsStatus }</td>
					<td align="center" width="10%">${n.soldout }</td>
					<td align="center" width="10%">${n.registerDate }</td>
					<td align="center" width="10%">${n.modifyDate }</td>
					
	<%-- 				<td width="10%">${n.cateCd }</td>
					<td width="20%">${n.cateNm }</td>
					<td align="center" width="10%">${n.lclCd }</td>
					<td align="center" width="10%">${n.mclCd }</td>
					<td align="center" width="10%">${n.sclCd }</td> --%>
					
				</tr>
			</c:forEach>
			
		<tbody>
		
		</tbody>
	</table>
	
	<br><br><br>
	
	<p align="center">
		<c:url var ="adminMain" value="adminMain.do"/>
		<a href="${adminMain}">관리자페이지 이동</a>&nbsp;
		<c:url var ="goodsList" value="goodsList.do"/>
		<a href="${goodsList}">목록전체보기</a>
	</p>
	
	
<!-- 클릭시 제품 상세 페이지 이동함 -->	
	<script type="text/javascript">
		$(function(){
			$(document).on('mouseenter', '#surveyListTable td', function(){
				$(this).parent().css({"background":"#FFF7D5","cursor":"pointer"});
			}).on('mouseout', '#surveyListTable td', function(){
				$(this).parent().css({"background":"white"});
			}).on('click', '#surveyListTable td', function(){
				
			var gId = $(this).parent().children("#gId").val();
			var cateCd = $(this).parent().children("#cateCd").val();
			var cateNm = $(this).parent().children("#cateNm").val();
			var lclCd = $(this).parent().children("#lclCd").val();
			var mclCd = $(this).parent().children("#mclCd").val();
			var sclCd = $(this).parent().children("#sclCd").val();
				
// ajax 이전 리스트에서 적용되던 이벤트
/* 			$("#surveyListTable td").mouseenter(function(){
				$(this).parent().css({"background":"#FFF7D5","cursor":"pointer"});
			}).mouseout(function(){ 
				$(this).parent().css({"background":"white"});
			}).click(function(){

				var gId = $(this).parent().children("#gId").val();
				var cateCd = $(this).parent().children("#cateCd").val();
				var cateNm = $(this).parent().children("#cateNm").val();
				var lclCd = $(this).parent().children("#lclCd").val();
				var mclCd = $(this).parent().children("#mclCd").val();
				var sclCd = $(this).parent().children("#sclCd").val();
*/

				/* location.href="goodsDetailList.do?gId="+gId; */
				location.href="goodsDetailList.do?gId="+gId+ "&cateCd="+cateCd + "&cateNm="+cateNm + "&lclCd="+lclCd + "&mclCd="+mclCd + "&sclCd="+sclCd;
				
			});
		});
		
// -3-
// 검색조건 (상품 이름)------------------------------------------------------------------------------------------------------------------
		$(function(){
			$("#goodsName").on("keyup",function(){
				var goodsName =$(this).val().trim();// 공백제거후 담음
				
				/* var lclCd =$("#lclCd").val();
				var mclCd =$("#mclCd").val();
				var sclCd =$("#sclCd").val();
				var goodsStatus =$("#goodsStatus").val();
				var soldout =$("#soldout").val(); */

				
	            // 테이블 헤더에 있는 checkbox 클릭시
	                if( $("#categoryCk").is(":checked") ){
	    				var lclCd =$("#lclCd").val();
	    				var mclCd =$("#mclCd").val();
	    				var sclCd =$("#sclCd").val();
	                }else{
	                	var lclCd =$("#ajaxText").val();
	                	var mclCd =$("#ajaxText").val();
	                	var sclCd =$("#ajaxText").val();
	                	/* var lclCd = null;
	                	var mclCd = null;
	                	var sclCd = null; */
	                }
	                if( $("#statusCk").is(":checked") ){
	                	var goodsStatus =$("#goodsStatus").val();
	                }else{
	                	var goodsStatus = null;
	                }
	                if( $("#soldoutCk").is(":checked") ){ 
	                	var soldout =$("#soldout").val();
	                }else{
	                	var soldout = null;
	                }
				
				$.ajax({
					url:"checkTextSelectGoods.do",
					dataType : "json",
					data:{lclCd:lclCd,
						  mclCd:mclCd,
						  sclCd:sclCd,
						  goodsStatus:goodsStatus,
						  soldout:soldout, 
						  goodsName:goodsName},
					  /* data:{goodsName:goodsName,goodsStatus:goodsStatus}, */
						  
					success:function(data){

						$tableBody = $("#surveyListTable tbody");
						//$("#surveyListTable").remove();
						$tableBody.html("");
							
  							for(var i in data){  
							    $("#surveyListTable").append('<tr>'+
										'<input id="gId" 	type = "hidden" value = "'+ data[i].gId +'">' + 
										'<input id="cateCd" type = "hidden" value = "'+ data[i].cateCd +'">' +
										'<input id="cateNm" type = "hidden" value = "'+ data[i].cateNm +'">' +
										'<input id="lclCd" 	type = "hidden" value = "'+ data[i].lclCd +'">' +
										'<input id="mclCd" 	type = "hidden" value = "'+ data[i].mclCd +'">' +
										'<input id="sclCd" 	type = "hidden" value = "'+ data[i].sclCd +'">' +
	    								'<td width="10%">'+ data[i].gId +'</td>'+
	    								'<td width="20%">'+ data[i].goodsName +'</td>'+
	    								'<td width="10%" align="center">'+ data[i].goodsPrice +'</td>'+
	    								'<td width="10%" align="center">'+ data[i].count +'</td>'+
	    								'<td width="10%" align="center">'+ data[i].goodsStatus +'</td>'+
	    								'<td width="10%" align="center">'+ data[i].soldout +'</td>'+
	    								'<td width="10%" align="center">'+ data[i].registerDate +'</td>'+
	    								'<td width="10%" align="center">'+ data[i].modifyDate +'</td>'+
	    							 '</tr>');
							} 
							
					},
					error:function(request, status, errorData){
						alert("error code : " + request.status + "\n"
											  + "message : " + request.responseText
											  + "error : " + errorData);
					}
				});
			});
		});		
		

// 검색조건 (카테고리 변경시)------------------------------------------------------------------------------------------------------------------
				$("#lclCd").on("change",function(){
					var lclCd =$(this).val();
					
					$("#mclCd option").remove();
					$("#sclCd option").remove();
					$("#nclCd option").remove();
					$("#cateCd").val("");
					// click 이벤트 막기
//					$("#lidDuplicateCheck").val(1);	
//					$("#midDuplicateCheck").val(1);
//					$("#sidDuplicateCheck").val(1);
					//$("#goodsName").val("");
					//$("#goodsPrice").val("");
					//$("#count").val("");
					
					$.ajax({
						url:"categoryCSelectBox.do",
						data:{lclCd:lclCd},
						success:function(data){
							for(var i=0; i<data.list.length; i++){
								$("#mclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
							}
//str 처음 조회시 카테고리 전체 조회---------------------------------------------					
							var mclCd = null;
							
							if(data.list.length == 0){	// 데이터 없으면 조회안되게
								return;
							}
							
							for(var i=0; i<1; i++){
								$("#mclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
								mclCd = data.list[i].cateCd;
							}	
							
							$.ajax({
								url:"categoryLSelectBox.do",
								data:{lclCd:lclCd, mclCd:mclCd},
								success:function(data){
									
									for(var i=0; i<data.list.length; i++){
										$("#sclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
									}
									
									var sclCd = null;
									
									for(var i=0; i<1; i++){
										$("#sclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
										sclCd = data.list[i].cateCd;
									}
									
									$.ajax({
										url:"categoryMSelectBox.do",
										data:{lclCd:lclCd, mclCd:mclCd, sclCd:sclCd},
										success:function(data){

											for(var i=0; i<data.list.length; i++){
												/* $("#nclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>'); */
												$("#nclCd").append("<option value='" + data.list[i].cateCd + "' + cost_value='"+data.list[i].cateNm+"'>" + data.list[i].cateNm +'</option>');
											}		

		 									for(var i=0; i<data.list.length; i++){
												//sizeCd = data.list[i].cateCd;
												//sizeNm = data.list[i].cateNm;
												//$("#cateCd").val(sizeCd);
												//$("#goodsName").val(sizeNm);
												sizeLCd = data.list[i].lclCd;
												sizeMCd = data.list[i].mclCd;
												sizeSCd = data.list[i].sclCd;
												
												$("#selectlclCd").val(sizeLCd);
												$("#selectmclCd").val(sizeMCd);
												$("#selectsclCd").val(sizeSCd);
											}	 
											
										},
										error:function(request, status, errorData){
											alert("error code : " + request.status + "\n"
																  + "message : " + request.responseText
																  + "error : " + errorData);
										}
									});
								},
								error:function(request, status, errorData){
									alert("error code : " + request.status + "\n"
														  + "message : " + request.responseText
														  + "error : " + errorData);
								}
							});
//end 처음 조회시 카테고리 전체 조회---------------------------------------------					
						},
						error:function(request, status, errorData){
							alert("error code : " + request.status + "\n"
												  + "message : " + request.responseText
												  + "error : " + errorData);
						}
					});		
				}); 
//---------------------------------------------------------------------------------------------------
			// (대)카테고리 조회
				$("#mclCd").on("change",function(){
					var lclCd =$("#lclCd").val();
					var mclCd =$(this).val();// 공백제거후 담음
					
					$("#sclCd option").remove();
					$("#nclCd option").remove();
					$("#cateCd").val("");
					$("#goodsName").val("");
					$("#goodsPrice").val("");
					$("#count").val("");
					// click 이벤트 막기
//					$("#midDuplicateCheck").val(1);
//					$("#sidDuplicateCheck").val(1);
					
					$.ajax({
						url:"categoryLSelectBox.do",
						data:{lclCd:lclCd, mclCd:mclCd},
						success:function(data){
							
							for(var i=0; i<data.list.length; i++){
								$("#sclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
							}
							
							var sclCd = null;
							
							for(var i=0; i<1; i++){
								$("#sclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
								sclCd = data.list[i].cateCd;
							}
							
							$.ajax({
								url:"categoryMSelectBox.do",
								data:{lclCd:lclCd, mclCd:mclCd, sclCd:sclCd},
								success:function(data){

									for(var i=0; i<data.list.length; i++){
										/* $("#nclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>'); */
										$("#nclCd").append("<option value='" + data.list[i].cateCd + "' + cost_value='"+data.list[i].cateNm+"'>" + data.list[i].cateNm +'</option>');
									}		
		 							for(var i=0; i<1; i++){
										//sizeCd = data.list[i].cateCd;
										//sizeNm = data.list[i].cateNm;
										//$("#cateCd").val(sizeCd);
										//$("#goodsName").val(sizeNm);
										sizeLCd = data.list[i].lclCd;
										sizeMCd = data.list[i].mclCd;
										sizeSCd = data.list[i].sclCd;
										
										$("#selectlclCd").val(sizeLCd);
										$("#selectmclCd").val(sizeMCd);
										$("#selectsclCd").val(sizeSCd);
										
									} 
								},
								error:function(request, status, errorData){
									alert("error code : " + request.status + "\n"
														  + "message : " + request.responseText
														  + "error : " + errorData);
								}
							});
							
							
			
						},
						error:function(request, status, errorData){
							alert("error code : " + request.status + "\n"
												  + "message : " + request.responseText
												  + "error : " + errorData);
						}
					});
				});	
		
			
			
			
			
			
// 검색조건 (체크버튼 클릭시)------------------------------------------------------------------------------------------------------------------		
	            
	            
				var tbl = $("#categoryCk");
		            
				//$("input:checkbox[id='ID']").is(":checked") == true : false  /* by ID */

		            
	            // 테이블 헤더에 있는 checkbox 클릭시
	            $("#categoryCk").click(function(){
	                if( $(this).is(":checked") ){
	                	$("#Chidden").css("display", "");
	                	$("#Lhidden").css("display", "");
	                	$("#Mhidden").css("display", "");
	                }else{
	                	$("#Chidden").css("display", "none");
	                	$("#Lhidden").css("display", "none");
	                	$("#Mhidden").css("display", "none");
	                	
	                    //$(":checkbox", tbl).removeAttr("checked");
	                }
	            });
	            $("#statusCk").click(function(){
	                if( $(this).is(":checked") ){
	                	$("#statushidden").css("display", "");
	                }else{
	                	$("#statushidden").css("display", "none");
	                	
	                    //$(":checkbox", tbl).removeAttr("checked");
	                }
	            });
	            $("#soldoutCk").click(function(){
	                if( $(this).is(":checked") ){
	                	$("#soldouthidden").css("display", "");
	                }else{
	                	$("#soldouthidden").css("display", "none");
	                	
	                    //$(":checkbox", tbl).removeAttr("checked");
	                }
	            });
				
				
				
/* 	            // 헤더에 있는 체크박스외 다른 체크박스 클릭시
	            $(":checkbox:not(:first)", tbl).click(function(){
	                var allCnt = $(":checkbox:not(:first)", tbl).length;
	                var checkedCnt = $(":checkbox:not(:first)", tbl).filter(":checked").length;
	                 
	                // 전체 체크박스 갯수와 현재 체크된 체크박스 갯수를 비교해서 헤더에 있는 체크박스 체크할지 말지 판단
	                if( allCnt==checkedCnt ){
	                    $(":checkbox:first", tbl).attr("checked", "checked");
	                }
	                else{
	                    $(":checkbox:first", tbl).removeAttr("checked");
	                }
	            }).change(function(){
	                if( $(this).is(":checked") ){
	                    // 체크박스의 부모 > 부모 니까 tr 이 되고 tr 에 selected 라는 class 를 추가한다.
	                    $(this).parent().parent().addClass("selected");
	                }
	                else{
	                    $(this).parent().parent().removeClass("selected");
	                }
	            }); */
	            
	        //});
			
			
			
			
			
		
   </script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<!-- ---------------------------------------------------------------------------------------------------------------------------- -->
<!-- ---------------------------------------------------------------------------------------------------------------------------- -->
<!-- ---------------------------------------------------------------------------------------------------------------------------- -->

	<script>
	  $('#btn-add-row').click(function() {
	    
	    /*
	    <td align="center">${n.gId}</td>
	    ${n.goodsName}
		<td align="center">${n.goodsPrice }</td>
		<td align="center">${n.count }</td>
		<td align="center">${n.goodsStatus }</td>
		<td align="center">${n.soldout }</td>
		<td align="center">${n.registerDate }</td>
		<td align="center">${n.modifyDate }</td>
	    */
	    
	    var count = "N";
        var name = $("#name").val();
        var subject = $("#subject").val();
        var markup = "<tr><td><input type='test' name='record'></td><td>" + count + "</td></tr>";
	    
        /* var today = getTodayType1(); */
        /* <td><input type=text name=text"+count+" id=text"+count+" size=40></td> */
        
		var stdate = new Date().toISOString().substr(0, 10).replace('T', ' ');
        
	    $('#surveyListTable > tbody:last').append('<tr>'+
	    								'<td width="10%"></td>'+   // 상품번호
	    								'<td width="30%"><input type="text" width="100%"></td>'+	// 상품이름
	    								'<td width="10%" align="center"><input type="text"></td>'+	// 상품가격
	    								'<td width="10%" align="center"><input type="text" value="1"></td>' +	// 상품수량

	    								//'<td width="10%"><input type="text"></td>' +	// 상품상태
	    								//'<td width="10%"><input type="text"></td>'+	// 매진구분
	    					            '<td width="10%" align="center">'+
	    								'	<select class="form-control statusYn" name="staff_use_yn">'+
	    					            '		<option value="Y" selected="selected">사용</option>'+
	    					            '		<option value="N">미사용</option>'+
	    					            '	</select>'+
	    					            '</td>'+
	    					            '<td width="10%" align="center">'+
	    								'	<select class="form-control statusYn" name="staff_use_yn">'+
	    					            '		<option value="Y">매진</option>'+
	    					            '		<option value="N" selected="selected">판매</option>'+
	    					            '	</select>'+
	    					            '</td>'+
	    					            '<td width="10%" align="center">'+ stdate +'</td>'+	// 등록날짜
	    								'<td width="10%"></td>'+	// 수정날짜
	    							 '</tr>');
	  });
	  $('#btn-delete-row').click(function() {
	    $('#surveyListTable > tbody:last > tr:last').remove();
	  });
	  
	    //삭제 버튼
	    $(document).on("click","button[name=delStaff]",function(){
	        var trHtml = $(this).parent().parent();
	        trHtml.remove(); //tr 테그 삭제
	    });

	  
</script>


<!-- 


<script>
	/*Add row event*/
	$(document).on('click', '.rowfy-addrow', function(){
		let rowfyable = $(this).closest('table'); 
	  	/* let lastRow = $('tbody tr:last', rowfyable).clone(); */

	    var count = "N";
        var name = $("#name").val();
        var subject = $("#subject").val();
        var markup = "<tr><td><input type='test' name='record'></td><td>" + count + "</td></tr>";
	    
         let lastRow = $('#surveyListTable > tbody:last').append('<tr>'+
	    								'<td>-</td>'+   // 상품번호
	    								'<td>-</td>'+	// 상품이름
	    								'<td>-</td>'+	// 상품가격
	    								'<td>-</td>' +	// 상품수량
	    								"<td><input width='20px'></td>" +	// 상품상태
	    								'<td>-</td>'+	// 매진구분
	    								'<td>-</td>'+	// 등록날짜
	    								'<td>-</td>'+	// 수정날짜
	    							 '</tr>'); 
		
		
		

	  	
	  	$('input', lastRow).val('');
	  	/* $('tbody', rowfyable).append(lastRow); */ 
	  	$('#surveyListTable > tbody:last', rowfyable).append(lastRow);
	  	$(this).removeClass('rowfy-addrow btn-success').addClass('rowfy-deleterow btn-danger').text('-');
	});
	
	/*Delete row event*/
	$(document).on('click', '.rowfy-deleterow', function(){
	  $(this).closest('tr').remove();
	});
	
	/*Initialize all rowfy tables*/
	$('.rowfy').each(function(){
	  $('tbody', this).find('tr').each(function(){
	    $(this).append('<td><button type="button" class="btn btn-sm '
	      + ($(this).is(":last-child") ?
	        'rowfy-addrow btn-success">+' :
	        'rowfy-deleterow btn-danger">-') 
	      +'</button></td>');
	  });
	});
</script>
 -->
 
 <!-- 
 <script src="//code.jquery.com/jquery.min.js"></script>
<script>
//행개수
var count = 0;
//최대 행개수
var full_count = 5;
    $(function() {
     //처음에 켜지면 실행됨 onload
     $(window).load(function(){
      //추가 버튼 클릭이 자동으로 됨
      $('#add_btn').trigger('click');
     });
     //추가 버튼 클릭시
     $('#add_btn').click(function() {
      //행추가할때마다 행개수 +1
         ++count;
      
      //최대 행개수보다 크면 리턴
      if(count>full_count){
       alert("최대5개까지만 가능합니다.");
       return;
      }
      
            //행추가
            jQuery("#text_table").append('<tr id=tr'+count+'><td>'+count+'번 항목</td><td><input type=text name=text"+count+" id=text"+count+" size=40></td></tr>');
     });
       
     //삭제 버튼 클릭시
     $('#delete_btn').click(function() {
      //행이 하나밖에 없으면 삭제하지 않기
      if(count<=1){
       alert("더이상 삭제할수 없습니다");
       return;
      }
         //마지막 라인 삭제
         jQuery('#tr'+count).remove();
        
         //삭제할때마다 행개수 -1
      count--;
     });
     
    });
</script>

<button onclick="add_tr()" id="add_btn">추가</button>
<button onclick="delete_tr()" id="delete_btn">삭제</button>
<table cellpadding=0 cellspacing=0 id="text_table" border="1">
</table>
 -->
















<!-- 

   <br><br>
 
    <div class="row">
        <table id="example-table-1" width="100%" class="table table-bordered table-hover text-center">
            <thead>
                <tr>
                    <th>No. </th>
                    <th>아이디</th>
                    <th>이름</th>
                    <th>이메일</th>
                </tr>
            </thead>
            <tbody>                
                <tr>
                    <td>1</td>
                    <td>user01</td>
                    <td>홍길동</td>
                    <td>hong@gmail.com</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>user02</td>
                    <td>김사부</td>
                    <td>kim@naver.com</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>user03</td>
                    <td>존</td>
                    <td>John@gmail.com</td>
                </tr>
            </tbody>
        </table>
        <div class="col-lg-12" id="ex1_Result1" ></div> 
        <div class="col-lg-12" id="ex1_Result2" ></div> 
    </div>
    <br><br>
    
    <script>
    
        // 테이블의 Row 클릭시 값 가져오기
        $("#example-table-1 tr").click(function(){     
 
            var str = ""
            var tdArr = new Array();    // 배열 선언
            
            // 현재 클릭된 Row(<tr>)
            var tr = $(this);
            var td = tr.children();
            var lastrow = $( "tr" ).last().text();
            var lastrow1 = $( "tr" ).last().text().trim();
            var lastrow2 = $( "tr" ).last().text().split('\n');
            var lastrow3 = $( "tr" ).last().text().trim().split('\n');
            //var lastrow4 = lastrow3.split(',');
           
            // tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
            console.log("클릭한 Row의 모든 데이터11 : "+tr.text());
            console.log("테스트 : "+lastrow);
            console.log("테스트2 : "+lastrow.trim().split('\n'));
            console.log("테스트3 : "+lastrow.replace(/\r/g, ""));
            console.log("테스트11 : "+lastrow1);
            console.log("테스트22 : "+lastrow2);
            console.log("테스트33 : "+lastrow3);
          // console.log("테스트44 : "+lastrow4);
            
            
            // 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
            td.each(function(i){
                tdArr.push(td.eq(i).text());
            });
            
            console.log("배열에 담긴 값 : "+tdArr);
            
            // td.eq(index)를 통해 값을 가져올 수도 있다.
            var no = td.eq(0).text();
            var userid = td.eq(1).text();
            var name = td.eq(2).text();
            var email = td.eq(3).text();
            
            
            str +=    " * 클릭된 Row의 td값 = No. : <font color='red'>" + no + "</font>" +
                    ", 아이디 : <font color='red'>" + userid + "</font>" +
                    ", 이름 : <font color='red'>" + name + "</font>" +
                    ", 이메일 : <font color='red'>" + email + "</font>";        
            
            /* $("#ex1_Result1").html(" * 클릭한 Row의 모든 데이터333 = " + tr.text()); */
            $("#ex1_Result1").html(" * 클릭한 Row의 모든 데이터112 = " + lastrow.substr(1,5)); 
            $("#ex1_Result2").html(str);
        });
    
    
    </script>
-->







<!-- 
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
 -->
<!-- ---------------------------------------------------------------------------------------------------------------------------- -->	
	
	
	
	
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
	select, option {
	    width: 100%;
	}
	.guide{
		display:none;
		font-size:12px;
		top:12px;
		right:10px;
	}
	span.ok{color:green;}
	span.error{color:red;}
</style>
</head>
<body>

	<jsp:include page ="../common/menubar.jsp"/>
	<%-- <jsp:include page ="../admin/adminMenu.jsp"/> --%>
	
	
<h1 align="center"> 상품 등록 페이지 </h1>
	
	<br><br>
	<form action="goodsInsert.do" method="post" enctype="Multipart/form-data" id="goodsInsertForm">
		<table class="type02" align="center">	 
				<!-- <th>카테고리 코드  <span style = "color:red; font-size : 1.5em;">*</span> </th> -->
				<td><input id="selectlclCd" type="hidden" width="100%" name ="insertlclCd" readonly /></td>
				<!-- <th>대 코드  <span style = "color:red; font-size : 1.5em;">*</span> </th> -->
				<td><input id="selectmclCd" type="hidden" width="100%" name ="insertmclCd" readonly /></td>
				<!-- <th>중 코드  <span style = "color:red; font-size : 1.5em;">*</span> </th> -->
				<td><input id="selectsclCd" type="hidden" width="100%" name ="insertsclCd" readonly /></td>
				<!-- <th>소 코드  <span style = "color:red; font-size : 1.5em;">*</span> </th> -->
				<td><input id="selectcateCd" type="hidden" width="100%" name ="cateCd" value="${cateCd.cateCd}" readonly /></td>

			<tr>
	            <th>카테고리 <span style = "color:red; font-size : 1.5em;">*</span> </th>
	            <td>	    
					<select id="lclCd" name="lclCd">
						<c:forEach var="c" items="${gClist}">
							<option value="${c.cateCd}">${c.cateNm}</option>
						</c:forEach>
					</select>
					
				</td>
			</tr>
			
			<tr>
	            <th>대 선택  <span style = "color:red; font-size : 1.5em;">*</span> </th>
	            <td>
					<select id="mclCd" name="mclCd">
						<!-- <option>선택하세요.</option> -->
						<!-- 
						<option value="${l.cateCd}">${l.cateNm}</option>
						-->
						<c:forEach var="l" items="${gLlist}">
							<option value="${l.cateCd}">${l.cateNm}</option>
						</c:forEach>
						 
					</select>
				</td>
			</tr>
			
			<tr>
	            <th>중 선택  <span style = "color:red; font-size : 1.5em;">*</span> </th>
	            <td>
					<select id="sclCd" name="sclCd">
						<!-- <option>선택하세요.</option> -->
						<c:forEach var="m" items="${gMlist}">
							<option value="${m.cateCd}">${m.cateNm}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			 <!-- 
			<tr>
	            <th>소 선택  <span style = "color:red; font-size : 1.5em;">*</span> </th>
	            <td>
					<select id="nclCd" name="nclCd">
						<option>선택하세요.</option>
					</select>
				</td>
			</tr>
			-->
				 	
			<tr>
				<th>상품이름  <span style = "color:red; font-size : 1.5em;">*</span> </th>
				<!-- <td><input id="goodsName" type="text" width="100%" name ="goodsName" readonly /></td> -->
				<td>
					<input id="goodsName" type="text" width="100%" name ="goodsName"/>
				</td>
			</tr>
			<tr>
				<th></th>
				<td>
					<!-- <span class="guide ok">이 상품명은 사용 가능합니다.</span> -->
					<span class="guide error">이 상품명은 사용할수 없습니다.</span>
					<input type="hidden" name="idDuplicateCheck" id="idDuplicateCheck" value="0">
				</td>
			</tr>
			<tr>
				<th>상품가격  <span style = "color:red; font-size : 1.5em;">*</span> </th>
				<td><input id="goodsPrice" type="text" width="100%" name ="goodsPrice" numberOnly class="numb"/></td>
			</tr>
			<tr>
				<th>상품수량  <span style = "color:red; font-size : 1.5em;">*</span> </th>
				<td><input id="count" type="text" width="100%" name ="count" numberOnly class="numb"/></td>
			</tr>

			<tr>
				<th>상품상태</th>
				<td>
					<select name ="goodsStatus">
	                    <option value="Y" selected="selected">사용
	                    <option value="N">미사용
	                </select>
				</td>
			</tr>
			<tr>
				<th>매진구분</th>
				<td>
					<select name ="soldout">
	                    <option value="Y">매진
	                    <option value="N" selected="selected">판매
	                </select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<!-- <input type="submit" value="등록하기"> &nbsp; -->
					<input type="button" onclick="validate()" value="등록하기"> &nbsp;
					<input type="reset" value="등록취소">
				</td> 
			</tr>
		</table>
				
				
				<!-- InsertThumbnailServlet 만들러 ㄱㄱ!!!! -->
	</form>	
	
	<p align="center">
		<a href="adminMain.do">관리자페이지로 이동</a>
		<a href="goodsList.do">목록 보기로 이동</a>
	</p>
	
	
<script>
//str 숫자만 입력할수 있게 --------------------------------------------------------------------------------

	function addCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	 
	//모든 콤마 제거
	function removeCommas(x) {
	    if(!x || x.length == 0) return "";
	    else return x.split(",").join("");
	}

	$("input:text[numberOnly]").on("focus", function() {
	    var x = $(this).val();
	    x = removeCommas(x);
	    $(this).val(x);
	}).on("focusout", function() {
	    var x = $(this).val();
	    if(x && x.length > 0) {
	        if(!$.isNumeric(x)) {
	            x = x.replace(/[^0-9]/g,"");
	        }
	        x = addCommas(x);
	        $(this).val(x);
	    }
	}).on("keyup", function() {
	    $(this).val($(this).val().replace(/[^0-9]/g,""));
	});
//end 숫자만 입력할수 있게 --------------------------------------------------------------------------------

//str 등록버튼 클릭시------------------------------------------------------------------------------------
	function validate(){
		if($("#goodsPrice").val()==0){
			alert("상품가격을 입력해 주세요");
			$("#goodsPrice").focus();			
		}else if($("#count").val()==0){
			alert("상품수량을 입력해 주세요");
			$("#count").focus();
		}else if($("#goodsName").val()==0){
			alert("사용 가능한 상품명을 입력해 주세요");
			$("#goodsName").focus();
		}else if($("#idDuplicateCheck").val()==0){
			alert("사용 가능한 상품명을 입력해 주세요");
			$("#goodsName").focus();
		}else{
			var targetForm = $("#goodsInsertForm :input");
			// ,콤마 제거
			$.each(targetForm, function(index, elem){
			      $(this).val($(this).val().replace(/,/g, ''));
			});
			
			$("#goodsInsertForm").submit();
		} 
	}	
//end 등록버튼 클릭시------------------------------------------------------------------------------------




//str 카테고리 리스트 조회 --------------------------------------------------------------------------------
	$(function(){
		// 카테고리 조회
		$("#lclCd").on("change",function(){
			var lclCd =$(this).val();

			$("#mclCd option").remove();
			$("#sclCd option").remove();
			$("#nclCd option").remove();
			$("#cateCd").val("");
			$("#goodsName").val("");
			$("#goodsPrice").val("");
			$("#count").val("");
			
			$.ajax({
				url:"categoryCSelectBox.do",
				data:{lclCd:lclCd},
				success:function(data){
					for(var i=0; i<data.list.length; i++){
						$("#mclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
					}
//str 처음 조회시 카테고리 전체 조회---------------------------------------------					
					var mclCd = null;
					
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
							// 카테고리 변경시 하위 카테고리 조회
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
			
			$.ajax({
				url:"categoryLSelectBox.do",
				data:{lclCd:lclCd, mclCd:mclCd},
				success:function(data){
					
					for(var i=0; i<data.list.length; i++){
						$("#sclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
					}
					/*
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
								//$("#nclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
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
					*/
					
	
				},
				error:function(request, status, errorData){
					alert("error code : " + request.status + "\n"
										  + "message : " + request.responseText
										  + "error : " + errorData);
				}
			});
		});		
//---------------------------------------------------------------------------------------------------
	// (중)카테고리 조회
		$("#sclCd").on("change",function(){
			var lclCd =$("#lclCd").val();
			var mclCd =$("#mclCd").val();// 공백제거후 담음
			var sclCd =$(this).val();// 공백제거후 담음
			
			var sizeCd = null;
			var sizeNm = null;
			
			$("#nclCd option").remove();
			$("#cateCd").val("");
			$("#goodsName").val("");
			$("#goodsPrice").val("");
			$("#count").val("");
			
			$.ajax({
				url:"categoryMSelectBox.do",
				data:{lclCd:lclCd, mclCd:mclCd, sclCd:sclCd},
				success:function(data){

					for(var i=0; i<data.list.length; i++){
						//$("#nclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
						$("#nclCd").append("<option value='" + data.list[i].cateCd + "' + cost_value='"+data.list[i].cateNm+"'>" + data.list[i].cateNm +'</option>');
					}			
 					for(var i=0; i<1; i++){
					//	sizeCd = data.list[i].cateCd;
					//	sizeNm = data.list[i].cateNm;
					//	$("#cateCd").val(sizeCd);
					//	$("#goodsName").val(sizeNm);
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
		});			
		
	});
//end 카테고리 리스트 조회 --------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------
// 카테고리(소) 변경시 상품이름에 반영
/*
$("#nclCd").on("change",function(){
	$("#cateCd").val("");
	$("#goodsName").val("");
	
	var element = $(this).find('option:selected');
	var myTag = element.attr('cost_value');
	$("#goodsName").val(myTag);
	
	var cateCd = $("#nclCd").val();
	
	$("#cateCd").val(cateCd);
	
});
*/
//---------------------------------------------------------------------------------------------------

	$(function(){
		$("#goodsName").on("keyup",function(){
			var goodsName =$(this).val().trim();// 공백제거후 담음

			$.ajax({
				url:"selectGoodsNm.do",
				data:{goodsName:goodsName},
				success:function(data){
					if(data.isUsable == true){
						 
						$(".guide.error").hide(); // 이전값이 에러표시나면 숨켜주기위해
						//$(".guide.ok").show();
						$("#idDuplicateCheck").val(1);		
					}else{
						$(".guide.error").show();
						//$(".guide.ok").hide();
						$("#idDuplicateCheck").val(0);							
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

//---------------------------------------------------------------------------------------------------

</script>
	
</body>
</html>
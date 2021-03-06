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
<link href="js/Modal.js-master/build/css/modal.css" rel="stylesheet">

<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>



<style>

#updateTable{
	margin-left : 300px;
	background :  red;
}
 select[multiple]{
     height: 100%;
   }

	select, option {
	    width: 100%;
	    /* overflow-y: auto; */
	}
	.guide{
		display:none;
		font-size:12px;
		top:12px;
		right:10px;
	}
	span.ok{color:green;}
	span.error{color:red;}

/* 모달 css */
  *, *:before, *:after {
    box-sizing: border-box; }
    body { font-family: 'Roboto'; }
    .modal_container {text-align: center; }

</style>
</head>
<body>

	<jsp:include page ="../common/menubar.jsp"/>
	
	
	<div id="container" style="overflow: auto; height: auto;" ><!-- container -->
		<div id="updateTableArea">
		
		<h1 align="center"> 상품 수정 페이지 </h1>

		<form action="goodsUpdate.do" method="post" enctype="Multipart/form-data" id="goodsUpdateForm">
			<table  id="updateTable" class="type02" align="center" style="margin-left : 300px;">
				
				<input id="selectcateCd" type="hidden" name ="cateCd" value="${cateCd}" />
				<input id="gId"  type="hidden" name ="gId" value="${goods.gId}"/>
				<tr>
		            <th>카테고리<span style = "color:red; font-size : 1.5em;">*</span> </th>
		            <td>	    
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
				
				<tr>
		            <th>대 선택  <span style = "color:red; font-size : 1.5em;">*</span> </th>
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
				<tr>
		            <th>중 선택  <span style = "color:red; font-size : 1.5em;">*</span> </th>
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
				
				<tr>
					<th>상품이름  <span style = "color:red; font-size : 1.5em;">*</span> </th>
					<td><input id="goodsName" type="text" width="100%" name ="goodsName" value="${goods.goodsName}"/></td>
				</tr>
				<tr>
					<th>상품가격  <span style = "color:red; font-size : 1.5em;">*</span> </th>
					<td><input id="goodsPrice"  type="text" width="100%" name ="goodsPrice" numberOnly value="${goods.goodsPrice}"/></td>
				</tr>
				<tr>
					<th>상품수량  <span style = "color:red; font-size : 1.5em;">*</span> </th>
					<td><input id="count"  type="text" width="100%" name ="count" numberOnly value="${goods.count}"/></td> 
				</tr>
	
				<tr>
					<th>상품상태</th>
					<td>
						<select name ="goodsStatus">
							<c:if test="${goods.goodsStatus eq 'Y'}">
			                    <option value="Y" selected="selected">사용
			                    <option value="N">미사용
							</c:if>
							<c:if test="${goods.goodsStatus eq 'N'}">
			                    <option value="Y">사용
			                    <option value="N" selected="selected">미사용
							</c:if>
		                </select>
					</td>
				</tr>
				<tr>
					<th>매진구분</th> 
					<td>
						<select name ="soldout">
							<c:if test="${goods.soldout eq 'Y'}">
								<option value="Y" selected="selected">매진
								<option value="N">판매
							</c:if>
							<c:if test="${goods.soldout eq 'N'}">
								<option value="Y">매진
								<option value="N" selected="selected">판매
							</c:if>
		                </select>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<!-- <input type="submit" value="등록하기"> &nbsp; -->
						<input type="button" onclick="validate()" value="수정하기"> &nbsp;
						<input type="reset" value="수정취소">
					</td> 
				</tr>
			</table>
					<!-- InsertThumbnailServlet 만들러 ㄱㄱ!!!! -->
		</form>	
		
		<p align="center">
			<a href="adminMain.do">관리자페이지로 이동</a>
			<a href="goodsList.do">목록 보기로 이동</a>
		</p>
	</div>
		
</div>	
			<div class="modal_container">
			  <div class="css-script-ads">
			    	<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- CSSScript Demo Page -->
				<ins class="adsbygoogle"
				     style="display:inline-block;width:728px;height:90px"
				     data-ad-client="ca-pub-2783044520727903"
				     data-ad-slot="3025259193"></ins>
					<script>
						(adsbygoogle = window.adsbygoogle || []).push({});
					</script> 
				</div>
			</div>
			<script src="js/Modal.js-master/modal.js"></script>
			<script>
			  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
			
			  ga('create', 'UA-46156385-1', 'cssscript.com');
			  ga('send', 'pageview');
			
			</script>
		


<script>
//-----------------------------------
		$("#lclCd").on("change",function(){
			var lclCd =$(this).val();
			
			$("#mclCd option").remove();
			$("#sclCd option").remove();
			$("#nclCd option").remove();
			$("#cateCd").val("");
			// click 이벤트 막기
//			$("#lidDuplicateCheck").val(1);	
//			$("#midDuplicateCheck").val(1);
//			$("#sidDuplicateCheck").val(1);
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
										sizeLCd = data.list[i].lclCd;
										sizeMCd = data.list[i].mclCd;
										sizeSCd = data.list[i].sclCd;
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
//			$("#midDuplicateCheck").val(1);
//			$("#sidDuplicateCheck").val(1);
			
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
								sizeLCd = data.list[i].lclCd;
								sizeMCd = data.list[i].mclCd;
								sizeSCd = data.list[i].sclCd;
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
			// click 이벤트 막기
//			$("#sidDuplicateCheck").val(1);
			
			$.ajax({
				url:"categoryMSelectBox.do",
				data:{lclCd:lclCd, mclCd:mclCd, sclCd:sclCd},
				success:function(data){

					for(var i=0; i<data.list.length; i++){
						/* $("#nclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>'); */
						$("#nclCd").append("<option value='" + data.list[i].cateCd + "' + cost_value='"+data.list[i].cateNm+"'>" + data.list[i].cateNm +'</option>');
					}			
 					for(var i=0; i<1; i++){
						sizeLCd = data.list[i].lclCd;
						sizeMCd = data.list[i].mclCd;
						sizeSCd = data.list[i].sclCd;
					} 

				},
				error:function(request, status, errorData){
					alert("error code : " + request.status + "\n"
										  + "message : " + request.responseText
										  + "error : " + errorData);
				}
			});
		});			
		
//end 카테고리 리스트 조회 --------------------------------------------------------------------------------
	
	
	
	
	
	
	
	
	
	

/* str 숫자만 입력할수 있게 -------------------------------------------------------------------------------- */
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
/* end 숫자만 입력할수 있게 -------------------------------------------------------------------------------- */

// str 카테고리 리스트 조회 ---------------------------------------------------------------------------------------------------------------------
		$(function(){
			$("#goodsName").on("keyup",function(){
				var goodsName =$(this).val().trim();// 공백제거후 담음

				$.ajax({
					url:"selectGoodsValue.do",
					data:{goodsName:goodsName},
					success:function(data){

						for(var i in data){
							if( data == null){
								$("#goodsPrice").val("");
								$("#count").val("");
							}
							// 필요한건 2개지만 일단 생성 함
							var $gId = data[i].gId;
							var $gName = decodeURIComponent(data[i].goodsName.replace(/\+/g, " "));
							var $gPrice = data[i].goodsPrice;
							var $gCount = data[i].count;
							var $gStatus = data[i].goodsStatus;
							var $gSoldout = data[i].soldout;
							 
							
							$("#goodsPrice").val($gPrice);
							$("#count").val($gCount);
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
// end 카테고리 리스트 조회 ---------------------------------------------------------------------------------------------------------------------	



//str 등록버튼 클릭시----------------------------------------------------------------------------------------------------
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
			var targetForm = $("#goodsUpdateForm :input");
			// ,콤마 제거 
			$.each(targetForm, function(index, elem){
			      $(this).val($(this).val().replace(/,/g, ''));
			});
			
			var gId = $("#gId").val();
			// 현재 해당 상품이 판매 중인지 조회
			$.ajax({
				url:"selectsellGoodsList.do",
				data:{gId:gId},
				success:function(data){
					if(data.isUsable != true){	// 판매중인 상품이 있다면 팝업 메세지 띄워서 진행여부 확인
						soldout();
					}else{
						// 데이터 없으면
						 $("#goodsUpdateForm").submit();
					}
				},
				error:function(request, status, errorData){
					alert("error code : " + request.status + "\n"
										  + "message : " + request.responseText
										  + "error : " + errorData);
				}
			});

			
			//$("#goodsUpdateForm").submit();
		} 
	}
	
	
	
	
	
	/*
	function validate(){
		var targetForm = $("#goodsUpdateForm :input");
		// ,콤마 제거
		$.each(targetForm, function(index, elem){
		      $(this).val($(this).val().replace(/,/g, ''));
		});

		$("#goodsUpdateForm").submit(); 
	}
	*/
//end 등록버튼 클릭시----------------------------------------------------------------------------------------------------

</script>
	
		<script>
			function soldout(){
				Modal.confirm({
					title: '수정 진행 여부',
					message: 'OK 클릭시 현재 판매중인 상품의 상태도 변경됩니다.',
					onConfirm: function() {
						$("#goodsUpdateForm").submit();
					    //alert('완료되었습니다');
			  		},
					  	onCancel: function() {
					    //alert('취소되었습니다.');
			  		},
				});
				return;
			}
		</script>

</body>
</html>
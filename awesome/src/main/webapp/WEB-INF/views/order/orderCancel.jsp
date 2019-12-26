<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<style>
table {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: center;
	line-height: 1.5;
	border-top: 1px solid #d0d0d0;
	margin: 20px 10px;
}

table td {
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #d0d0d0;
	font-size: 15px;
}

a {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	display: block;
	max-width: 150px;
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

	<div align="center">
	<img src="resources/images/logo.png" style="height:20%; width:20%;">
	<h1>주문취소</h1>
	<h4 >취소하실 상품을 선택해주세요</h4>
	</div>
	<table>
		<tr>
			<td style="width: 10px"><input type="checkbox" id="chkall"
				class="check" value="0"></td>
			<td style="width: 100px">상품이름</td>
			<td style="width: 200px">상품이미지</td>
			<td style="width: 50px">수량</td>
			<td style="width: 70px">가격</td>
		</tr>
 		<c:forEach var="o" items="${list }">
			<tr>
				<c:if test="${o.orderStatus eq 'B' }">
					<td><input type="checkbox" class="check checks" value="${o.oId }" ></td>
					<td style="margin-top : 100px"><pre>${o.goodsTitle }</pre></td>
					<td><img src="resources/auploadFiles/${o.filePath }" style="height:180px; width:150px;"></td>
					<td>${o.orderCount }</td>
					<td>${o.gPrice * o.orderCount}원</td>
			</tr>
			</c:if>
		</c:forEach> 
	</table>

	<div id="button" align="center">

  			<a onclick="cancel()" class="button">선택 상품 취소</a>
	</div>
	<script> 
	var str="";
	$(function(){
	
	    $("#chkall").click(function(){
	        var chk = $(this).is(":checked");//.attr('checked');
	        if(chk) $(".checks").prop('checked', true);
	        else  $(".checks").prop('checked', false);
	    });
	    
	    

		$(".checks").click(function(){
			if($("#chkall").is(":checked")){
				//console.log("dd");
				 if($(this).prop('checked', false)){
					 $("#chkall").prop('checked', false);
				} 
			}
		});
	    
	    
	    
	    
	    
	});
	
/* 
	 */


	
	 $(document).ready(function(){
			$(".check").click(function(){
				str="";
				$(".check").each(function(){
					if(	$(this).is(":checked"))
						str += $(this).val()+"/";
					//console.log(str);
				});
				
			});
		});
	 
	 
	function cancel(){
		if($('.check').is(':checked')){
			 if(confirm("정말 취소하시겠습니까 ?") == true){
				 	orderCancel(str); 
			        
			    
			    
			    }
			    else{
			        return ;
			    }
		}else{
			alert("선택된 상품이 없습니다.");
		}

		} 
	
	
 	function orderCancel(){
 
	  	$.ajax({
			url:"orderCancel.do",
			dataType:"json",
			data: {oId:str},
			contentType:"application/x-www-form-urlencoded;charset=utf-8",
			success:function(data){
				if(confirm("취소되었습니다.")){
					self.close();
				}
			},
			error:function(request, status, errorData){
				alert("error code: " + request.status 
						+"message: " + request.responseText
						+"error: " + errorData);
			}
		}) 
	} 
	</script>

</body>
</html>
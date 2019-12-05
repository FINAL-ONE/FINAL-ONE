<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<style>
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
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #d0d0d0;
}
</style>
<body>

	<h2>주문취소</h2>
	<table>
		<tr>
			<td style="width: 10px"><input type="checkbox" id="chkall"
				class="check" value="0"></td>
			<td style="width: 200px">상품이름</td>
			<td style="width: 200px">상품이미지</td>
			<td style="width: 50px">수량</td>
			<td style="width: 50px">가격</td>
		</tr>
		<c:forEach var="o" items="${list }">
			<tr>
				<c:if test="${o.orderStatus eq 'B' }">
					<td><input type="checkbox" class="check checks" value="${o.oId }" ></td>
					<td><pre>${o.gName }</pre></td>
					<td>${o.oId }</td>
					<td>${o.orderCount }</td>
					<td>${o.gPrice * o.orderCount}</td>
			</tr>
			</c:if>
		</c:forEach>
	</table>

	<div id="button" align="center">
		<button onclick="cancel()">선택 상품 취소</button>
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
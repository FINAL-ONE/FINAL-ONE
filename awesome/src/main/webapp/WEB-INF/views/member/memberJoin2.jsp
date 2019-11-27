<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>장바구니</title>
<!-- 부트스트랩 css,js 시작 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../bootstrap/js/bootstrap.min.js"></script>
<!-- 부트스트랩 css,js  끝-->
<style type="text/css">
#saleTable td{
	vertical-align: middle;
}
</style>
</head>
<body>
<div class="bk"></div>
<div class="boardForm">
	<table class="boardTable">
	<thead>
		<tr>
			<td class="boardName">장바구니</td>
		</tr>
	</thead>
	</table>
</div>
<div class="bk"></div>
<table class="table table-hover" id="saleTable">
	<tr><td colspan="2">상품명</td><td>가격</td><td>사이즈</td><td>색상</td>
	<td>수량</td><td>합계</td><td></td>
	</tr>
	<c:set var="tot" value="${0}" />
	<!-- 
	var : 반목문의 증가값을 설정
	varStatus : 변수의 상태를 담은 변수를 설정
	index : 숫자값으로 items에 정의한 목록을 가리키는 index, 0 부터 시작
	 -->
	<c:forEach items="${mcart.mitemList}" var="mitemSet" varStatus="stat">
	<!-- var="mitemSet" -->
	<!-- MitemSet에 호출되어 있는 Mitem(변수명 mitem) -->
	
	<tr>
	<td><a href="../mall/detail.shop?itemnum=${mitemSet.mitem.itemnum}"><img src="../img/${mitemSet.mitem.pictureUrl }" class="img-rounded" style="width: 100px;height: 100px;"></a></td>
	<td><a href="../mall/detail.shop?itemnum=${mitemSet.mitem.itemnum}">${mitemSet.mitem.name}</a></td>
	<td>${mitemSet.mitem.price }</td>
	<td>${mitemSet.size }</td>
	<td>${mitemSet.scolor }</td>
	<td>${mitemSet.quantity}</td>
	<td>${mitemSet.mitem.price * mitemSet.quantity }</td>
	<td><a href="cartDelete.shop?index=${stat.index }"><span class="glyphicon glyphicon-trash"></span></a></td>
	</tr>
	<c:set var="tot" value="${tot + (mitemSet.mitem.price * mitemSet.quantity)}"></c:set>
	</c:forEach>
</table><br>
<div class="bk"></div>
<div class="" style="text-align: right;">
<div style="font-size: 25px; text-align: right;">총구입금액 : '${tot}원'</div>
</div>
<div class="bk"></div>
<div>
	<div style="display:inline-block; margin-right:30px; font-size: 15pt; ">
		<a href="../mall/list.shop">상품 목록</a><br>
	</div>
	<div style="display:inline-block; font-size: 15pt;">
		<a href="../mcheckout/checkout.shop">주문하기</a><br>
	</div>
</div>
</body>
</html>
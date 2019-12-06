<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ٱ���</title>
<!-- ��Ʈ��Ʈ�� css,js ���� -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../bootstrap/js/bootstrap.min.js"></script>
<!-- ��Ʈ��Ʈ�� css,js  ��-->
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
			<td class="boardName">��ٱ���</td>
		</tr>
	</thead>
	</table>
</div>
<div class="bk"></div>
<table class="table table-hover" id="saleTable">
	<tr><td colspan="2">��ǰ��</td><td>����</td><td>������</td><td>����</td>
	<td>����</td><td>�հ�</td><td></td>
	</tr>
	<c:set var="tot" value="${0}" />
	<!-- 
	var : �ݸ��� �������� ����
	varStatus : ������ ���¸� ���� ������ ����
	index : ���ڰ����� items�� ������ ����� ����Ű�� index, 0 ���� ����
	 -->
	<c:forEach items="${mcart.mitemList}" var="mitemSet" varStatus="stat">
	<!-- var="mitemSet" -->
	<!-- MitemSet�� ȣ��Ǿ� �ִ� Mitem(������ mitem) -->
	
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
<div style="font-size: 25px; text-align: right;">�ѱ��Աݾ� : '${tot}��'</div>
</div>
<div class="bk"></div>
<div>
	<div style="display:inline-block; margin-right:30px; font-size: 15pt; ">
		<a href="../mall/list.shop">��ǰ ���</a><br>
	</div>
	<div style="display:inline-block; font-size: 15pt;">
		<a href="../mcheckout/checkout.shop">�ֹ��ϱ�</a><br>
	</div>
</div>
</body>
</html>
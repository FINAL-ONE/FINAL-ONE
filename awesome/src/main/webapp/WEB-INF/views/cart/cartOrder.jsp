<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>

.centerDiv{
	  width:880px;
  	  /* border: 1px solid pink; */ 
      margin-left:auto;
      margin-right:auto;
      height: auto;
      padding-left: 40px;
}

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
</head>
<body>
<jsp:include page="../common/menubar.jsp" />

	<div id="container" style="overflow: auto; height: auto;" ><!-- container -->
	<div class = "centerDiv"> 
<div class="order_detail mt80">
		<h2>정보</h2>
		<div class="order_detail mt80">
			<h3 class="order_detail_tit">구매자 정보</h3>
			<table class="type05">
				<tbody>
				<tr>
					<th>보내는분</th>
					<td><input name="sdname" id="sdname" class="order_txt order_dimmed" type="text" style="width:130px" value="" placeholder="보내는분 입력"> </td>
				</tr>
				<tr class="last">
					<th>연락처</th>
					<td><input type="text" value=""></td>
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
					<div class="order_del_sel">
						<input id="delivradio1" class="order_rdo" type="radio" onclick="" checked="checked" value="" name="delivaddradio">
						<label style="margin-right:15px" class="order_selected" for="ss3">기본 배송지</label>
					</div>
					<div class="order_del_sel">
					<input id="delivradio2" class="order_rdo" type="radio" onclick="" value="user" name="delivaddradio">
					<label style="margin-right:15px" for="" class="">새 배송지</label>
					</div>
				</div>
				</td>
				</tr>
				<tr>
					<th>받으실분</th>
					<td><input type="text" value=""></td>
				</tr>

				<tr>
					<th>주소</th>
					<td><input type="text" value=""></td>
				</tr>

				<tr>
					<th><span>연락처</span></th>
					<td><input type="text" value=""></td>
				</tr>

				</tbody>
				</table>
		</div><br><br>
		
		<div class="order_detail mt80">
			<table class="type05">
				<thead>
			    <tr>
			        <th scope="cols" colspan="2">결제 정보</th>
			    </tr>
			    </thead>
				<tbody>
				<tr>
					<th>포인트 사용</th>
					<td><input class="order_txt order_dimmed" style="width:130px" type="tel" name="dcp" id="dcp" value="0" maxlength="10" data-dcp="0" data-usedcp="0"><em class="order_txt_p">원<span class="ml8 fc666">(사용가능 적립금 : <strong class="order_fcT1 fctah" id="mycpp" data-mycpp="0"><span>0</span></strong>원)</span></em><a id="cupbtn" alt="적용"><span class="order_btn_apply"></span></a><!--20160427 적립금 안내 문구 추가-->
					<span class="fctah ml10 fc666" style="vertical-align:top;position: relative;top:12px">※ 적립금은 최소 2,000원 이상부터 사용가능합니다.</span>	
					</td>
				</tr>
				</tbody>
				</table>
		</div>
		</div>
		</div><!--  container 끝  -->
</body>

<footer>
	<jsp:include page ="../common/footer.jsp"/>
</footer>
</html>
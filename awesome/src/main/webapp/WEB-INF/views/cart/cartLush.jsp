<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<form action="">
		<div class="table1 type1">



				<h3 class="tit-supplier">제품</h3>

                <div class="groobeeProductList" style="display:none">
			<a href="../goods/goods_view.php?goodsNo=1000000769" class="groobeeProductA"></a>
			<span class="groobeeProductName">부쉐 드 노엘</span>
		<span class="groobeeProductCategory">001010</span>
			<span class="groobeeProductCount">1</span>
			<span class="groobeeProductImage"><img src="/data/goods/19/09/37/1000000769/1000000769_list_048.jpg" width="40" alt="부쉐 드 노엘" title="부쉐 드 노엘" class="middle"></span>
		<span class="groobeeProductPrice">22000</span>
		</div><table>
                    <thead>
                    <tr>
                        <th>
                        <span class="form-element">
                            <input type="checkbox" id="allCheck-frmCart" class="checkbox gd_checkbox_all" data-target-id="cartSno1_" data-target-form="#frmCart" checked="checked">
                            <label for="allCheck-frmCart" class="check-s">전체선택</label>
                        </span>
                        </th>
                        <th style="width:440px;">제품 정보</th>
                        <th>수량</th>
                        <th>금액</th>
                        <th>복지혜택</th>
                        <th>합계금액</th>
                        <th style="width:120px;">배송비</th>
                    </tr>
                    </thead>
                    <tbody>


						
		<!-- Groobee Order & Cart Selector Script -->
		
		<!-- End of Groobee Order & Cart Selector Script -->
		<!-- AceCounter -->
		<script language="javascript">
		_A_amt[_ace_countvar]='￦22,000'.replace(/[^0-9]/g,'');
		_A_nl[_ace_countvar]='1';
		_A_pl[_ace_countvar]='1000000769';
		_A_pn[_ace_countvar]='부쉐 드 노엘';
		_A_ct[_ace_countvar]='001010';
		_ace_countvar++;
		</script>
						
		<!-- ACE_Trader_Script : Start -->
		<script type="text/javascript">
			atItems.push({
				 id: "1000000769",
				 price:'22000'.replace(/[^0-9]/g,'')/"1",
				 quantity:"1",
				 category:"",
				 imgUrl:"",
				 name:"부쉐 드 노엘",
				 desc:"",
				 link:"http://"+location.host+"/goods/goods_view.php?goodsNo=1000000769"
			});
	    </script>
		<!-- ACE_Trader_Script : End -->
						
                    <tr>
                        <td rowspan="2" class="ta-c cb-array">
							<span class="form-element">
								<input type="checkbox" name="cartSno[]" id="cartSno1_736545" value="736545" class="checkbox" checked="checked" data-price="22000" data-mileage="0" data-goodsdc="0" data-memberdc="0" data-coupondc="" data-possible="y">
								<label for="cartSno1_736545" class="check-s">선택</label>
							</span>
                        </td>
                        <td class="gi this-product">
							<div style="display:table;width:100%;">
                            <span class="thumb"><a href="../goods/goods_view.php?goodsNo=1000000769"><img src="/data/goods/19/09/37/1000000769/1000000769_list_048.jpg" width="40" alt="부쉐 드 노엘" title="부쉐 드 노엘" class="middle"></a></span>
                            <div class="text_con">
                                <div id="coupon_apply_736545" style="display:none;">
                                    <button type="button" class="btn-alert-login"><img src="/data/skin/front/howling/img/btn/coupon-apply.png" alt="쿠폰적용"></button>
                                </div>
                                <a href="../goods/goods_view.php?goodsNo=1000000769">부쉐 드 노엘</a>
								<p class="good_category">크리스마스</p>

                            </div>
							</div>
                        </td>
						<td class="ta-c count  " rowspan="2">
							<!-- 튜닝 : 수량 변경 start -->
                            <span class="count_bx">
								<button class="down goods-cnt ztu_cnt_down" type="button" title="감소" onmousedown="javascript:AEC_F_D('1000000769','o',1);">감소</button>
								<input type="text" name="goodsCnt[]" value="1" title="수량" class="inp_text ztu_goods_cnt js-number" data-stock-fl="y" data-total-stock="9" data-min-order-cnt="1" data-max-order-cnt="20" data-sales-unit="1" data-change-before-value="1" data-default-goods-cnt="1" data-goods-key="0" data-goods-no="1000000769" data-goods-nm="부쉐 드 노엘" data-option-nm="" data-fixed-sales="option" data-fixed-order-cnt="option" onchange="input_count_change(this,'1');return false;">
								<button class="up goods-cnt ztu_cnt_up" type="button" title="증가" onmousedown="javascript:AEC_F_D('1000000769','i',1);">증가</button>

                                <span class="ztu_hidden_bt" goods_type="default" style="display: none;">
                                    <button type="button" class="normal-btn small1 js-goods-cnt-change" goods_type="default" data-sno="736545" data-goodsno="1000000769"><em>수정</em></button>
                                </span>
							</span>
                            <!-- 튜닝 : 수량 변경 end -->
                        </td>
                        <td class="ta-c  " rowspan="2">
                            <strong class="price">￦22,000 </strong>
                            <p class="add_currency"></p>
                        </td>
                        <td rowspan="2" class="benefits">
                        </td>
                        <td rowspan="2" class="ta-c">
                            <strong class="price">￦22,000</strong>
                            <p class="add_currency"></p>
                        </td>

                        <td rowspan="2" class="ta-c">
                        <span class="c-gray">
                            <span style="display:none;">비회원 및 직원용 배송비<br></span>
                            ￦2,500

                                <br>
                                (택배)
                        </span>
                        </td>

                    </tr>
                    <tr class="op">
                        <td>
                            <div>
                            </div>
                        </td>
                    </tr>
                    </tbody>

                </table>
                <!-- 장바구니 상품리스트 끝 -->
            </div>
            </form>
            <div class="price-box">
            <div>
                <p>
                    <span class="detail"><em class="tit">총 <em id="totalGoodsCnt">0</em> 개의 금액</em> ￦<strong id="totalGoodsPrice">0</strong></span>
                    <span id="deliveryCalculateNone"><img src="/data/skin/front/howling/img/icon/plus_new.png" alt="더하기"><em class="tit">배송비</em> ￦<strong id="totalDeliveryCharge">0</strong></span>
                    <span class="total"><img src="/data/skin/front/howling/img/icon/total_new.png" alt="합계"><em class="tit">총 주문금액</em>￦<strong id="totalSettlePrice">0</strong>
                    </span></p><div class="add_currency" style="display:none;"><em id="totalSettlePriceAdd">0</em></div>
                    
                <p></p>
                <span id="deliveryChargeText"></span>
            </div>
        </div>
	
	
	
</body>
	<footer>
		<jsp:include page="../common/footer.jsp" />
	</footer>
</html>
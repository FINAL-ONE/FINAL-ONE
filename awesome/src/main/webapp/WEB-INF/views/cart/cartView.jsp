<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/cart3.css">
<!-- <link rel="stylesheet" type="text/css" href="css/cart.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="css/cart2.css"> -->
 
<style>
@charset "utf-8";

@import url("font-awesome.css");
@import url("font-awesome.min.css");

/********************************************/
/************ 주문, 배송, 결제 관련  *************/
/********************************************/

.container{width:1100px;padding-top:150px;margin:0 auto}
.order_fcT1 {color: #fe4f4f;}
.order_fcT2 {color: #7e8bd5;}


/*주문결제 및 결제완료*/
.order_top_wrap {position:relative;background:#f4f4f4;}
.order_top_wrap2 {position:relative;background:#fff;}
.order_top{position:relative;padding:20px 15px;overflow:hidden;}

/*20180713 주문배송조회 타이틀 UI 변경*/
.order_top_new { float:left; position:relative;padding:20px 15px;overflow:hidden;} 
.order_title1 {font-family:NanumGothic,'나눔고딕'; position:relative;top:2px;font-size:26px;font-weight:600;color:#161616;letter-spacing: -1px; display: inline-block;  height: 31px;}
/*//20180713 주문배송조회 타이틀 UI 변경*/

z
/* 20161215 1:1문의 설명텍스트 추가 */
.order_txt1 {display:block;padding:15px 0px 0;font-family:NanumGothic,'나눔고딕';font-size:1.05em;font-weight:normal;color:#365392;line-height:1.4em}
.order_txt1 em {font-weight:500}
/* //20161215 1:1문의 설명텍스트 추가 */

.order_subtitle_list {float: left; position: absolute; right: 15px; top: 28px;}
.order_subtitle_list li { float: left;}
.order_subtitle1 {background-image: url("../../img/order/step1_off.gif"); height: 16px; width: 96px;margin-right:13px}
.order_subtitle2 {background-image: url("../../img/order/step2_off.gif"); height: 16px; width: 103px;margin-right:13px}
.order_subtitle3 {background-image: url("../../img/order/step3_off.gif"); height: 16px; width: 81px;}
.order_subtitle1.on {background-image: url("../../img/order/step1_on.gif"); height: 19px; width: 113px;margin:-2px 13px 0 0}
.order_subtitle2.on {background-image: url("../../img/order/step2_on.gif"); height: 19px; width: 123px;margin:-2px 13px 0 0}
.order_subtitle3.on {background-image: url("../../img/order/step3_on.gif"); height: 19px; width: 95px;margin:-2px 0 0 0}

/* 20160331 크로스 브라우징으로 인한 주문상세 썸네일 이미지영역 수정 */
.order_tbl { position:relative;width:100%;}
.order_tbl th {background:#fff; font-weight:normal;border-right: 1px solid #d0d0d0; border-bottom: 1px solid #d0d0d0; border-top: 2px solid #737373; color: #333; height: 40px;}
.order_tbl th.order_amount { border-right: 0 none;}
.order_tbl tr.last td { border-bottom:1px solid #d0d0d0;padding:20px 0;}
.order_tbl tr td {border-bottom: 1px solid #dfe2e6;padding:20px 0;}

.order_tbl td.order_info {vertical-align:top;text-align:left;padding-left:10px}
.order_tbl td.order_thmb {vertical-align:top;text-align:left;padding-left:10px;width:120px}
.order_tbl td.order_thmb {height:110px;overflow: hidden; width: 120px; }
.order_tbl td.order_thmb img { height: 100%; width:120px}
/* //20160331 크로스 브라우징으로 인한 주문상세 썸네일 이미지영역 수정 */

.order_tbl td.order_info, .order_tbl td.order_ea, .order_tbl td.order_amount { border-right: 1px solid #eaeaec;}
.order_tbl td.order_info2 {  border-right: 0 none;}
.order_tbl td.order_amount { border-right: 0 none;color: #010101;  font-weight: bold;  padding-right: 25px;  text-align:right}
.order_tbl td.order_amount2 { border-right: 0 none;color: #010101;  font-weight: bold;text-align:center}
.order_tbl td.order_ea {color: #010101; font-weight: bold;  text-align:center;}
.order_fcT1 {color: #fe4f4f;}

.order_deal {color: #010101;  display: inline-block;  font-size: 16px;  font-weight: 700;  letter-spacing: -1px;  line-height: 22px;  margin-top: 0px;  max-height: 46px; max-width: 650px;
    overflow: hidden;  padding: 1px 1px 0 15px;  vertical-align: middle;}
.order_deal_info {color: #7b8186;  display: block;  font-size: 14px; letter-spacing: -1px;  line-height: 22px;  margin-top: 0px;  max-height: 46px; max-width: 650px;
    overflow: hidden;  padding: 3px 1px 0 15px;  vertical-align: middle;}
.order_option_area {position: relative; border-top: 1px solid #efefef;margin: 20px 15px 0 15px; overflow: hidden;}
.order_option_area li::after { clear: both; content: ""; display: block;}
.order_option_area li:first-child { border-top: 0 none; padding-top: 9px;}
.order_option_area li { overflow: hidden;background-color: #fbfbfb;  border-left: 1px solid #efefef; border-right: 1px solid #efefef; border-bottom: 1px solid #efefef; color: #66646b;  font-size: 12px; padding: 8px 0px 8px 13px; position: relative;}

.order_option_area li .order_option {float: left; line-height: 16px; margin-top: 1px; max-height: 32px; overflow: hidden; padding-right: 5px; width:75%;}
/*.order_option_area li .order_option_cnt .order_option_input {padding:0 20px;display: inline-block;border: 0 none;  font-family: dotum,"돋움";  font-size: 12px; letter-spacing: -1px; line-height: 17px;text-align: center;}*/
.order_option_area li .order_option_cnt .order_option_input {padding:0 16px;display: inline-block;border: 0 none;  font-family: dotum,"돋움";  font-size: 12px; letter-spacing: -1px; line-height: 17px;text-align: center;} /*20170428 옵션수량 영역변경으로 패딩값 수정*/
.order_option_area li .order_option_amounts { width:15%;display: inline-block;margin-top: 1px; text-align: right;}
.order_option_area li .order_option, .order_option_area li .order_option_amounts, .order_option_area li .order_option_cnt {float: left;}
.order_tbl td.order_amount em, .order_option_area li .order_option_amounts em{font-family: tahoma;}/*가격폰트*/

.order_detail {position: relative;}
.order_detail_tit{color: #000;display: block; font-size: 18px; letter-spacing: -1px; }
.order_detail .tbl {border-bottom: 1px solid #737373; border-top: 2px solid #737373; margin-top: 10px; width: 100%;}
.order_detail .tbl tr.last th, .order_detail .tbl tr.last td { border-bottom:1px solid #737373;}

/*20180104 사은품 선택영역 수정*/
.order_detail .tbl th { color: #8f8f97;background-color: #f2f2f2; border-bottom: 1px solid #dfe2e6; padding: 14px 0 13px 20px;  text-align: left; vertical-align: middle; line-height:1.6em}
.order_detail .tbl th em { color:#666;}
/*//20180104 사은품 선택영역 수정*/

.order_detail .tbl th .order_thtxt { color: #999;font-weight:normal;padding-top:5px;}
.order_detail .tbl td {position: relative;border-bottom: 1px solid #dfe2e6;  color: #333;  padding: 8px 0 8px 20px;}

.order_detail input.order_dimmed {background: #fff none repeat scroll 0 0; color: #333;}
.order_detail input.order_txt { -moz-border-bottom-colors: none; -moz-border-left-colors: none;  -moz-border-right-colors: none; -moz-border-top-colors: none;
    border-color: #c0c0c0; border-image: none;text-indent:8px; border-style: solid; border-width: 1px; height: 27px;line-height:27px;  vertical-align: middle;}

.order_select_box {position: relative; display: inline-block; }
.order_select {background:#fff none repeat scroll 0 0;text-indent:3px;position:relative;height:27px;line-height:27px;border:1px solid #c0c0c0;color:#333;font-size:12px;cursor:pointer;overflow:hidden;}
.order_select_arr {position:absolute;right:1px;top:1px;border-left:1px solid #c0c0c0;width:21px;height:25px;background: url("../../img/order/select_arrow.gif") no-repeat scroll right top;overflow:hidden;pointer-events:none;}
::-webkit-input-placeholder {color: #888}
:-moz-placeholder {color: #888;opacity: 1}
:-ms-input-placeholder {color: #888}

.order_detail .tbl td .order_del_sel {display: inline-block; position: relative;}
.order_chk, .order_rdo {height: 14px; margin: 1px 0 0 !important; padding: 0 !important; vertical-align: middle; width: 14px;}
.order_detail .order_selected { font-weight: bold;}
.order_detail label { margin-left: 2px;font-weight:normal}


.order_btn_cmn {position: relative;top:-2px;background:url("../../img/order/btn_postcode.gif") no-repeat scroll 0 0px; display: inline-block;width:68px; height: 29px; margin-left:8px;vertical-align: middle;}
.order_default_ch {position: relative;left:5px;z-index: 999;}
.order_default_ch label { display: inline-block;  letter-spacing: -1px; vertical-align: middle;}
.order_detail_address {margin-top: 6px;color:#adadad}
.order_detail input.order_txt2 { -moz-border-bottom-colors: none; -moz-border-left-colors: none;  -moz-border-right-colors: none; -moz-border-top-colors: none;
    background:#e7e7e7;border-color: #c0c0c0; border-image: none;text-indent:8px; border-style: solid; border-width: 1px; height: 27px;line-height:27px; margin-bottom: 4px;  vertical-align: middle;}
.order_detail textarea { -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-right-colors: none;  -moz-border-top-colors: none;
    border-color: #c0c0c0; border-image: none;  border-style: solid;  border-width: 1px;  color: #333;  display: inline-block;  height: 50px;  padding: 4px 0 0 7px;}

.order_select_off {background:#f1f1f1;color:#cccccc;}
.order_txt_p {display: inline-block; vertical-align:bottom;margin:0 0 2px 7px}
.order_btn_apply {position: relative;top:5px;background:url("../../img/order/btn_apply.gif") no-repeat scroll 0 0px; display: inline-block;width:68px; height: 22px; margin-left:8px;vertical-align: middle;}
.fctah {font-family: tahoma;} /*가격폰트*/

/*총 결제 금액*/
.order_calculate_area {position: relative;overflow:hidden;border-bottom: 1px solid #eee; border-top: 2px solid #333;width: 100%;} /* 20160331 장바구니 예상적립금 노출로 인한 라인컬러 수정 */
.order_calculate_area {clear: both; content: "";  display: block;}

.order_deal_price .order_h_area, .order_deal_dis .order_h_area, .order_deal_delivery .order_h_area, .order_deal_payment .order_h_area
	{background-color: #f6f6f6;border-bottom: 1px solid #dddddd;font-size:14px;text-align:center;padding: 13px 0 9px 0px;font-weight:800; letter-spacing: -1px;} 
.order_deal_price {float:left;overflow:hidden;width: 270px;border-right: 1px solid #dddddd; }
.order_deal_dis {float:left;overflow:hidden;width: 240px;border-right: 1px solid #dddddd; }
.order_deal_delivery {float:left;overflow:hidden;width: 220px;border-right: 1px solid #dddddd; }

.order_deal_payment span, .order_deal_payment .order_result_area em span{color: #fe4f4f;}

.order_result_area { padding: 25px 34px 25px 0; text-align: right;font-family: tahoma}
.order_result_area em {color: #333; display: inline-block;font-size: 24px; font-weight: bold; line-height: 23px; vertical-align: middle;}
.order_result_area .won { color: #555; display: inline-block; font-size: 14px; font-weight: bold; margin-left: 1px;  position: relative;   top: 3px;}
.order_result_area .view { color: #000; display: inline-block; font-size: 14px; font-weight: bold; margin-left: 4px;  position: relative; top: 3px; text-decoration:underline } /*20171011 결제정보 할인금액영역 추가로 수정*/
.order_deal_dis span, .order_result_area em span {color: #7e8bd5;}

.order_plus, .order_minus, .order_equal {display: inline-block;text-align:center; width:24px;height:24px;line-height:21px;overflow: hidden;color:#fff;font-size:20px;font-weight: bold;font-family: tahoma; }
.order_plus, .order_minus {background:#565656;}
.order_minus {position:absolute;left:258px;top:62px;font-size:30px;}
.order_plus {position:absolute;left:499px;top:62px;}
.order_equal {background:#fe4f4f;position:absolute;left:720px;top:62px;}
/*//총 결제 금액*/

.order_agree {border-top: 2px solid #737373;margin-top: 10px; padding:10px 10px 0 10px;}
.order_agree em {color:#000;font-size:14px;line-height:1.5;padding:0px 0 0 10px;vertical-align:top}
.order_chk_type { border: 1px solid #383838; cursor: pointer; display: inline-block; height: 18px;  position: relative;width: 18px;}
label { vertical-align: -1px;}
.order_chk_type input[type="checkbox"] { left: -9999px; position: absolute;}
label input[type="checkbox"], label input[type="radio"] {  margin-top: -1px;}
input[type="checkbox"], input[type="radio"] {  height: 13px;  vertical-align: text-top; width: 13px;}

.order_chk_type .order_clicked_deal {background:#fff url("../../img/order/checkbox.png") no-repeat scroll 1px 3px;
    display: inline-block; height: 18px; left: 0; overflow: hidden; position: absolute; top: 0; width: 18px; z-index: 2;}
.order_blind {font: 0px/0 a;height: 0;overflow: hidden; position: absolute;  visibility: hidden;  width: 0;}


/* 20161019 네이버페이 버튼노출로 인한 구매하기 버튼영역 수정*/
/*.order_btn_section {display:inline-block;text-align:center;margin:0px 0 80px 160px}*/
.order_btn_section {position:relative;display:inline-block;text-align:center;padding:50px 0;margin:0px 0 80px 220px}
/* //20161019 네이버페이 버튼노출로 인한 구매하기 버튼영역 수정*/


/*20170303 직원전용구매버튼 bg 추가*/
.order_btn_box .order_btn_ok, .order_btn_box .order_btn_cancel, .order_btn_box .order_staff_btn_ok {display: inline-block;color:#fff;font-weight: bold;font-size:18px;width:300px;height:58px;line-height:58px;}
.order_btn_ok {background:#fe4f4f;}
.order_staff_btn_ok {background:#53b3ea;}
/*20170303 직원전용구매버튼 bg 추가*/
/*.order_btn_box .order_btn_ok, .order_btn_box .order_btn_cancel {display: inline-block;color:#fff;font-weight: bold;font-size:18px;width:300px;height:58px;line-height:58px;}
.order_btn_ok {background:#fe4f4f;}
*/
.order_btn_cancel {background:#565656;}
.order_btn_box .order_btn_ok2, .order_btn_box .order_btn_cancel2 {display: inline-block;color:#fff;font-weight: bold;font-size:18px;width:160px;height:58px;line-height:58px;}
.order_btn_ok2 {background:#5c5c73;}
.order_btn_cancel2 {background:#8b8b8b;}

.order_info_bottom {position:relative;font-weight:normal;color:#ababab;}
.order_info_bottom ul{padding:10px 20px}
.order_info_bottom li{color:#c9c9c9;padding-bottom:5px;font-size:11px;list-style:disc;line-height:1.4;text-indent:-5px}
.order_info_bottom li span{display:block;}
.order_info_bottom li a {text-decoration:underline;}

.paging{text-align:center;margin-top:25px}
.paging a{display:inline-block;width:24px;height:24px;line-height:24px;text-align:center;border:1px solid #dcdcdc;color:#828282;font-size:12px;overflow:hidden;vertical-align:top}
.paging a.prev{margin-right:7px}
.paging a.next{margin-left:7px}
.paging strong{display:inline-block;width:24px;height:24px;line-height:24px;text-align:center;border:1px solid #ec434a;color:#fff;font-size:12px;overflow:hidden;vertical-align:top;background:#ec434a}

.order_finish_info {position:relative;top:15px;text-align:center;padding:20px 0;font-size:16px;color:#666;font-weight:700;line-height:1.7;border-top:1px solid #eaeaea}
/*주문결제 및 결제완료*/

/*배송지목록팝업 및 배송정보*/
.order_pop_wrap {position:relative;height:100%; left:0; position:fixed; top:0; width: 100%; z-index: 9999;}
.order_pop_bg {background:rgba(0,0,0,0.6);height: 100%;left: 0; position: absolute; top: 0; width: 100%;}
.order_pop_box {padding:10px;overflow:hidden;position:absolute;top:120px;left:45%;margin-left:-300px;background:#fff;box-shadow:0 2px 10px 0 rgba(0, 0, 0, 0.5);box-sizing: border-box;border-radius:4px;overflow:hidden;font-size:16px;width:700px; line-height:22px; }
.order_pop_box2 {padding:10px;overflow:hidden;position:absolute;top:120px;left:45%;margin-left:-115px;background:#fff;box-shadow:0 2px 10px 0 rgba(0, 0, 0, 0.5);box-sizing: border-box;border-radius:4px;overflow:hidden;font-size:16px;width:350px; line-height:22px; }

/*20181004 배송지목록 스크롤추가*/
.order_p_scroll {overflow-y:scroll;width:678px;max-height:380px;} 
.order_pop_box_n {padding:0px 10px;overflow:hidden;position:absolute;top:210px;left:45%;margin-left:-300px;background:#fff;box-sizing: border-box;overflow:hidden;font-size:16px;width:700px; line-height:22px; }
.order_pop_box_n2 {padding:10px;overflow:hidden;position:absolute;top:590px;left:45%;margin-left:-300px;background:#fff;box-sizing: border-box;overflow:hidden;font-size:16px;width:700px; line-height:22px; }
/*//20181004 배송지목록 스크롤추가*/

.order_pop_tit {color:#333;display: block; font-size: 18px; letter-spacing: -1px;padding:8px 0 15px 3px}
.order_pop_tit2 {color:#333;display: block; font-size: 18px; letter-spacing: -1px;padding:8px 0 0px 3px}
.order_pop_tbl {table-layout: fixed; width: 100%;}
.order_pop_tbl th {background:#f4f4f4; font-weight:normal; border-bottom: 1px solid #d0d0d0; border-top: 2px solid #737373; color: #333; height:35px;line-height:36px}
.order_pop_tbl tr.last td { border-bottom:1px solid #d0d0d0;}
.order_pop_tbl tr td {border-bottom: 1px solid #dfe2e6;padding:15px 0;text-align:center;color:#777}
.order_pop_tbl tr .order_pop_add {text-align:left;padding-left:8px;color:#444}
.order_pop_btn_s {display: inline-block;background:#7e7ea2;color:#fff;font-weight: bold;font-size:11px;padding:0 13px;height:24px;line-height:26px;}
.order_pop_btn_s:hover {background:#5b5b8d;}
.order_pop_d {display: inline-block;background:#f98166;color:#fff;font-size:11px;padding:0 2px;height:16px;line-height:16px;font-family: tahoma;margin-left:6px;}
.order_pop_btn_c {display: inline-block;background:#f5f5f5;border:1px solid #c0c0c0;color:#6b6b6b;font-weight: bold;font-size:12px;padding:0 20px;height:28px;line-height:29px;margin:20px 0 10px 0;}
/*//배송지목록팝업 및 배송정보*/

/** 주문배송조회 **/
/* 조회기간_20180710수정 */
.order_checkmn_wrap { background:#fff;position: absolute; top:11px; right:0px;text-align:center;font-size:17px;color:#666;font-weight:700;line-height:1.7} /*20180713 기간설정 UI 변경*/
.order_checkmn { float:right;position:relative;display:inline-block; border-top:0px solid #ccc;text-align:center}
.order_checkmn li {display:table-cell;vertical-align:top;width:60px;border-right:0px solid #d7d7d7}
.order_checkmn_a {display:block;margin:8px 2px;height:16px;padding:7px 0;background:#f4f4f4;border:1px solid #d2d2d2;font-size:14px;font-weight:normal;line-height:17px;color:#6b6a74;vertical-align:middle}
.order_checkmn_a img {position:relative;top:-1px;border:noen;vertical-align:middle;height:21px}
.order_checkmn_on .order_checkmn_a {padding:7px 0;background:#8e9299;border:1px solid #787a82;color:#fff;font-weight:bold}

.order_checkmn_aa {display:block;margin:8px 2px;height:16px; width:72px;padding:7px 0;background:#f4f4f4;border:1px solid #d2d2d2;font-size:14px;font-weight:normal;line-height:17px;color:#6b6a74;vertical-align:middle}
.order_checkmn_aa img {position:relative;top:-1px;border:noen;vertical-align:middle;height:21px}
.order_checkmn_on .order_checkmn_aa {padding:7px 0;background:#8e9299;border:1px solid #787a82;color:#fff;font-weight:bold}

.order_check_setup {display:inline-table;float:right; margin:8px -4px 0 0;vertical-align:top;width:252px;} 
.order_check_setup li {display: inline;overflow:hidden;}
.order_input { background: #fff none repeat scroll 0 0;-moz-border-bottom-colors: none; -moz-border-left-colors: none;  -moz-border-right-colors: none; -moz-border-top-colors: none;
    border-color: #c0c0c0; border-image: none;color: #333;text-indent:8px; border-style: solid; border-width: 1px; height: 30px;line-height:31px;  vertical-align: middle;}
.order_input_new { background: #fff none repeat scroll 0 0;-moz-border-bottom-colors: none; -moz-border-left-colors: none;  -moz-border-right-colors: none; -moz-border-top-colors: none;
    border-color: #c0c0c0; border-image: none;color: #333;text-indent:5px; border-style: solid; border-width: 1px; height: 30px;line-height:31px;  vertical-align: middle;}
.order_check_setup_btn { vertical-align:top;display: inline-block;background:#7e7ea2;color:#fff;font-weight: bold;font-size:11px;width:50px;height:32px;line-height:33px;}
.order_check_setup_btn:hover {background:#5b5b8d;}
/* //조회기간_20180710수정 */


.order_tbl th.order_bl {border-bottom: 1px solid #737373;}

/*20191021 마이페이지 주문관리 테이블 수정*/
.order_tbl2 {width:899px;box-sizing:border-box;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;margin-top:25px;border: 1px solid #d0d0d0; }
.order_tbl2 th {position:relative;font-size:14px; font-weight:normal;text-align:left;  color: #333;}
.order_tbl2 th div{position:relative;padding-left:10px;background:#f2f2f2;font-weight:normal;text-align:left;border-bottom: 1px solid #d0d0d0; height: 50px;line-height:52px;}
/*//20191021 마이페이지 주문관리 테이블 수정*/
.order_tbl2 th div a.order_num:hover {border-bottom:1px solid #fe4f4f;}
.order_tbl2 th.order_amount { border-right: 0 none;}
.order_tbl2 tr.last td { }/*20191021 마이페이지 주문관리 td 내용 삭제*/
.order_tbl2 tr td {border-bottom: 1px solid #dfe2e6;padding:20px 0;}
.order_tbl2 td.order_info, .order_tbl2 td.order_thmb { vertical-align: top;text-align: left;padding-left:10px}

.order_tbl2 td.order_thmb {height: 110px; overflow: hidden; position: relative; top: 0; width: 120px; border-left: 1px solid #dfe2e6;}
.order_tbl2 td.order_thmb img { height: 100%; width:120px}
.order_tbl2 td.order_info, .order_tbl2 td.order_ea, .order_tbl2 td.order_amount { border-right: 1px solid #eaeaec;}
.order_tbl2 td.order_amount { border-right: 1px solid #dfe2e6;color: #010101;  font-weight: bold;  text-align:center}
.order_tbl2 td.order_ea {color: #010101; font-weight: bold;  text-align:center;}

.order_r {position:absolute;right:13px;}
.order_btn_view {vertical-align:middle;display: inline-block;color:#7e8bd5;font-weight:bold;font-size:12px;height:15px;line-height:16px;}
.order_btn_view:hover {border-bottom:1px solid #7e8bd5}

.order_pay_info {display: inline-block; color: #5158a4;font-weight:bold;font-size:16px;margin-bottom:5px}
.order_btn_delcheck, .order_btn_write, .order_btn_buy {vertical-align:top;display: inline-block;color:#fff;font-size:12px;width:110px;height:29px;line-height:30px;}
.order_btn_delcheck {background:#f7f8f8;border:1px solid #7d8b96;color:#6b7e8c;margin-top:5px}
.order_btn_write {background:#ae84cd;}
.order_btn_buy {background:#53b3d9;}

.order_num_view {text-align:left;padding:20px 0 7px 0;font-size:15px}
.order_view_line {font-weight:normal;padding:0 10px;color:#c6c6c6;font-size:14px}

.order_r2 {position:absolute;right:8px;top:17px}
.order_btn_c {display: inline-block;border-radius:2px;background:#9699a3;color:#fff;font-weight: bold;font-size:13px;padding:0 25px;height:30px;line-height:31px;}
.order_btn_c:hover {background:#fff;border:1px solid #555;color:#555}
.order_btn_de_ch {display: inline-block;border-radius:0px;background:#f5f5f5;font-weight:normal;border:1px solid #c0c0c0;color:#6b6b6b;font-size:13px;padding:0 15px;height:28px;line-height:29px;margin:16px 0 10px 10px;}

.order_info_box {position:relative;border:4px solid #eaebec;border-radius:2px;}
.order_info_tit {background:#f7f7f7;border-bottom:1px dashed #dedede;overflow:hidden;font-size:16px;line-height:1.5;color:#7e7ea2;letter-spacing:-1px;padding:10px 15px}
.order_info_box ul {position:relative;font-weight:normal;padding:15px 30px 5px}
.order_info_box li{color:#666;padding-bottom:8px;font-size:11px;list-style:disc;line-height:1.6;text-indent:-3px; font-family: dotum,"돋움";}
/** //주문배송조회 **/

/*20170626 특정계정으로 주문결제시 메모기능 추가*/
.order_btn_memo {display: inline-block;font-size:12px;width:102px;height:28px; line-height:28px; background:#7e7eb9;border:0px solid #e8e8e8;color:#fff;margin:5px 0 0 10px; text-align: center}
/*//20170626 특정계정으로 주문결제시 메모기능 추가*/

/** 장바구니 **/
.cart_chk_wrap {position:relative;}
.cart_chk {position:absolute;left:10px;top:-6px;}
.cart_btn_select { font-family: tahoma;background: rgba(0, 0, 0, 0) none repeat scroll 0 0;border: 1px solid #383838;border-radius: 0px; color: #383838;
    display: inline-block; font-size: 11px; font-weight: bold; height: 21px; line-height: 21px; text-align: center; vertical-align: top; width: 100px;}
.cart_btn_select:hover { border: 1px solid #383838;background:#383838; color: #fff; font-size: 11px;}

.cart_deal_price .order_h_area, .cart_deal_delivery .order_h_area
	{background-color: #f6f6f6;border-bottom: 1px solid #dddddd;font-size:14px;text-align:center;padding: 13px 0 9px 0px;font-weight:800; letter-spacing: -1px;} 
.cart_deal_price {float:left;overflow:hidden;width: 350px;border-right: 1px solid #dddddd; }
.cart_deal_delivery {float:left;overflow:hidden;width: 320px;border-right: 1px solid #dddddd; }

.cart_plus, .cart_equal {display: inline-block;text-align:center; width:24px;height:24px;line-height:21px;overflow: hidden;color:#fff;font-size:20px;font-weight: bold;font-family: tahoma; }
.cart_plus, .cartr_minus {background:#565656;}
.cart_plus {position:absolute;left:338px;top:62px;}
.cart_equal {background:#fe4f4f;position:absolute;left:659px;top:62px;}
.cart_btn_del {display: inline-block;background:url("../../img/order/btn_del.png") no-repeat scroll 0 0;
    height: 14px; width: 14px; vertical-align:top;margin:0 0 0 8px}

.cart_choice {position:relative;}
.cart_choice .mius {display:inline;padding:3px 9px;background:#dadada;border-top:1px solid #dadada;border-bottom:1px solid #dadada;font-size:12px;color:#000;font-weight:bold;font-family: tahoma; }
.cart_choice .price {padding:5px 15px 3px;background:#fff;border-top:1px solid #dadada;border-bottom:1px solid #dadada;font-family: dotum,"돋움";  font-size: 12px; letter-spacing: -1px; font-weight:bold;}
.cart_choice .plus {display:inline;padding:3px 8px;background:#dadada;border-top:1px solid #dadada;border-bottom:1px solid #dadada;font-size:12x;color:#000;font-weight:bold;font-family: tahoma; }

/*20170428 옵션수량 영역수정
.cart_choice {position:relative;font-weight:bold; text-align:center;}
.cart_choice .mius {display:inline;padding:4px 9px;background:#dadada;border-top:1px solid #dadada;border-bottom:1px solid #dadada;font-size:12px;color:#000;font-weight:bold;font-family: tahoma; }
.cart_choice .price {padding:7px 5px 4px; margin:0px -4px 0;height: 30px; line-height: 20px;background:#fff;border-top:1px solid #dadada;border-bottom:1px solid #dadada;font-family: dotum,"돋움";  font-size: 11px; letter-spacing: -1px; font-weight:bold;}
.cart_choice .plus {display:inline;padding:4px 9px;background:#dadada;border-top:1px solid #dadada;border-bottom:1px solid #dadada;font-size:12x;color:#000;font-weight:bold;font-family: tahoma; }
/* 20170428 옵션수량 영역수정*/

/* 20160331 장바구니 옵션상품별 금액영역, 삭제아이콘 별도 진열 */
.order_option_amounts2 {display:inline-block;margin:2px 0 0 5px;text-align:right;font-family:tahoma;width:95px}
.order_option2 {float:left;line-height:16px;margin-top:1px;max-height:32px; overflow: hidden; padding-right: 5px;width:600px}
/* //20160331 장바구니 옵션상품별 금액영역, 삭제아이콘 별도 진열 */

.cart_ds, .cart_se {position:relative;margin:-1px 0 20px 0;}
.cart_se p {width:100%;display: inline-block;background:#e7e7e7;height:50px;line-height:51px;border-radius:3px;}
.cart_ds p {width:100%;display: inline-block;background:#d7daec;height:50px;line-height:51px;border-radius:3px;}
.cart_ico_ds {color:#d7daec;position:absolute;top:-12px;left:17px;font-size:16px;}
.cart_ico_se {color:#e7e7e7;position:absolute;top:-12px;left:17px;font-size:16px;}

.cart_price {position:absolute;right:13px;font-size:14px;font-weight:700;color:#333}
.cart_txt {padding:0 15px 0 15px;font-size:16px;vertical-align:middle;font-weight:700;}
.cart_fcT1 {color: #4f5eb8;}
.cart_plus2 {vertical-align:top;margin:17px 10px 0 10px;display: inline-block;text-align:center; background:#2b2a2e;border-radius:30px;width:17px;height:17px;line-height:15px;overflow: hidden;color:#fff;font-size:11px;font-weight: bold;font-family: tahoma;}
.order_pop_btn_s2 {display: inline-block;background:#898989;color:#fff;font-weight: bold;font-size:11px;padding:0 13px;height:24px;line-height:26px;}
.order_pop_btn_s2:hover {background:#626262;}
/** //장바구니 **/

/** 장바구니 **/
.delivery_box {position:relative;width:600px;padding:20px 0 25px;margin:-40px auto 30px;background:#fff;border-bottom:1px dashed #d9d9d9;text-align:center;font-weight:600;font-size:17px;}

/* 20160325 사은품 */
.tbl_gift td { vertical-align:top}

/*20180104 사은품영역 변경*/
.order_gift_box {position:relative; display:inline-block;width:100%;padding:10px 0;vertical-align:top}
.order_gift_box li {float:left; width:33% }
/*//20180104 사은품영역 변경*/

.order_gift_ra {position:absolute;top:10px}
.order_g_tit_box {display:inline-block;line-height:1.3em}
.order_g_tit {margin-left:18px;display:inline-block}
.gift_thmb {display:inline;vertical-align:top;text-align:left;margin-left:20px}
.gift_thmb img {width:80px;height:80px;margin-top:10px;border:none}

.order_gift_fi .tbl {border-bottom:1px solid #737373;border-top:0px solid #dfe2e6;width: 100%;}
.order_gift_fi .tbl tr.last th, .order_gift_fi .tbl tr.last td {border-bottom:1px solid #737373;}
.order_gift_fi .tbl th {color:#666;background:#fbfbfb;border-bottom:1px solid #dfe2e6;padding:10px 0 10px 20px;text-align:left;vertical-align:middle;}
.order_gift_fi .tbl td {border-bottom:1px solid #dfe2e6;color:#333;padding:8px 0 8px 20px;vertical-align:middle;}
.gift_thmb_fi {text-align:left;vertical-align:middle;}
.gift_thmb_fi img {width:60px;height:60px;margin:8px 16px 8px 0;border:none}
/* 20160325 사은품 */

/* 20160329 예상적립금 장바구니 노출 */
.c_savepay_box {clear: both;position:relative;overflow:hidden;display: block;border-bottom:1px solid #333;border-top:0px solid #333;width:100%;content: "";}
.c_save_area_box {float:right;width:429px}
.c_save_blank_box {float:left;width:671px}
.c_save_area em {color:#f75f5f}
.c_save_area{background:#fdfdfd;border-left:1px solid #ddd;border-top:1px solid #e9e9e9;font-size:14px;padding:12px 33px 10px;font-weight:800;letter-spacing:-1px;text-align:right;}
.c_save_blank{background:#fdfdfd;border-right:0px solid #ddd;border-top:1px solid #e9e9e9;font-size:14px;height:38px;font-weight:800;letter-spacing:-1px;text-align:right;}
.c_save_area span {color:#66c9a0;font-size:15px;font-family:tahoma;letter-spacing:0px;}
.c_save_area em {color:#000;font-size:14px}
.c_savepay {float:left;overflow:hidden;width:100%}
/* //20160329 예상적립금 장바구니 노출 */

/* 20161229 결제완료 버튼영역 추가 */
.order_btn_section2 {position:relative;display:block;text-align:center;padding:50px 0;margin:0 auto}

/*20171117 배송요청사항 추가*/
.order{width:430px; line-height:17px;position:absolute; left:475px;top:43px;}
.order_notice{ color:black; text-align:center;}
/*//20171117 배송요청사항 추가*/


/*20180719 정기배송 문구 수정*/
.change_btn{padding:5px;margin-left:5px; border:1px solid #2e3b89; border-radius:3px; background-color:#fbfbfb;}
.order_pay_info2{margin-top:35px; color:#2e3b89; font-weight:500;} 

.order_checkmn_wrap2 { background:#fff;position: absolute; top:-20px; right:0px;text-align:center;font-size:17px;color:#666;font-weight:700;line-height:1.7}
/*//20180719 정기배송 문구 수정*/

/*20190305 식단관리 바로가기 버튼 수정*/
.btn_chall {display:inline-block;margin:7px 0 0 20px;text-align:center; vertical-align:top}
.btn_chall a {display:block;background:#0bd4cd;padding:0px 18px 0px 20px; font-size:1em; color:#fff; border:1px solid #0bd4cd;height:34px;line-height:34px; font-weight:600; letter-spacing:-0.05em}
.btn_chall img {vertical-align:top; margin:5px 0px 0px 10px;}
.btn_chall a:hover {border:1px solid #05aca6;color:#fff; }
/*//20190305 식단관리 바로가기 버튼 수정*/

/* 20161229 결제완료 버튼영역 추가 */
.order_btn_section2 {position:relative;display:block;text-align:center;padding:50px 0;margin:0 auto}

@charset "utf-8";
	
/* 공통요소 */
img {vertical-align:top;border:0;}
input {border:0;}
legend {visibility:hidden; overflow:hidden;position:absolute;left:-1000em;width:0;height:0;font-size:0;line-height:0;}
h2 {position:absolute;	overflow:hidden;	width:0px;	height:0px;	font-size:0;line-height:0;}
select {background-color:#ffffff;color:#6e6e7d; border:1px solid #d2d2d2; font-size:1em; height:30px; vertical-align:middle;}


/* reset */
html,body{}
html{overflow-y:scroll;}
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,form,fieldset,p,button,input,td,th{margin:0;padding:0}
body,h1,h2,h3,h4,h5,h6,input,button{font-family: 'Nanum Gothic','맑은 고딕','돋움',sans-serif;font-size:13px;line-height:1;*line-height:1.1;color:#383838}
img,fieldset,iframe{border:0 none}
li{list-style:none}
img,input{vertical-align:top}
em,address{font-style:normal}
button{margin:0;padding:0}
a{text-decoration:none;color:inherit;*color:#383838}
caption,legend, hr{width:0;height:0;font-size:0;line-height:0;overflow:hidden;visibility:hidden;border:0 none;position:absolute;left:-1000em}
caption,legend{position:static}
article, aside, canvas, details, figcaption, figure, footer, header, hgroup, nav, menu, nav, section{display: block}

body, input, textarea, select, button, table {  font-family: "돋움",dotum,sans-serif; font-size: 12px;} 
table, th, td { border: medium none; border-collapse: collapse; border-spacing: 0;table-layout: fixed;}

/* common */
.cleafix:after{content:".";display:block;height:0px;clear:both;visibility:hidden}
.cleafix{display:block}
* html .clfix{height:1%}
.clfix{*zoom:1}
.hidden{width:0;height:0;font-size:0;line-height:0;overflow:hidden;visibility:hidden;border:0 none;position:absolute;left:-1000em}
.blind{font-size:0;line-height:0px}
.fl{float:left !important}
.fr{float:right !important}
.cl{clear:both !important}
.rel{position:relative !important}
.vt{vertical-align:top !important}
.vm{vertical-align:middle !important}
.vb{vertical-align:bottom !important}
.ac{text-align:center !important}
.mt0{margin-top:0 !important}
.space1{margin-top:20px !important}
.space2{margin-top:15px !important}

.clear{ clear:both;height:0;font-size:0;line-height:0;}
.center {text-align:center;}
.left {text-align:left;}
.right{text-align:right;}
.fleft{float:left}
.fright{float:right}
.middle {vertical-align:middle;}
.b {font-weight:bold;} /* 굵게 */
.s {font-size:11px;}  /* 작게 */
.ds {font-size:11px; font-family:'dotum';} /* 돋움작게 */
.ls-1 {letter-spacing:-1px;} /* 자간 */
.ls0 {letter-spacing:0px;} /* 자간 */
.nowrap {text-overflow:ellipsis;white-space:nowrap;}
.absR{position:absolute;top:0;right:0;}
.lineH {line-height:160%;}

.li19 {width:19%;}
.li19-8{width:19.8%;}
.li19-7{width:19.7%;}
.li20 {width:20%;}
.li21 {width:21%;}
.li24 {width:24%;}
.li25 {width:25%;}
.li29 {width:29%;}
.li30 {width:30%;}
.li32 {width:32%;}
.li33 {width:33%;}
.li34 {width:33.9%;}
.li35 {width:35%;}
.li38 {width:38%;}
.li39 {width:39%;}
.li40 {width:40%;}
.li48 {width:48.5%;}
.li49 {width:49.5%;}
.li50 {width:50%;}
/* //공통요소 */

/* 폰트칼라 */
.fcfff {color:#fff;} /* 흰색 */
.fc666 {color:#666} /* 회색 */
.fc777 {color:#777} /* 흐린회색 */
.fc999 {color:#999}
.fc333 {color:#333} /* 진한회색 */
.fc000 {color:#000}
.fcgray {color:#e8e8e8}
/* //폰트칼라 */

/* 폰트사이즈 */
.fs11 {font-size:11px;}
.fs12 {font-size:12px;}
.fs13 {font-size:13px;} 
.fs14 {font-size:14px;} 
.fs15 {font-size:15px;} 
.fs16 {font-size:16px;} 
.fs18 {font-size:18px;} 
.fs20 {font-size:20px;} 
.fs16e {font-size:1.6em;}
.fs14e {font-size:1.4em;}
.fs13e {font-size:1.3em;}
.fs12e {font-size:1.2em;}
.fs11e {font-size:1.1em;}
.fs09e {font-size:0.9em;}
.fs085e {font-size:0.85em;}
.fs1e {font-size:0.8em;}
.fs07e {font-size:0.7em;}
/* //폰트사이즈 */

/* 패딩 */
.p3 {padding:3px;}
.p4 {padding:4px;}
.p5 {padding:5px;}
.p6 {padding:6px;}
.p7 {padding:7px;}
.p8 {padding:8px;}
.p9 {padding:9px;}
.p10 {padding:10px;}
.p12 {padding:12px;}
.p15 {padding:15px;}
.p20 {padding:20px;}
.p25 {padding:25px;}
.p30 {padding:30px;}
.p35 {padding:35px;}
.p40 {padding:40px;}
.p45 {padding:45px;}
.p50 {padding:50px;}

.plr1 {padding-left:1px; padding-right:1px;}
.plr2 {padding-left:2px; padding-right:2px;}
.plr3 {padding-left:3px; padding-right:3px;}
.plr4 {padding-left:4px; padding-right:4px;}
.plr5 {padding-left:5px; padding-right:5px;}
.plr6 {padding-left:6px; padding-right:6px;}
.plr7 {padding-left:7px; padding-right:7px;}
.plr8 {padding-left:8px; padding-right:8px;}
.plr9 {padding-left:9px; padding-right:9px;}
.plr10 {padding-left:10px; padding-right:10px;}
.plr11 {padding-left:11px; padding-right:11px;}
.plr12 {padding-left:12px; padding-right:12px;}
.plr13 {padding-left:13px; padding-right:13px;}
.plr14 {padding-left:14px; padding-right:14px;}
.plr15 {padding-left:15px; padding-right:15px;}
.plr16 {padding-left:16px; padding-right:16px;}
.plr20 {padding-left:20px; padding-right:20px;}
.plr23 {padding-left:23px; padding-right:23px;}
.plr25 {padding-left:25px; padding-right:25px;}
.plr30 {padding-left:30px; padding-right:30px;}
.plr35 {padding-left:35px; padding-right:35px;}
.plr40 {padding-left:40px; padding-right:40px;}
.plr45 {padding-left:45px; padding-right:45px;}
.plr50 {padding-left:50px; padding-right:50px;}
.plr53 {padding-left:53px; padding-right:53px;}
.plr60 {padding-left:60px; padding-right:60px;}

.pt1 {padding-top:1px;}
.pt2 {padding-top:2px;}
.pt3 {padding-top:3px;} 
.pt4 {padding-top:4px;}
.pt5 {padding-top:5px;}
.pt6 {padding-top:6px;}
.pt7 {padding-top:7px;}
.pt8 {padding-top:8px;}
.pt9 {padding-top:9px;}
.pt10 {padding-top:10px;}
.pt11 {padding-top:11px;}
.pt12 {padding-top:12px;}
.pt13 {padding-top:13px;}
.pt14 {padding-top:14px;}
.pt15 {padding-top:15px;}
.pt16 {padding-top:16px;}
.pt17 {padding-top:17px;}
.pt18 {padding-top:18px;}
.pt19 {padding-top:19px;}
.pt20 {padding-top:20px;}
.pt21 {padding-top:21px;}
.pt22 {padding-top:22px;}
.pt23 {padding-top:23px;}
.pt24 {padding-top:24px;}
.pt25 {padding-top:25px;}
.pt28 {padding-top:28px;}
.pt30 {padding-top:30px;}
.pt33 {padding-top:33px;}
.pt35 {padding-top:35px;}
.pt40 {padding-top:40px;}
.pt45 {padding-top:45px;}
.pt50 {padding-top:50px;}
.pt54 {padding-top:54px;}
.pt55 {padding-top:55px;}
.pt60 {padding-top:60px;}
.pt70 {padding-top:70px;}
.pt80 {padding-top:80px;}
.pt90 {padding-top:90px;}
.pt100 {padding-top:100px;}



.pr1 {padding-right:1px;}
.pr2 {padding-right:2px;}
.pr3 {padding-right:3px;}
.pr4 {padding-right:4px;}
.pr5 {padding-right:5px;}
.pr6 {padding-right:6px;}
.pr7 {padding-right:7px;}
.pr8 {padding-right:8px;}
.pr9 {padding-right:9px;}
.pr10 {padding-right:10px;}
.pr11 {padding-right:11px;}
.pr12 {padding-right:12px;}
.pr13 {padding-right:13px;}
.pr14 {padding-right:14px;}
.pr15 {padding-right:15px;}
.pr20 {padding-right:20px;}
.pr21 {padding-right:21px;}
.pr23 {padding-right:23px;}
.pr25 {padding-right:25px;}
.pr27 {padding-right:27px;}
.pr30 {padding-right:30px;}
.pr35 {padding-right:35px;}
.pr40 {padding-right:40px;}
.pr41 {padding-right:41px;}
.pr45 {padding-right:45px;}
.pr50 {padding-right:50px;}
.pr65 {padding-right:65px;}
.pr85 {padding-right:85px;}
.pr90 {padding-right:90px;}
.pr100 {padding-right:100px;}

.pb1 {padding-bottom:1px;}
.pb2 {padding-bottom:2px;}
.pb3 {padding-bottom:3px;}
.pb4 {padding-bottom:4px;}
.pb5 {padding-bottom:5px;}
.pb6 {padding-bottom:6px;}
.pb7 {padding-bottom:7px;}
.pb8 {padding-bottom:8px;}
.pb9 {padding-bottom:9px;}
.pb10 {padding-bottom:10px;}
.pb11 {padding-bottom:11px;}
.pb15 {padding-bottom:15px;}
.pb19 {padding-bottom:19px;}
.pb20 {padding-bottom:20px;}
.pb25 {padding-bottom:25px;}
.pb30 {padding-bottom:30px;}
.pb35 {padding-bottom:35px;}
.pb40 {padding-bottom:40px;}
.pb45 {padding-bottom:45px;}
.pb50 {padding-bottom:50px;}
.pb55 {padding-bottom:55px;}
.pb60 {padding-bottom:60px;}
.pb65 {padding-bottom:65px;}
.pb70 {padding-bottom:70px;}
.pb80 {padding-bottom:80px;}
.pb90 {padding-bottom:90px;}
.pb100 {padding-bottom:100px;}


.pl1 {padding-left:1px;}
.pl2 {padding-left:2px;}
.pl3 {padding-left:3px;}
.pl4 {padding-left:4px;}
.pl5 {padding-left:5px;}
.pl6 {padding-left:6px;}
.pl7 {padding-left:7px;}
.pl8 {padding-left:8px;}
.pl9 {padding-left:9px;}
.pl10 {padding-left:10px;}
.pl11 {padding-left:11px;}
.pl12 {padding-left:12px;}
.pl13 {padding-left:13px;}
.pl14 {padding-left:14px;}
.pl15 {padding-left:15px;}
.pl16 {padding-left:16px;}
.pl17 {padding-left:17px;}
.pl20 {padding-left:20px;}
.pl21 {padding-left:21px;}
.pl22 {padding-left:22px;}
.pl23 {padding-left:23px;}
.pl25 {padding-left:25px;}
.pl27 {padding-left:27px;}
.pl28 {padding-left:28px;}
.pl30 {padding-left:30px;}
.pl32 {padding-left:32px;}
.pl37 {padding-left:37px;}
.pl35 {padding-left:35px;}
.pl40 {padding-left:40px;}
.pl42 {padding-left:42px;}
.pl45 {padding-left:45px;}
.pl50 {padding-left:50px;}
.pl60 {padding-left:60px;}
.pl70 {padding-left:70px;}
.pl80 {padding-left:80px;}
.pl90 {padding-left:90px;}
.pl100 {padding-left:100px;}

.ptb5 {padding-top:5px;padding-bottom:5px;}
.ptb10 {padding-top:10px;padding-bottom:10px;}
.ptb12 {padding-top:12px;padding-bottom:12px;}
.ptb15 {padding-top:15px;padding-bottom:15px;}
.ptb20 {padding-top:20px;padding-bottom:20px;}
/* //패딩 */

/* 마진 */
.mt1 {margin-top:1px;}
.mt2 {margin-top:2px;}
.mt3 {margin-top:3px;}
.mt4 {margin-top:4px;}
.mt5 {margin-top:5px;}
.mt6 {margin-top:6px;}
.mt7 {margin-top:7px;}
.mt8 {margin-top:8px;}
.mt9 {margin-top:9px;}
.mt10 {margin-top:10px;}
.mt12 {margin-top:12px;} 
.mt13 {margin-top:13px;}
.mt14 {margin-top:14px;} /* 추가 */
.mt15 {margin-top:15px;}
.mt16 {margin-top:16px;}
.mt17 {margin-top:17px;}
.mt18 {margin-top:18px;}
.mt20 {margin-top:20px;}
.mt22 {margin-top:22px;}
.mt23 {margin-top:23px;}
.mt25 {margin-top:25px;}
.mt30 {margin-top:30px;}
.mt35 {margin-top:35px;}
.mt40 {margin-top:40px;}
.mt45 {margin-top:45px;}
.mt50 {margin-top:50px;}
.mt60 {margin-top:60px;}
.mt70 {margin-top:70px;}
.mt80 {margin-top:80px;}
.mt100 {margin-top:100px;}
.mt110 {margin-top:110px;} /* 추가 */

.mt-1 {margin-top:-1px;}
.mt-2 {margin-top:-2px;}
.mt-3 {margin-top:-3px;}
.mt-4 {margin-top:-4px;}
.mt-5 {margin-top:-5px;}
.mt-6 {margin-top:-6px;}
.mt-7 {margin-top:-7px;}
.mt-8 {margin-top:-8px;}
.mt-9 {margin-top:-9px;}
.mt-10 {margin-top:-10px;}
.mt-11 {margin-top:-11px;}
.mt-12 {margin-top:-12px;}
.mt-13 {margin-top:-13px;}
.mt-14 {margin-top:-14px;}
.mt-15 {margin-top:-15px;}
.mt-20 {margin-top:-20px;}
.mt-30 {margin-top:-30px;}
.mt-40 {margin-top:-40px;}
.mt-50 {margin-top:-50px;}

/* 20170529 추가 */
.mt-60 {margin-top:-60px;}
.mt-70 {margin-top:-70px;}
.mt-80 {margin-top:-80px;}
.mt-90 {margin-top:-90px;}
.mt-100 {margin-top:-100px;}
/* //20170529 추가 */


.mr1{margin-right:1px}
.mr2{margin-right:2px}
.mr3{margin-right:3px}
.mr4{margin-right:4px}
.mr5{margin-right:5px}
.mr6{margin-right:6px}
.mr7{margin-right:7px}
.mr8{margin-right:8px}
.mr9{margin-right:9px}
.mr10{margin-right:10px}
.mr11{margin-right:11px}
.mr12{margin-right:12px}
.mr13{margin-right:13px}
.mr14{margin-right:14px}
.mr15{margin-right:15px}
.mr20 {margin-right:20px;}
.mr25 {margin-right:25px;}
.mr30 {margin-right:30px;}

/* 20160330 마진값 추가 */
.mr31 {margin-right:31px;}
.mr32 {margin-right:32px;}
.mr33 {margin-right:33px;}
.mr34 {margin-right:34px;}
/* //20160330 마진값 추가 */

.mr35 {margin-right:35px;}
.mr40 {margin-right:40px;}
.mr45 {margin-right:45px;}
.mr50 {margin-right:50px;}
.mr60 {margin-right:60px;}
.mr70 {margin-right:70px;}
.mr80 {margin-right:80px;}
.mr90 {margin-right:90px;}
.mr100 {margin-right:100px;}

.mb2 {margin-bottom:2px;} 
.mb3 {margin-bottom:3px;}
.mb5 {margin-bottom:5px;}
.mb7 {margin-bottom:7px;}
.mb8 {margin-bottom:8px;}
.mb10 {margin-bottom:10px;}
.mb15 {margin-bottom:15px;}
.mb20 {margin-bottom:20px;}
.mb25 {margin-bottom:25px;}
.mb30 {margin-bottom:30px;}
.mb35 {margin-bottom:35px;}
.mb40 {margin-bottom:40px;}
.mb45 {margin-bottom:45px;}
.mb50 {margin-bottom:50px;}
.mb55 {margin-bottom:55px;}
.mb60 {margin-bottom:60px;}
.mb65 {margin-bottom:65px;}
.mb70 {margin-bottom:70px;}
.mb80 {margin-bottom:80px;}
.mb90 {margin-bottom:90px;}
.mb100 {margin-bottom:100px;}


.mb-1 {margin-bottom:-1px;}
.mb-2 {margin-bottom:-2px;} 
.mb-3 {margin-bottom:-3px;}
.mb-4 {margin-bottom:-4px;}
.mb-5 {margin-bottom:-5px;}
.mb-6 {margin-bottom:-6px;}
.mb-7 {margin-bottom:-7px;}
.mb-8 {margin-bottom:-8px;}
.mb-9 {margin-bottom:-9px;}
.mb-10 {margin-bottom:-10px;}
.mb-11 {margin-bottom:-11px;}
.mb-12 {margin-bottom:-12px;}
.mb-13 {margin-bottom:-13px;}
.mb-14 {margin-bottom:-14px;}
.mb-15 {margin-bottom:-15px;}


.ml1 {margin-left:1px;}
.ml2 {margin-left:2px;}
.ml3 {margin-left:3px;}
.ml4 {margin-left:4px;}
.ml5 {margin-left:5px;}
.ml6 {margin-left:6px;}
.ml7 {margin-left:7px;}
.ml8 {margin-left:8px;}
.ml9 {margin-left:9px;}
.ml10 {margin-left:10px;}
.ml11 {margin-left:11px;}
.ml12 {margin-left:12px;}
.ml13 {margin-left:13px;}
.ml14 {margin-left:14px;}
.ml15 {margin-left:15px;}
.ml20 {margin-left:20px;}
.ml25 {margin-left:25px;}
.ml30 {margin-left:30px;}
.ml33 {margin-left:33px}
.ml35 {margin-left:35px;}
.ml40 {margin-left:40px;}
.ml45 {margin-left:45px;}
.ml50 {margin-left:50px;}
.ml60 {margin-left:60px;}
.ml65 {margin-left:65px;}
.ml100 {margin-left:100px;}

.ml-1 {margin-left:-1px;}
.ml-2 {margin-left:-2px;}
.ml-3 {margin-left:-3px;}
.ml-4 {margin-left:-4px;}
.ml-5 {margin-left:-5px;}
.ml-6 {margin-left:-6px;}
.ml-7 {margin-left:-7px;}
.ml-8 {margin-left:-8px;}
.ml-9 {margin-left:-9px;}
.ml-10 {margin-left:-10px;}
.ml-11 {margin-left:-11px;}
.ml-12 {margin-left:-12px;}
.ml-13 {margin-left:-13px;}
.ml-14 {margin-left:-14px;}
.ml-15 {margin-left:-15px;}
.ml-20 {margin-left:-20px;}
.ml-25 {margin-left:-25px;}
.ml-30 {margin-left:-30px;}
/* //마진 */















</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
	
	<form action="sellgoodsInsert.do" method="post" enctype="Multipart/form-data">
	
	<div id="container" style="overflow: auto; height: 800px;">
		<!-- container -->
		<div id="contents_wrap" style="padding-top: 100px;">
			<div id="containerx">
				<div class="contents">
					<div class="order_top_wrap">
						<div class="order_top">
							<div class="order_title1">장바구니</div>
						</div>
					</div>

					<!--th 포함 테이블영역-->
					<table class="order_tbl mt10" cellspacing="0" border="1"
						summary="주문 리스트">
						<caption>주문 리스트</caption>
						<colgroup>
							<col width="50">
							<col width="120">
							<col width="">
							<col width="55">
							<col width="180">
						</colgroup>

						<thead>
							<tr>
								<th class="order_amount" scope="col">
								<input type="checkbox" id="chkall" data-flg="Y"> <!--체크박스선택시--> 
								</th>
								<th class="order_amount" colspan="2">
									<div class="cart_chk_wrap">
										<span class="cart_chk"> <a class="cart_btn_select" onclick="$.cartDel();">선택 상품 삭제</a></span> 상품 정보
									</div>
								</th>
								<th class="order_amount" scope="col">수량</th>
								<th class="order_amount" scope="col">상품 금액</th>
							</tr>
						</thead>
						

						
<!-- 						<script>
							$("#chkall").click(function(){
								var chk = $("#chkall").prop("checked");
								if(chk) {
									$(".chBox").prop("checked", true);
								} else {
									$(".chBox").prop("checked", false);
								}
							});
							</script> -->



						<tbody>
						</tbody>
					</table>
					
					
				 	<script>
						$(function(){
							// 전체선택 체크박스 클릭
							$("#chkall").click(function(){
								//  전체 선택 체크박스가 체크된 경우
								if($("#chkall").prop("checked")){
									// 해당 화면의 전체 체크박스를 체크
									$("input[type=checkbox]").prop("checked");
								//  전체 선택 체크박스가 체크 해제된 경우	
								}else{
									// 해당 화면의 전체 체크박스 체크 해제
									$("input[type=checkbox]").prop("checked");
								}
							});
						});
					</script> 
					<!--------------------------------------------------------------------------->
					<!-- 다신배송 상품 목록 -->
					<!---- block 다신 묶음 상품 ------------------------------------>
					<table class="order_tbl mt10" cellspacing="0" border="1" summary="주문 리스트" id="DSShopBundleDiv" data-basedeliveryfee="3000" data-freedeliveryfee="30000">
						<caption>주문 리스트</caption>
						<colgroup>
							<col width="50">
							<col width="120">
							<col width="">
							<col width="55">
							<col width="180">
						</colgroup>

						<c:forEach items="${cartList}" var="cartList">
						<!-- 개별 상품 시작 -->
						<tbody>
							<tr id="cartgoods7891782" data-cartidx="7891782" data-goodsidx="11379" data-activeyn="Y" data-delivtype="P" data-delivfee="3000" data-delivcon="30000" data-setyn="N">
								<td valign="top" align="center">
								<input type="checkbox" checked="checked" class="chBox><!--체크박스선택시-->
								<script>
								$(".chBox").click(function(){
									$("#allCheck").prop("checked", false);
								});
								</script>
								</td>
								<td class="order_thmb">
									<a href="${cartList.filePath}" onclick="hitRecentLog('11379');"> 
									<img alt="temp thmb" src="${cartList.filePath}"></a>
								</td>
								<td class="order_info2" colspan="3"><a class="order_deal" href="/goods/view.asp?g=11379">상품명1</a>
									<ul class="order_option_area">
										<!-- 상품 옵션 시작 -->
										<li id="cartop6681" data-optidx="6681" data-activeyn="Y" data-mlgyn="N">
										<span class="order_option2"><span class="order_option_cnt inpspan" data-count="1"> 
										<span class="order_option_input"> <span class="cart_choice">
										<a class="mius" id="minbtn" onclick="javascript:this.form.amount.value--">-</a>
										<span class="price" id="curcnt">
										<span class="price_input2">
										<!-- <input type="number" value="1" class="inputno2" style="outline: none;" oninput="this.value=this.value.slice(0,this.maxLength)"
																maxlength="4" data-idx="6681" data-uc="50"> -->
										<input class="amount" name="amount" type="number" value="1" min="1" max="${cartList.count}" required>
										</span>
										</span> 
										<a class="plus" id="plsbtn" onclick="javascript:this.form.amount.value--">+</a></span>
										</span>
										</span> 
										<span class="order_option_amounts2" data-price="TKDVNA">
											<em class="b">${cartList.goodsPrice}</em>원
										</span><span><a href="javascript:$.optDel(6681);"
												class="cart_btn_del"></a> </span></li>
										
										<script>
											$("#plsbtn").click(function(){
												var num = $(".amount").val();
												var plusNum = num++;
											});
										</script>
										<!-- 상품 옵션 종료 -->
									</ul> <!-- //옵션명 노출--></td>
							</tr>
							</c:forEach>
							<!-- 개별 상품 종료 -->

							<!-- 다음 상품들 추가추가 -->

							<tr>
								<td colspan="5">
									<div class="cart_ds" style="margin: -21px 0 -20px 0">
										<div class="cart_ico_ds">▲</div>
										<p>
											<em class="cart_txt cart_fcT1"><i class="fa fa-truck" style="font-size: 17px;"></i> 미진배송 (일반식품)</em><a
												href="/goods/goods_seller.asp?selleridx=205013"
												class="order_pop_btn_s">배송비 절약하기</a> <span
												class="cart_price">주문금액 <em class="fctah order_fcT1"><span
													id="grouporderprice" data-price="63800">몰라요</span></em>원<em
												class="cart_plus2">+</em>배송비 <em class="fctah"><span
													id="groupdeliveryfee" data-price="0">없어요</span></em>원
											</span>
										</p>
									</div>
								</td>
							</tr>
						</tbody>
						
					</table>
				
				<br><br>

					<!--결제금액박스-->
					<div class="order_calculate_area mt80">
						<div class="cart_deal_price">
							<div class="order_h_area">
								<strong>주문금액</strong>
							</div>
							<div class="order_result_area" id="orderprice"
								data-orderprice="63800">
								<em><span>상품 금액 합계</span></em> <span class="won">원</span>
							</div>
						</div>

						<span class="cart_plus">+</span>

						<div class="cart_deal_delivery">
							<div class="order_h_area">
								<strong>총 배송비</strong>
							</div>
							<div class="order_result_area" id="totaldeliveryfee"
								data-totaldeliveryfee="0">
								<em><span>상품 금액 합계가 50000원 이상이면 무료배송</span></em> <span class="won">원</span>
							</div>
						</div>

						<span class="cart_equal">=</span>

						<div class="order_deal_payment">
							<div class="order_h_area">
								<strong><span>결제 예정 금액</span></strong>
							</div>
							<div class="order_result_area" id="totalprice" data-totalprice="63800">
								<em><span>아직 몰라요</span></em> <span class="won"><span>원</span></span>
							</div>
						</div>
					</div>

					<!--//결제금액박스-->


					<!--20170303 구매버튼 추가로 "order_staff_btn" 클래스명 수정-->

					<div class="order_btn_section">
						<span class="order_btn_box"><a href="javascript:$.OrderIn();" class="order_btn_ok">구매하기</a>
						<a href="/main.asp" class="order_btn_cancel ml20">계속 쇼핑하기</a></span>

					</div>
				</div>
			</div>
		</div>
	</div>
	</form>
</body>
<footer>
	<jsp:include page="../common/footer.jsp" />
</footer>
</html>
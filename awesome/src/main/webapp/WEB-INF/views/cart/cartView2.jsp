<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
<jsp:include page="../common/menubar.jsp"/>	
<div id="container" style="overflow: auto; height: 800px;" ><!-- container -->

<div id="contents_wrap" style="padding-top: 100px;">
		<div id="containerx">
		<div class="contents">
		
		<div class="order_top_wrap">
		<h2>상단타이틀</h2>
			<div class="order_top">
				<div class="order_title1">장바구니</div>
			</div>
		</div>

		
		<!--th 포함 테이블영역-->
		<table class="order_tbl" cellspacing="0" border="1" summary="주문 리스트">
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
						<label class="order_chk_type">
							<input type="checkbox" id="chkall" data-flg="N">
							<!--체크박스선택시-->
								<span class="order_clicked_deal" style="display: none;">
								<i class="blind">상품 전체 선택</i>
								</span>
							<!--//체크박스선택시-->
						</label>
					</th>
					<th class="order_amount" colspan="2">
						<div class="cart_chk_wrap">
							<span class="cart_chk">
								<a class="cart_btn_select" onclick="$.cartDel();">선택 상품 삭제</a>
							</span>
							상품 정보
						</div>
					</th>
					<th class="order_amount" scope="col">수량</th>
					<th class="order_amount" scope="col">상품 금액</th>
				</tr>
			</thead>
			
			
			<tbody>
			</tbody>
		</table>
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


									<!-- 개별 상품 시작 -->
									<tbody><tr id="cartgoods7891782" data-cartidx="7891782" data-goodsidx="11379" data-activeyn="Y" data-delivtype="P" data-delivfee="3000" data-delivcon="30000" data-setyn="N">
										<td valign="top" align="center">
											<label class="order_chk_type">
												<input type="checkbox" checked="checked" id="chko7891782" data-flg="Y" data-bundledeliv="0" data-reservd="N">
												<!--체크박스선택시-->
													<span class="order_clicked_deal" style="display: block;">
													<i class="blind">상품 전체 선택</i>
													</span>
												<!--//체크박스선택시-->
											</label>
										</td>
										<td class="order_thmb">
														<a href="/goods/view.asp?g=11379" onclick="hitRecentLog('11379');">
														<img alt="temp thmb" src="http://data.0app0.com/diet/shop/goods/20190528/m_20190528152633_1478357212.jpg">
														</a>
										</td>
										<td class="order_info2" colspan="3">
														<a class="order_deal" title="" href="/goods/view.asp?g=11379">6kcal 배부른 젤리 배불리</a>
														<p class="order_deal_info">*한정특가* 밤에 먹어도 안심! 폭식에서 구원해줄 죄책감 지우개</p>
														
														<!-- 옵션명 노출-->
														<ul class="order_option_area">
														<!-- 상품 옵션 시작 -->
														<li id="cartop6681" data-optidx="6681" data-activeyn="Y" data-mlgyn="N"> 
	<span class="order_option2"><strong> 01.</strong>  *한정특가*배불리 혼합 5박스 (50팩) </span>
	<span class="order_option_cnt inpspan" data-count="1">
		<span class="order_option_input">
			<span class="cart_choice"><a class="mius" id="minbtn" onclick="$.mnsGoods(6681);">-</a><span class="price" id="curcnt"><span class="price_input2"><input type="number" value="1" class="inputno2" style="outline: none; " oninput="this.value=this.value.slice(0,this.maxLength)" maxlength="4" data-idx="6681" data-uc="50"></span></span>
				<a class="plus" id="plsbtn" onclick="$.plsGoods(6681);">+</a></span>
		</span>
	</span>
	<span class="order_option_amounts2" data-price="39900">
		<em class="b">39,900</em>원</span><span><a href="javascript:$.optDel(6681);" class="cart_btn_del"></a>
	</span>
</li>

														<!-- 상품 옵션 종료 -->
														</ul>
														<!-- //옵션명 노출-->
											</td>
									</tr>
									<!-- 개별 상품 종료 -->
									
					
					

									<!-- 개별 상품 시작 -->
									<tr id="cartgoods7891780" data-cartidx="7891780" data-goodsidx="12463" data-activeyn="Y" data-delivtype="P" data-delivfee="3000" data-delivcon="30000" data-setyn="N">
										<td valign="top" align="center">
											<label class="order_chk_type">
												<input type="checkbox" checked="checked" id="chko7891780" data-flg="N" data-bundledeliv="0" data-reservd="N">
												<!--체크박스선택시-->
													<span class="order_clicked_deal" style="display: none;">
													<i class="blind">상품 전체 선택</i>
													</span>
												<!--//체크박스선택시-->
											</label>
										</td>
										<td class="order_thmb">
														<a href="/goods/view.asp?g=12463" onclick="hitRecentLog('12463');">
														<img alt="temp thmb" src="http://data.0app0.com/diet/shop/goods/20190821/m_20190821180323_9245827117.jpg">
														</a>
										</td>
										<td class="order_info2" colspan="3">
														<a class="order_deal" title="" href="/goods/view.asp?g=12463">통밀당 단백칩 7종</a>
														<p class="order_deal_info">*5+1특가* 흰밀가루 Zero~ 바삭바삭 먹는 순간 단백질 보충</p>
														
														<!-- 옵션명 노출-->
														<ul class="order_option_area">
														<!-- 상품 옵션 시작 -->
														<li id="cartop11188" data-optidx="11188" data-activeyn="Y" data-mlgyn="N"> 
	<span class="order_option2"><strong> 01.</strong>  *특가*단백칩 7종 혼합 14봉 (인절미 2봉 + 넛츠 2봉 + 갈릭버터 2봉 + 스파이스 2봉 + 쿠키플레인 2봉 + 쿠키말차 2봉 + 롤 크림치즈 2봉) </span>
	<span class="order_option_cnt inpspan" data-count="1">
		<span class="order_option_input">
			<span class="cart_choice"><a class="mius" id="minbtn" onclick="$.mnsGoods(11188);">-</a><span class="price" id="curcnt"><span class="price_input2"><input type="number" value="1" class="inputno2" style="outline: none; " oninput="this.value=this.value.slice(0,this.maxLength)" maxlength="4" data-idx="11188" data-uc="1"></span></span>
				<a class="plus" id="plsbtn" onclick="$.plsGoods(11188);">+</a></span>
		</span>
	</span>
	<span class="order_option_amounts2" data-price="23900">
		<em class="b">23,900</em>원</span><span><a href="javascript:$.optDel(11188);" class="cart_btn_del"></a>
	</span>
</li>

														<!-- 상품 옵션 종료 -->
														</ul>
														<!-- //옵션명 노출-->
											</td>
									</tr>
									<!-- 개별 상품 종료 -->
									
					
					<tr>
<td colspan="5">
<div class="cart_ds" style="margin:-21px 0 -20px 0"> 
	<div class="cart_ico_ds">▲</div>
		<p>
			<em class="cart_txt cart_fcT1"><i class="fa fa-truck" style="font-size:17px;"></i> 다신배송 (일반식품)</em><a href="/goods/goods_seller.asp?selleridx=205013" class="order_pop_btn_s">배송비 절약하기</a>
			<span class="cart_price">주문금액 <em class="fctah order_fcT1"><span id="grouporderprice" data-price="39900">39,900</span></em>원<em class="cart_plus2">+</em>배송비 <em class="fctah"><span id="groupdeliveryfee" data-price="0">0</span></em>원</span>
		</p>
</div>
</td>
</tr>
</tbody>
</table>

		<!--결제금액박스-->
		<div class="order_calculate_area mt80">
			<div class="cart_deal_price">
				<div class="order_h_area">
				<strong>주문금액</strong>
				</div>
				<div class="order_result_area" id="orderprice" data-orderprice="39900">
					<em><span>39,900</span></em>
					<span class="won">원</span>
				</div>
			</div>

			<span class="cart_plus">+</span>

			<div class="cart_deal_delivery">
				<div class="order_h_area">
				<strong>총 배송비</strong>
				</div>
				<div class="order_result_area" id="totaldeliveryfee" data-totaldeliveryfee="0">
					<em><span>0</span></em>
					<span class="won">원</span>
				</div>
			</div>

			<span class="cart_equal">=</span>

			<div class="order_deal_payment">
				<div class="order_h_area">
					<strong><span>결제 예정 금액</span></strong>
				</div>
				<div class="order_result_area" id="totalprice" data-totalprice="39900">
					<em><span>39,900</span></em>
					<span class="won"><span>원</span></span>
				</div>
			</div>
		</div>

		
		<!-- 20160329 예상적립금 장바구니 노출 -->
		<div class="c_savepay_box">
			<div class="c_savepay">
				<div class="c_save_blank_box">
					<p class="c_save_blank"></p>
				</div>
				<div class="c_save_area_box">
					<p class="c_save_area">
					<strong id="totalmlg" data-totalmlg="0">예상적립금&nbsp;&nbsp;<span>0</span><em>원</em></strong>
					</p>
				</div>
			</div>
		</div>
		<!-- //20160329 예상적립금 장바구니 노출 -->
		
		<!--//결제금액박스-->
		
		
		<!--20170303 구매버튼 추가로 "order_staff_btn" 클래스명 수정-->
		
		<div class="order_btn_section">
			<span class="order_btn_box"><a href="javascript:$.OrderIn();" class="order_btn_ok">구매하기</a><a href="/main.asp" class="order_btn_cancel ml20">계속 쇼핑하기</a></span> 
		
		<!-- 20161019 네이버페이 버튼 노출 -->
		<div class="naverpay_box2">
			<div class="naverpay2">
				<div id="ncbutt"></div>
			</div>
		</div>														
		<!-- //20161019 네이버페이 버튼 노출 -->
		
		</div>
		</div>
	</div>
</div>









</div>
</body>
<footer>
	<jsp:include page ="../common/footer.jsp"/>
</footer>
</html>
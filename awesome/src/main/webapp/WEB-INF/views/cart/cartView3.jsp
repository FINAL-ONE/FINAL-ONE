<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@charset "utf-8";

/* Font */
@font-face{font-family:hv;font-style:normal;font-weight:300;src:url('../../font/HelveticaNeueLTStd-UltLt.woff') format('woff')}
@font-face{font-family:hv;font-style:normal;font-weight:400;src:url('../../font/HelveticaNeueMed_1.woff') format('woff')}
@font-face{font-family:hv;font-style:normal;font-weight:700;src:url('../../font/HelveticaNeueLTStd-Bd.woff') format('woff')}


@font-face{font-family:ng;font-style:normal;font-weight:400;src:url('../../font/NanumGothic-Regular.eot');src:local('NanumGothic'),local('나눔고딕'),url('../../font/NanumGothic-Regular.woff') format('woff')}
@font-face{font-family:ng;font-style:normal;font-weight:700;src:url('../../font/NanumGothic-Bold.eot');src:local('NanumGothic'),local('나눔고딕'),url('../../font/NanumGothic-Bold.woff') format('woff')}
@font-face{font-family:nm;font-style:normal;font-weight:400;src:local('NanumMyeongjo'),local('나눔명조'),url('../../font/NanumMyeongjo-Regular.woff') format('woff')}
@font-face{font-family:nm;font-style:normal;font-weight:700;src:local('NanumMyeongjo'),local('나눔명조'),url('../../font/NanumMyeongjo-Bold.woff') format('woff')}

/*20190724 웹폰트 추가*/
@font-face {
  font-family: 'Noto Sans';
  font-style: normal;
  font-weight: 200;
  src: url('/font/NotoSansKR-Light.woff2') format('woff2'),
  url('/font/NotoSansKR-Light.woff') format('woff'),
  url('/font/NotoSansKR-Light.otf') format('opentype');
}
@font-face {
  font-family: 'Noto Sans';
  font-style: normal;
  font-weight: 400;
  src: url('/font/NotoSansKR-Regular.woff2') format('woff2'),
  url('/font/NotoSansKR-Regular.woff') format('woff'),
  url('/font/NotoSansKR-Regular.otf') format('opentype');
}

@font-face {
  font-family: 'Noto Sans';
  font-style: normal;
  font-weight: 700;
  src: url('/font/NotoSansKR-Medium.woff2') format('woff2'),
  url('/font/NotoSansKR-Medium.woff') format('woff'),
  url('/font/NotoSansKR-Medium.otf') format('opentype');
}


.font_hv,
.btn.xl{font-family:hv,Arial,NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.font_georgia{font-style:italic;font-family:Georgia,serif;letter-spacing:1px}
.font_nu {font-family:'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif; letter-spacing:-0.02em; font-weight:bold} /*20191107 폰트스타일 추가*/
.font_ng{font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.font_nm{font-family:NanumMyeongjo,'나눔명조',sans-serif}
.font_dotum{font-family:'돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.font_arrow{font-style:normal;font-family:sans-serif;opacity:.5}
.font_wn {font-weight:normal}
.font_wb {font-weight:bold}
/* //Font */

/* 공통요소 */
img {vertical-align:top;border:0;}
input {border:0;}
legend {visibility:hidden; overflow:hidden;position:absolute;left:-1000em;width:0;height:0;font-size:0;line-height:0;}

select {background-color:#ffffff;color:#6e6e7d; border:1px solid #d2d2d2; font-size:1em; height:30px; vertical-align:middle;}

/* reset */
html,body{}
html{overflow-y:scroll;}
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,form,fieldset,p,button,input,td,th{margin:0;padding:0}
body,h1,h2,h3,h4,h5,h6,input,button{font-family:hv,Arial,NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif;font-size:13px;line-height:1;*line-height:1.1;color:#383838}
img,fieldset,iframe{border:0 none}
li{list-style:none}
img,input{vertical-align:top}
em,address{font-style:normal}
button{margin:0;padding:0}
a{text-decoration:none;color:inherit;*color:#383838}
table{border-collapse:collapse;border-spacing:0}
caption,legend, hr{width:0;height:0;font-size:0;line-height:0;overflow:hidden;visibility:hidden;border:0 none;position:absolute;left:-1000em}
caption,legend{position:static}
article, aside, canvas, details, figcaption, figure, footer, header, hgroup, nav, menu, nav, section{display: block}
/* //reset */
/* //공통요소 */

/* 20160309 폰트칼라 */
.fc1 {color:#f96767;} /* 기본오렌지 */
.fc1_2 {color:#ff4c4d;} /* 밝은오렌지 */
.fc2 {color:#ccc;} /* 밝은회색1 */
.fc3 {color:#a1a1a9;} /* 흐린회색1 */
.fc4 {color:#46bf9b;} /* 기본그린 */


.fc5 {color:#c9c8ef;} /* 연한퍼플1 */
.fc6 {color:#6e6e7d;} /* 회색퍼플2 */
.fc7 {color:#ffde00;}/* 옐로우색 */
.fc8 {color:#5bbdec;} /* 상세파랑 */
.fc9 {color:#1d77db;} /* 상세파랑1 */
.fc10 {color:#3dab22;} /* 녹색 */
.fc11 {color:#d5d2d2;} /* 흐린회색3 */
.fc12 {color:#6d7b85;} /* 흐린회색4 */
.fc13 {color:#3990cb;} /*본문블루색*/
.fc14 {color:#0e6fc4;} /*본문진한블루색*/
.fc15 {color:#fff000;} /*옐로우색1*/
.fc16 {color:#ff0000} /*레드*/
.fc17 {color:#696dcd} /* 진한퍼플3 */
/* //20160309 폰트칼라 */

/* text */
.u{text-decoration:underline !important}
.n{font-weight:normal !important}
.p-bluegreen{color:#189ab6 !important}
.p-red{color:#ec434a !important}
.pre{white-space:pre !important}
.p-bk{color:#212121 !important}
.p-gray{color:#7b7b7b !important}
.p-sky{color:#16a8e5 !important}
.p-blue{color:#4776c9 !important}
.p-org{color:#fb4d00 !important}
.b{font-weight:bold !important}
.f11bold{font-size:11px;font-weight:bold !important}
.lh30{line-height:30px !important}
.f12{font-size:12px !important}
.blind {display:none} 
.fl {float:left}
.fr {float:right}

.clearfix {*zoom: 1;}
.clearfix:before,
.clearfix:after {display: table;content: "";line-height: 0;}
.clearfix:after {clear: both;}
/* //text */

/* 20161215 수정 layout */
#wrap {margin:0 auto;}
.header {background:#fff;position:relative;margin:0 auto;z-index:102;height:120px;margin:0;width:100%;z-index:1000}
.header .inner{position:relative;width:100%;height:34px;background:#eee;border-top:0px solid #dfdfdf;border-bottom:0px solid #dfdfdf;margin:0 auto;z-index:130} /* 20161215 상단바 bg 수정 */

/* 최상단 페이지 구분 */
.top_gnb_wrap {width:1100px;margin:0 auto;position:relative;z-index:150;}
.top_gnb {position:absolute;left:0px;top:0px;}
.top_gnb>li{float:left;padding-right:0px}
.top_gnb>li:first-child{padding-left:0} 
.top_gnb>li>a{float:left;height:23px;padding-top:0px}
.top_gnb>li>a.active,
.top_gnb>li:hover>a{} 
.top_gnb li a{float:left;color:#646363;font-family:'dotum';font-size:11px}
/* //최상단 페이지 구분 */

/* 20161215 수정 상단 로그인 영역 */
.utill_box {position:relative;margin:0 auto;width:1100px;height:34px;z-index:103}
.utill {position:absolute;right:76px;top:13px}
.utill li{float:left;padding-left:7px;margin-left:8px}
.utill li:first-child{margin-left:0;padding-left:0;background:none}
.utill li a{float:left;color:#777;font-family:Arial,NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif;font-size:11px} /* 20161215 로그인상단바 텍스트 컬러수정 */

.utill2 {position:absolute;right:0px;top:13px}
.utill2 li{float:left;padding-left:18px;margin-left:8px;background:url('/img/ico/bar_1.gif') no-repeat left 1px}
.utill2 li:last-child{margin-right:0;padding-right:0;}
.utill2 li a{float:left;color:#777;font-family:Arial,NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif;font-size:11px} /* 20161215 로그인상단바 즐겨찾기 텍스트 컬러수정 */
.utill>li>a.active,
.utill>li:hover>a{color:#000;}
.utill2>li>a.active,
.utill2>li:hover>a{color:#000;}
/* //20161215 수정 상단 로그인 영역 */

/* 마이페이지 셀렉트박스 */
.myp_select_wrap {position:absolute;right:58px;top:35px;z-index:1120;overflow:hidden}
.myp_select {position:relative;width:94px;background:#fff;border:1px solid #86868b} /*20160728 마이페이지 비회원 추가 박스 사이즈 수정*/
.myp_select li {width:100%;overflow:hidden;font-size:11px;line-height:100%;color:#333;font-family:Arial,NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.myp_select li a {display:block;overflow:hidden;height:100%;padding:6px 10px;text-overflow:ellipsis;white-space:nowrap;}
.myp_select li:hover>a {background:#f3f3f3} 
.myp_select li a.fi {padding-top:8px} 
.myp_select li a.la {padding-bottom:8px} 
.myp_select li:hover>a.fi {border-top-left-radius:0px;border-top-right-radius:0px} 
.myp_select li:hover>a.la{border-bottom-left-radius:0px;border-bottom-right-radius:0px} 
/* //마이페이지 셀렉트박스 */

/* 로고 및 검색영역 */
.logo_box_wrap {width:100%;background:#fff;border-bottom:1px solid #fd555d;z-index:103}
.logo_box_w {position:relative;margin:0 auto;width:1100px;height:85px;}
.logo_box {width:100%;height:100px;}
.logo {margin:0 auto;text-align:center;margin-top:15px}
/* //로고 및 검색영역 */

/* 헤더 슬라이드 */
.header_slid_wrap {position:absolute;left:0px;top:18px;width:234px;}
.header_slid_wrap a:hover {color:#fd4d56}
.header_s_tit {display:block;color:#fe4f4f;font-size:12px;font-weight:700}
.header_s_txt {overflow:hidden;display:block;width:210px;margin-top:9px;color:#666;font-size:12px;text-overflow:ellipsis;text-overflow:-o-ellipsis-lastline;display:inline-block;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;word-wrap:break-word;word-break:break-all;white-space:normal;height:2.5em;line-height:1.2em}/* 20161215 다이어트 꿀팁 2줄 생성*/
.btn_slide_wrap {position:absolute;right:0px;top:0px}
.btn_slide_wrap a img {border:none;;height:15px}
.btn_sch {display:block;padding:8px 9px 0 0;background:none;text-align:center}
/* //헤더 슬라이드 */

/* 검색(20180516 수정) */
.sch_box_wrap {position:absolute;right:0px;top:18px;width:234px;height:34px;border:1px solid #d4d4d4}
.sch_box {overflow:hidden;display:block;background:#fff;height:34px;padding:0 5px;}
.sch_box_word {position:absolute;left:12px;width:80%;height:34px;line-height:34px;color:#a9a9a9;font-size:13px;border:none;font-family:hv,Arial,NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.sch_box_word[type=text]::-webkit-input-placeholder {color:#555;}
.sch_box_word[type=text]:focus {border-bottom:0px solid #f96767;color:#f96767;outline: medium none;}
.ico_sch {position:absolute;right:3px;top:13px;display:block;width:15px;height:14px;padding:5px 0px 5px 0px}
.btn_sch_wrap {position:absolute;right:0px;top:0px}
.btn_sch_wrap img {border:none;width:20px;height:18px}
.btn_sch {display:block;padding:8px 9px 0 0;background:none;text-align:center}
/* //검색(20180516 수정) */

/* 검색 결과 추가 */
.sch_result_tit{font-size:16px;font-weight:bold;text-align:left;border-bottom:1px solid #efefef}
.sch_result_tit a {display:block;background:none;color:#666;padding:18px 0px 16px 0px;}
.sch_result_tit a:hover {display:block;background:none;color:#000}
.btn_sch_more {float:right;font-size:13px;color:#888;margin:3px 10px 0 0}
.btn_sch_more:hover {display:block;background:none;color:#000}
/* //검색 결과 추가 */

/* 검색 자동완성 */
.sch_auto_wrap {position:absolute;right:0px;top:52px;z-index:1000;overflow:hidden}
.sch_auto {position:relative;width:234px;background:#fff;border:1px solid #ababab}
.sch_auto li {width:100%;overflow:hidden;font-size:1em;line-height:100%;color:#333;}
.sch_auto li a {display:block;overflow:hidden;height:100%;padding:10px;text-overflow:ellipsis;white-space:nowrap;}
.sch_auto li:hover>a {background:#f3f3f3} 
.sch_auto li a.fi {padding-top:16px} 
.sch_auto li a.la {padding-bottom:16px} 
.sch_auto li:hover>a.fi {border-top-left-radius:10px;border-top-right-radius:10px} 
.sch_auto li:hover>a.la{border-bottom-left-radius:10px;border-bottom-right-radius:10px} 
/* //검색 자동완성 */

/* 20161115 대메뉴> 서브메뉴추가 */
.gnb_b_wrap {position:absolute;width:100%;background:#fff;height:50px;border-bottom:1px solid #d4d4d4;z-index:150}
.gnb_wrap {position:relative;width:1100px;margin:0 auto}
.gnb {position:absolute;left:0px;top:8px}

/*20190312 메인 카테고리 메뉴 변경*/
.gnb>li {float:left;padding:0 15px;}
.gnb>li.last {float:left;padding-right:0; margin-right:0;}
.gnb>li:first-child {padding-left:0; }
.gnb>li:last-child {padding-right:0;margin-right:0;}

.gnb>li>a {float:left;height:23px;padding-top:8px}
.gnb>li>a.active,
.gnb>li:hover>a {display:block;color:#fa4d4d;background:url('/img/common/bg_gnb_on.gif') no-repeat center bottom;height:34px;} 
.gnb li a {float:left;font-size:17px;color:#000;font-weight:600;letter-spacing:-0.05em;}
.gnb li a span:hover {color:#fa4d4d;font-weight:600;letter-spacing:-0.05em;}
.gnb li .fixx {float:left;font-size:17px;color:#fa4d4d;font-weight:600;letter-spacing:-0.03em;} /*20180905 정기배송 텍스트 변경*/
..gnb a.on {color:#fe414a;font-weight:600;letter-spacing:-0.05em;}

.gnb_menu img {position:absolute;right:-13px;top:0px;display:inline-block; vertical-align:top; }
.gnb_menu {position:relative;color:#000;font-weight:600; font-size:16px; }
/*//20190312 메인 카테고리 메뉴 변경*/

.header .gnb_sub-wrap{position:absolute;width:100%;background:#fff;height:50px;border-bottom:1px solid #d4d4d4;}
.header .gnb_sub{position:relative;width:1100px;margin:0 auto}
.header .gnb_sub>li{float:left;padding:0 46px}
.header .gnb_sub>li:first-child{padding-left:0}
.header .gnb_sub>li>a{float:left;height:23px;padding-top:8px}
.header .gnb_sub>li>a.active,
.header .gnb_sub>li:hover>a {display:block;color:#fa4d4d;background:url('../../img/common/bg_gnb_on.gif') no-repeat center bottom;height:34px;z-index:200} /*20190312 마우스오버 이미지 원복*/
.gnb_sub_bl {background:#fff;margin-top:0px;height:20px}
.header .gnb_sub>li:hover>a{display:block; background:#fff; z-index:100}

/*20190312 메인 gnb메뉴 추가*/
.header .sub2 {position:absolute;top:42px;height:433px;background:#fff;padding:16px 24px 0px;border:1px solid #fa4d4d;}
.header .sub2 li a {clear:both;display: inline;background:#fff;line-height:2.1em;font-size:1.1em;font-weight:normal}
.header .sub2 li a:hover {color:#fa4d4d;font-weight:700}
.header .sub2.sub01{width:1050px;left:0px;}

.header .sub {position:absolute;top:42px;height:210px;background:#fff;padding:16px 16px 0px;border:1px solid #fa4d4d;}
.header .sub li a {clear:both;display:inline;background:#fff;line-height:2.1em;font-size:1.1em;font-weight:normal}
.header .sub li a:hover {color:#fa4d4d;font-weight:700}

.header .sub.sub01{width:210px;left:97px}
.header .sub.sub02{width:210px;left:436px}
.header .sub.sub03{width:210px;left:500px}
.header .sub.sub04{width:220px;left:580px}
.header .sub.sub05{width:220px;left:684px}
.header .sub.sub06{width:210px;height:310px;left:788px} /*20190801a 하위메뉴길이 변경2*/
.header .sub.sub07{width:230px;left:840px}
/*//20190312 메인 gnb메뉴 추가*/

.clfix:after{content:".";display:block;height:0px;clear:both;visibility:hidden}
.clfix{display:inline-block}
.clfix{display:block}
* html .clfix{height:1%}
.clfix{*zoom:1}

/*---20190312 퀵메뉴 이미지영역 수정---*/
.navi_thum_box {display:block;position:absolute; margin-top:5px;right:15px;width:120px}
.navi_thum_tit {width:120px;font-weight:600;color:#000;margin:30px 0 14px;text-align:center;font-size:0.8em;}
.navi_thum_img {display:table;vertical-align:middle;border:1px solid #f1f1f1}
.navi_thum_img img {width:118px;}
.navi_thum_v {display:block;width:120px;margin:12px 0 0;height:28px; line-height:28px;background:#fa4d4d;color:#fff;text-align:center;font-size:0.75em;font-weight:normal}

.categ_thum_box {display:block;width:114px;}
.categ_thum_tit {width:120px;font-weight:600;color:#000;margin:5px 0 14px;text-align:center;font-size:0.8em;}
.categ_thum_img {display:table;vertical-align:middle;border:1px solid #f1f1f1}
.categ_thum_img img {width:116px; height:116px;}
.categ_thum_v {display:block;width:118px;margin:4px 0 0;height:28px; line-height:28px;background:#fa4d4d;color:#fff;text-align:center;font-size:0.95em;font-weight:500}
.categ_thum_v:hover { font-weight:bolder}
/*//---20190312 퀵메뉴 이미지영역 수정---*/


/*** 2container ***/
.main #contents_wrap{width:100%;min-width:1100px;padding-top:166px;background:#fff}
.main #container .contents{width:1100px} 
.main #container .txt-goodword{background:url('/img/ico/ico_book.png') no-repeat;line-height:23px;color:#5f5e5e;padding-left:34px;position:absolute;left:0;top:-34px;z-index:101}
.main #container .txt-goodword a{color:#5f5e5e}

/* 메인슬라이드배너 */ 
.m_slides_wrap{text-align:center;margin:0 auto;}
.m_slides_wrap .bx-wrapper {text-align:left}
.slides_container{position:relative;height:450px;z-index:50}
.slides_container div.slides_navi a{z-index: 55;}

.m_slides_lst{overflow:hidden;height:450px}
.m_slides_lst li{float:left;width:100%;background:no-repeat center top;}
.m_slides_lst li a{overflow:hidden;margin:0 auto;display:block;width:1100px;height:450px;text-indent:-3000px}

.slides_navi{width:100%;}
.slides_navi a{overflow: hidden;display:block;width:42px;height:70px;text-indent:-3000px;position:absolute;top:50%;margin-top:-46px;background: url(/img/common/main_slides_navi.png) no-repeat center center}
.slides_navi a.slides_prev{right:50%;margin-right:580px;background-position:left center}
.slides_navi a.slides_next{left:50%;margin-left:580px;background-position:right center}


.slides_pagination {overflow:visible;position:absolute;bottom:24px;width:100%;height:0;z-index:120}
.slides_pagination li {display:inline-block;vertical-align:top;padding:0 6px; *display: inline; *zoom: 1;}
/*20160401 슬라이드 이동 컬러 수정*/
.slides_pagination li a {display:block;width:76px;height:0px;padding:5px 0 0 0;overflow:hidden;background:#d0d0d0;-webkit-box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.1); -moz-box-shadow:0 0 0 1px rgba(0, 0, 0, 0.1);box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.1);opacity: 0.4; filter:alpha(opacity=40);}
/*//20160401 슬라이드 이동 컬러 수정*/
.slides_pagination li a:hover,
.slides_pagination li a.now {opacity: 1.0; filter: alpha(opacity=100)}

/* //메인슬라이드배너 */   

/*** container ***/
#container{padding:52px 0 90px;width:1100px;margin:0 auto; *zoom:1}
#container:after{content:".";display:block;height:0px;clear:both;visibility:hidden}

#containerx{padding:72px 0 90px;width:1100px;margin:0 auto; *zoom:1}
#containerx:after{content:".";display:block;height:0px;clear:both;visibility:hidden}

/* 20161116 다신단독배너 */
.m_banner_box {position:relative;overflow:hidden}
.m_banner a {position:relative;overflow:hidden;width:370px;margin-right:13px}
/* //20161116 다신단독배너 */

/* 회원혜택안내 */
.service_menu_box {width:320px;height:222px;background:#86868b}
.service_menu_lst {font-family:'Nanum';}
.service_menu_lst li{float:left;width:159px;height:109px;text-align:center;margin-bottom:1px}
.service_menu_lst li p{overflow:hidden;display:block;font-size:12px;height:100%;color:#fff;letter-spacing: -0.02em;line-height:1.3em;font-weight:normal}

.service_menu_lst li.s1.m1 {height:90px;padding-top:20px;border-right:1px dashed #666669;border-bottom: 1px dashed #666669}
.service_menu_lst li.s2.m2 {height:90px;padding-top:20px;border-bottom:1px dashed #666669}
.service_menu_lst li.s3.m3 {height:95px;padding-top:14px;border-right:1px dashed #666669}
.service_menu_lst li.s4.m4 {height:95px;padding-top:14px;}

.service_menu_lst li span.ic{display:block;width:51px;height:30px;margin:4px auto 5px; background: url(/img/ico/ico_s_menu.png) no-repeat; text-align: center; }
.service_menu_lst li.s1 span.ic{background-position: 1px -10px;} 
.service_menu_lst li.s2 span.ic{background-position: 0px -42px;}
.service_menu_lst li.s3 span.ic{height:30px;background-position: 0px -77px;}
.service_menu_lst li.s4 span.ic{height:30px;background-position: 1px -111px;}
/* //회원혜택안내 */


/* hotdeal */
.hotlist_box_wrap {position:relative;width:1101px;margin:10px auto 0; *zoom:1}
.hot_list_tit {position:relative;margin-bottom:40px;width:100%;text-align:center;color:3b3b3b;font-size:25px;font-weight:600;letter-spacing:0.55em;}

.hot_list_wrap {overflow:hidden;position:relative}
.hot_list {overflow:hidden}
.hot_list li {width:354px;margin:0 13px 80px 0;float:left;vertical-align:top}

.h_li_txt_box {position:relative;display:block;background:#f5f5f6;padding:18px 16px;height:124px;font-weight:normal;text-align:left}
.h_li_box_img {width:352px;height:352px;border:1px solid #f0f1f1;vertical-align:top;} 
.h_li_box_img img {border:none;width:352px;height:352px;} 

.h_li_tit {overflow:hidden;display:block;color:#232323;padding-bottom:6px;font-size:18px;font-weight:600;text-overflow:ellipsis;white-space:nowrap;letter-spacing:0px}

.h_li_txt_box .h_li_tit:hover {color:#fe6b6b;}
.h_li_txt {overflow:hidden;display:block;margin-top:10px;color:#888;font-size:14px;letter-spacing:0px;line-height:1.6em;text-overflow:ellipsis;text-overflow:-o-ellipsis-lastline;display:inline-block;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;word-wrap:break-word;word-break:break-all;white-space:normal;max-height:3em}

.hot_price_wrap {position:relative;margin-top:25px}
.hot_price {display:inline-block}
.hot_per_price {font-size:13px;color:#909090;text-decoration:line-through;font-weight:normal;letter-spacing:-1px}

.hot_dc {color:#666;font-weight:600;font-size:1.08em;letter-spacing:-1px} 
.hot_list_dc {padding-left:5px;color:#ff4c4d;font-weight:600;font-size:17px;letter-spacing:-0.03em} 
.ico_keep img {padding-right:10px}
.ico_dsd_box {position:absolute;right:16px;bottom:20px}
.ico_dsd {padding:2px 4px 3px;background:#aaacaf;color:#fff;font-size:13px;letter-spacing:-0.02em}

/* 20190801 일시품절 컬러수정 */
.ico_soldout {padding:2px 4px 3px;background:#adadad;color:#fff;border:0px solid #2f3032;font-size:13px;letter-spacing:-0.02em}
/* //20190801 일시품절 컬러수정 */

.ico_dsd2_box {display:block;margin-top:27px;}
.ico_dsd2 {padding:2px 4px 3px;background:#aaacaf;color:#fff;font-size:13px;letter-spacing:-0.02em} 

.ico_more_h {position:absolute;right:13px}
.ico_more_h img {width:29px;height:29px;vertical-align:middle;border:none}
.ico_more_b {position:absolute;right:0px}
.ico_more_b img {width:29px;height:29px;vertical-align:middle;border:none}
/* //hotdeal */

/*---20190227a 수정 상품마우스오버---*/
.grid {position:relative;width:350px;height:510px;box-sizing:border-box;z-index:120}
.grid:hover .tmb_hover {overflow:hidden;background:none;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-bottom:none;width:350px;height:510x;filter:alpha(opacity=100);opacity:1;transition:all .01s}
.grid:hover .tmb_hover2 {overflow:hidden;background:none;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-top:none;width:350px;height:510x;filter:alpha(opacity=100);opacity:1;transition:all .01s}

/*인기/최신상품 그리드영역 수정*/
.grid_n {position:relative;width:262px;height:450px;box-sizing:border-box;z-index:120}
.grid_n:hover .tmb_hover_n {overflow:hidden;background:none;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;width:260px;height:460px;filter:alpha(opacity=100);opacity:1;transition:all .01s}/*20190731 height 수정*/
.grid_n:hover .tmb_hover_n2 {overflow:hidden;background:none;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-top:none;width:260px;height:450x;filter:alpha(opacity=100);opacity:1;transition:all .01s}
/*//인기/최신상품 그리드영역 수정*/


.grid_f {position:relative;width:256px;height:347px;box-sizing:border-box;z-index:1000; }
.grid_f:hover .tmb_hover_n {overflow:hidden;background:none;position:absolute;top:0px;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-bottom:none;width:254px;filter:alpha(opacity=100);opacity:1;transition:all .01s}
.grid_f:hover .tmb_hover_n2 {overflow:hidden;background:none;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-top:none;border-bottom:3px solid #fe6b6b;width:254px;filter:alpha(opacity=100);opacity:1;transition:all .01s}

.grid3 {position:relative;width:206px;height:206px;box-sizing:border-box}
.tmb_hover3 {overflow: hidden;width: 206px;height: 206px;position: absolute;top: 1px;bottom: 0px;left: 0;right: 0;filter: alpha(opacity=100);	opacity: 1;transition: all .01s}
.grid3:hover .tmb_hover3{overflow:hidden;background:#000;border:0px solid #000;width:206px;height:206px;filter:alpha(opacity=30);opacity:0.3;transition:all .01s}

.catego_tb_mw .tb_mw{position:relative;display:inline-block;overflow:hidden;vertical-align:top}
.grid_categry { position:relative; width:116px; height:116px;color:#fff; box-sizing:border-box;z-index:1000;}
.grid_categry:hover .tmb_hover_n {position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;width:114px;height:114px;filter:alpha(opacity=100);opacity:1;transition:all .01s;z-index:1000;}
/*---//20190227a 수정 상품마우스오버---*/

/* 한정특가 */
.sale_list {overflow:hidden;position:relative;;}
.sale_list li {position:relative;display:inline-block;width:354px;margin:0 13px 80px 0;float:left;vertical-align:top}
/* //한정특가 */

/* 이거어때배너 */
.bn_list_wrap {overflow:hidden;position:relative;z-index:50}
.bn_list {display:inline;width:1100px;}
.bn_list li {float:left;width:543px;margin:0 14px 14px 0}
.bn_list li.last {float:left;width:543px;margin:0 0px 14px 0}
.bn_list li img {width:543px;height:184px;border:none}
/* //이거어때배너 */

/* 20161219 수정 이거어때 UI 변경 */
.md_list_wrap1 {overflow:hidden;position:relative;height:750px;border-top:2px solid #4fd0e0;border-bottom:1px solid #eee}
.md_list_wrap2 {overflow:hidden;position:relative;height:750px;border-top:2px solid #fcc180;border-bottom:1px solid #eee}
.md_list_wrap3 {overflow:hidden;position:relative;height:750px;border-top:2px solid #a996c3;border-bottom:1px solid #eee}
.md_list_wrap4 {overflow:hidden;position:relative;height:750px;border-top:2px solid #52cfad;border-bottom:1px solid #eee}
.md_list {float:left;display:table;vertical-align:top;margin-left:15px}
.md_list_tit {float:left;display:inline-block;border-left:1px solid #eee;border-right:1px solid #eee}
.md_list_tit a img {width:258px;height:750px;vertical-align:top}
.md_list li {position:relative;display:inline-block;width:264px;height:310px;margin:20px 12px 20px 0;float:left;vertical-align:top}
.md_list li.last {width:230px;margin-right:0px;float:left;vertical-align:top}

.md_li_txt_box {padding:0px;background:#fff;padding:12px 10px 10px}
.md_li_box_img {width:260px;height:260px;background:#f3f4f4;vertical-align:top;} 
.md_li_box_img img {width:260px;height:260px;border:none} 
.md_li_tit {overflow:hidden;display:block;color:#232323;font-size:16px;font-weight:600;text-overflow:ellipsis;white-space:nowrap;letter-spacing:0px}

.md_price_wrap {position:relative;margin-top:10px}
.md_price {display:inline-block}
.md_per_price {font-size:12px;color:#909090;text-decoration:line-through;font-weight:normal;letter-spacing:-1px}
.md_dc {color:#666;font-weight:600;letter-spacing:-1px} 
.md_list_dc {padding-left:5px;color:#000;font-weight:600;font-size:15px;letter-spacing:-0.02em}

.grid_md {position:relative;width:258px;height:320px;box-sizing:border-box;z-index:300}
.grid_md:hover .tmb_hover_md {overflow:hidden;background:none;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-bottom:none;width:258px;height:320px;filter:alpha(opacity=100);opacity:1;transition:all .01s}
.grid_md:hover .tmb_hover_md2 {overflow:hidden;background:none;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-top:none;width:258px;height:320px;filter:alpha(opacity=100);opacity:1;transition:all .01s}

/* 20161221 수정 상품 슬라이드 */
.bnr {overflow:hidden;position:absolute;left:50%;margin-left:350px}
.bu_slide {overflow:hidden;display:table-cell;width:124%;position:absolute;bottom:20px;text-align:center}
.bu_slide_nomal a {position:relative;top:0px;display:inline-block;width:9px;height:9px;background:#e9e9e9}
a.bu_slide_on {position:relative;top:0px;background:#999;width:9px;height:9px;}

.md_arrow_box {position:relative;top:708px;left:0px;width:774px;margin-left:10px;display:table;vertical-align:middle;z-index:200}
.md_arrow_line {position:absolute;top:0px;background:#eee;margin-left:10px;width:764px;height:1px;}
.md_arrow_img1 {right:54%;margin-right:58px;position:absolute;top:0px;}
.md_arrow_img2 {left:56%;margin-left:62px;position:absolute;top:0px;}
.md_arrow_box img {opacity:0.6;width:30px;height:30px;z-index:200;}
/* //20161221 수정 상품 슬라이드 */
/* //20161219 수정 이거어때 UI 변경 */

/* 신상품 */
.newp_list_wrap {overflow:hidden;position:relative}
.newp_list {overflow:hidden;position:relative}
.newp_list li {position:relative;display:inline-block;width:266px;height:420px;margin:0 12px 70px 0;float:left;vertical-align:top}
.newp_list li.last {width:266px;margin-right:0px;float:left;vertical-align:top}

.n_li_txt_box {padding:0px;background:#fff;padding:18px 0px 16px}
.n_li_box_img {width:264px;height:264px;background:#f3f4f4;vertical-align:top;} 
.n_li_box_img img {width:264px;height:264px;border:none} 

.n_li_txt_box {position:relative;display:block;font-weight:normal;text-align:left; padding-left:10px}
.n_li_tit {overflow:hidden;display:block;color:#232323;padding-bottom:6px;font-size:18px;font-weight:600;text-overflow:ellipsis;white-space:nowrap;letter-spacing:0px}
.n_li_txt {overflow:hidden;display:block;margin:11px 18px 0 0;color:#888;font-size:15px;letter-spacing:0px;line-height:1.6em;text-overflow:ellipsis;text-overflow:-o-ellipsis-lastline;display:inline-block;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;word-wrap:break-word;word-break:break-all;white-space:normal;max-height:3em}

.newp_price_wrap {position:relative;margin-top:25px}
.n_price {display:inline-block}
.n_per_price {display: table-cell; font-size:12px;color:#909090;text-decoration:line-through;font-weight:normal;letter-spacing:-1px; vertical-align: middle}
.n_dc {color:#666;font-weight:600;font-size:1.08em;letter-spacing:-1px} 
.n_list_dc {padding-left:5px;color:#000;font-weight:600;font-size:17px;letter-spacing:-0.02em}
/* 신상품 */

/*20190417 별점 및 리뷰영역 추가*/
.reviews_wrap { position:absolute;  }/*20190731 bottom 및 margin 값 삭제*/
.ico_reviews img {padding-right:2px; margin:10px 0px 0px 4px; }
.reviews_point {display:inline-table;vertical-align:top;font-size:1.2em;color:#111;font-weight:normal;letter-spacing:-0.05em;font-family:'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif }
.reviews_bar {display:inline-table;vertical-align:top;margin:1px 8px 0px; font-size:1.05em;color:#bbb;font-weight:normal;letter-spacing:-0.05em;}
.reviews_point_box {display:inline-block;vertical-align:top;margin-top:0px; width:242px; height:32px; line-height:32px; text-align:left; } /*20190731 */
.reviews_number {display:inline-table;vertical-align:top; font-size:1.2em;color:#ff4c4d;font-weight:600;letter-spacing:-0.05em;font-family:'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif }
.reviews_tit {display:inline-table;vertical-align:top;margin-left:2px; font-size:1.1em;color:#666;font-weight:normal;letter-spacing:-0.05em; }
/*//20190417 별점 및 리뷰영역 추가*/

/* 리얼후기 */
.photo_reply_wrap {overflow:hidden;position:relative;z-index:50}
.photo_reply {overflow:hidden;width:1110px}
.photo_reply li {float:left;width:208px;height:208px;vertical-align:top;margin:0 14px 14px 0}
.photo_reply li.last {float:left;width:206px;height:206px;vertical-align:top;margin:0 14px 14px 0}
.photo_r_lst_box {overflow:hidden;position:relative}
.photo_reply_box img {width:206px;height:206px;border:1px solid #eee}
.photo_reply_box_last img {width:206px;height:206px;border:1px solid #eee}
/* //리얼후기 */

/*20170829 상품후기 안내 추가*/
.d_noti_wrap{}
.d_noti_wrap_txt{text-align:center;font-size:1.4em;line-height:25px;font-weight:600;border:1px solid #d9d9d9;}


/* footer */
/*-----20180618 footer UI개편-----*/
/*페이지 업/다운 */
.top_wrap {position:absolute;top:680px;left:1200px;z-index:10}/* 20161215 페이지 업/다운 기본위치 수정 */
.top_box_wrap {float:right;margin:0 auto}
.top_box {position:fixed;width:39px;height:39px;border:0px solid #c0c0c0;background:rgba(255,255,255,0.9);border-radius:3px}
.top_txt {display:block;height:39px;width:39px;background:rgba(255,255,255,0.9);border-radius:3px}
.top_txt img {width:39px;height:39px;border:none;vertical-align:middle; opacity:0.7}
.top_txt img:hover {background:rgba(94,95,98,0.1);}
/*//페이지 업/다운 */

.footer {background:#fff;border-top:1px solid #666} 
.inner_top { overflow:hidden;width:100%;margin:0px auto;height:48px; border-bottom:1px solid #eee }
.inner_top .notice { overflow:hidden; display:block; width:1100px; margin:0px auto;}
.inner_top .notice li{float:left;padding-right: 16px;font-size:13px;}
.inner_top .notice li:after {display:inline-block;height:12px; margin:20px 0 0 14px;border-right:1px solid #ddd;content:''}
.inner_top .notice li.last:after {border-right:none}
.inner_top .notice li a {float:left;height:52px;line-height:52px;color:#222;font-weight:normal;}
.inner_top .notice li a:hover{color:#fa4d4d}

.footer .inner { overflow:hidden;width:1100px;margin:40px auto 42px;position:relative;}
.footer .inner li.li34 {display:table-cell;vertical-align:top;width:34%; }
.footer .inner li.li36 {display:table-cell;vertical-align:top;width:36%; }
.footer .inner li.li24 {display:table-cell;vertical-align:top;width:24%}
.cscenter_w { display:block; position:relative; margin-right:30px; }
.cscenter_w li { display:block;color:#999; line-height:1.4em}
.cscenter_tit {display:block;font-size:17px; padding-top:10px; font-weight:600; color:#000; letter-spacing:-0.03em}
.cscenter_titline {display:block; background:#000; margin:10px 0 14px; width:30px; height:1px}
.cscenter_tel {display:block;margin:14px 0 9px;font-size:23px;font-weight:bold; color:#000} /*20180820 고객센터 연락처 마진값 수정*/
.cscenter_tel img { margin:-2px 4px 0 0}

/*20180820 텍스트영역 수정*/
.cscenter_tit2 {display: inline;font-size:16px; padding-top:10px; font-weight:600; color:#000; letter-spacing:-0.03em}
.cscenter_stxt {display: inline-block; margin:-3px 0px 0px 10px; font-size:12px; vertical-align:middle; color:#555; font-weight:normal}
.cscenter_txt {display:block; font-size:13px; font-weight:normal; line-height:1.75em}
.cscenter_txt2 {display:block; font-size:13px; font-weight:normal; line-height:1.2em; margin-top:-2px;} 
.account_w { display:block; margin:106px 30px 0 0;}
.account_w li { display:block;color:#999; line-height:1.2em}
/*//20180820 텍스트영역 수정*/


.btn_1to1 {display:inline-block; background:#f9f9f9; height:34px; width:296px; line-height:34px; font-size:12px; color:#333; border:0px solid #d9d9d9; text-align:center; font-weight:normal}
.btn_1to1:hover{color:#ff4c4d;}
.btn_1to1_2 {display:inline-block; background:#f9f9f9; height:28px; width:220px; line-height:28px; font-size:14px; color:#01b7ac; border:1px solid #d9d9d9; text-align:center; font-weight:600}
.btn_1to1_2:hover{color:#000}
.btn_toktok {display:inline-block; background:#56c13f; height:28px; width:176px; line-height:28px; font-size:14px; color:#fff; border:1px solid #56c13f; text-align:center; font-weight:600}
.btn_toktok img { margin:5px 6px 0; }
.btn_toktok:hover{color:#000}
.btn_licensee {display:block; background:#f4f4f4; height:18px; width:90px; line-height:18px; font-size:12px; border:1px solid #d9d9d9; text-align:center;}
.btn_licensee:hover{color:#000}
.notice_w { display:block; position:relative; }
.notice_w li { display:block;color:#999; line-height:1.4em}
.notice_txt { overflow:hidden;display:block; width:300px; font-size:13px; font-weight:normal; line-height:1.7em;white-space:nowrap;text-overflow:ellipsis;} /*20180820 공지사항 텍스트영역 수정*/
.notice_txt:hover{color:#000} 

.sns_img img { border:1px solid #d9d9d9}
.sns_img img:hover{border:1px solid #000} 
.inner_btm {overflow:hidden; display:block;width:1100px; background:none;margin:0px auto;border-top:1px solid #e9e9e9 }
.inner_btm_t { display:block; height:40px; line-height:40px; text-align:center; color:#999}

/*어워드 */
.award {display:block; width:1100px;margin:0px auto;height: 90px }
.award ul {overflow:hidden;width:1100px;margin:0px auto; text-align: center}
.award li {display: inline-table; margin-right:15px;font-size:12px;}
.award li a{ margin-right:10px; height:90px;line-height:70px;color:#aaa;font-weight:normal;text-align: center}
.award li img { margin:17px 10px 0 0;}
.award li a:hover{color:#000}
/* //어워드*/

/*20180820 고객센터 이미지*/
.cs_menu_box {width:400px;height:57px;float:left;margin-top:0px}
.cs_menu_lst li {float:left;width:110px;text-align:center;margin-bottom:1px}
.cs_menu_lst li a {overflow:hidden;display:block;font-size:12px;color:#333;letter-spacing:-0.01em;padding:4px 0px 5px; border:1px solid #e1e1e1}
.cs_menu_lst li a span.ic{display:block;width:50px;height:50px;margin:0 auto -8px;text-align:center;background:url(../../img/main/ico_cs_btn.png) no-repeat}
.cs_menu_lst li a:hover,.cs_menu_lst li a:focus{color:#ff4c4d;}
.cs_menu_lst li.q1.b1{height:64px;border-right:0px solid #ccc;border-bottom:0px solid #ccc;}
.cs_menu_lst li.q1 a span.ic{background-position:1px -7px}
.cs_menu_lst li.q1 a:hover span.ic,.cs_menu_lst li.q1 a:focus span.ic{background-position:-49px -7px}
.cs_menu_lst li.q2.b2{height:64px;border-bottom:0px solid #ccc;padding-bottom:3px}
.cs_menu_lst li.q2 a span.ic{background-position:0px -56px}
.cs_menu_lst li.q2 a:hover span.ic,.cs_menu_lst li.q2 a:focus span.ic{background-position:-50px -56px}
.cs_menu_lst li.q3.b3{height:64px;border-right:0px solid #ccc;padding-bottom:0px}
.cs_menu_lst li.q3 a span.ic{background-position:0px -112px}
.cs_menu_lst li.q3 a:hover span.ic,.cs_menu_lst li.q3 a:focus span.ic{background-position:-50px -112px}
/*//20180820 고객센터 이미지*/


/*-----//20180618 footer UI개편-----*/

/* bestlist */
.sub_list_wrap {display:block;position:relative;width:1101px;margin:10px auto 0; *zoom:1}
.sub_list_box {display:block;position:relative;background:none;margin:0 13px 50px 0;padding:18px 0 30px;border-bottom:1px solid #999;border-top:0px solid #e6e6e6;text-align:left;color:#4d4d4d;font-size:22px;font-weight:600;letter-spacing:-0.05em;}

/*20190212 다신배송 정렬라인 추가*/
.sub_list_ds_box {display:block;position:relative;background:none;margin:0 13px 30px 0;padding:20px 0 40px;border-bottom:1px solid #ccc;border-top:0px solid #e6e6e6;text-align:left;color:#4d4d4d;font-size:22px;font-weight:600;letter-spacing:-0.05em;}
.bn_delivery_tit {margin:0 auto;}
/*//20190212 다신배송 정렬라인 추가*/

/* 20160330 이용약관외 타이틀 */
.sub_etc_box {display:block;position:relative;background:none;margin:0 13px 40px 0;padding:18px 0 40px;border-bottom:1px solid #777;border-top:0px solid #e6e6e6;text-align:left;color:#000;font-size:22px;font-weight:600;letter-spacing:-0.05em;}
/* //20160330 이용약관외 타이틀 */

.sub_list_tit {display:inline;padding-bottom:30px;text-align:left;color:#4d4d4d;font-size:23px}

.sub_depth {float:left;padding-top:0px}
.sub_depth li{float:left;padding-right:24px;margin-right:20px;background:url('/img/ico/bar_13.gif') no-repeat right 4px}
.sub_depth li.last {background:none;color:#fa4d4d}
.sub_depth li.alone {background:none}
.sub_depth li a{float:left;color:#777;font-family: 'Nanum Gothic','맑은 고딕','돋움',sans-serif;font-size:14px;font-weight:600}
/* bestlist */

/*20190212 sort*/
.sort {position:relative;top:0px;color:#000;font-size:13px;font-weight:normal;text-align:left;margin:10px 0px 0 0}
.sort_tit {color:#1b7ece;font-size:15px}
.sort_right_box {position:relative;display:inline}
.sort_right {float:right;}
.sort_right li{float:left;padding-right:18px;margin-right:18px;background:url('../../img/ico/bar_9.gif') no-repeat right 3px}
.sort_right li:last-child{margin-right:0;padding-right:0;background:none}
.sort_right li a{float:left;color:#666;font-size:1.1em;font-weight:normal}
.sort_right li a:hover {display:block;color:#fa4d4d;font-size:1.1em;font-weight:normal}
.sort_right li .sort_on {display:block;color:#fa4d4d;font-size:1.1em;}
.sort_right li.last {background:none;padding:0;margin:0;}
/*//20190212 sort*/

/* 서브메뉴 */
.submn_box {margin:20px 0 34px}
.submn {overflow:hidden;padding:1px 0 0 1px}
.submn li{float:left;width:270px;height:42px;border:1px solid #ddd;background:#fafafa;margin-left:-1px;margin-top:-1px}
.submn li:first-child{}
.submn li a{float:left;overflow:hidden;width:100%;height:100%;line-height:42px;text-indent:14px;color:#666;font-size:13px}
.submn li a:hover {color:#fa4d4d;height:41px;background:#fff;border-bottom:1px solid #fa4d4d}
.submn li.on a {position:relative;height:41px;background:#fff;border-bottom:1px solid #fa4d4d;color:#fa4d4d;font-weight:bold}
/* //서브메뉴 */

/* paging */
.module_paging{position:relative;width:100%;text-align:center;padding:30px 0}
.module_paging_n {position:relative;width:800px;text-align:center;padding:30px 300px 30px 0px}/*20190418 페이징영역 수정*/
.paging_wrap{display:inline-block;text-align:center}
.paging_wrap li{display:inline-block;position:relative;z-index:2;margin-left:-1px}
.paging_wrap li a{display:inline-block;border:1px solid #dfdfdf;font-size:12px;font-weight:700;color:#888;height:14px;line-height:14px;padding:6px;text-align:center;min-width:16px}
.paging_wrap li a:hover{background:#fe5859;color:#fff;border-radius:3px;border:1px solid #fe5859;}
.page_list_first a{border-top-left-radius:3px;-webkit-border-top-left-radius:3px;-moz-border-top-left-radius:3px;border-bottom-left-radius:3px;-webkit-border-bottom-left-radius:3px;-moz-border-bottom-left-radius:3px}
.page_list_last a{border-top-right-radius:3px;-webkit-border-top-right-radius:3px;-moz-border-top-right-radius:3px;border-bottom-right-radius:3px;-webkit-border-bottom-right-radius:3px;-moz-border-bottom-right-radius:3px}
.paging_wrap li.page_list_alone a{border-radius:3px;-webkit-border-radius:3px;-moz-border-radius:3px}
.paging_wrap li.page_this{z-index:3}
.paging_wrap li.page_this a{cursor:default;color:#fff;background:#fe5859;border-color:#fe5859;border-radius:2px;}
.paging_wrap li.page_this a:hover{background:#fe5859}
.paging_wrap li{color:#bfc4c8}
.paging_wrap li.btn_first a,.paging_wrap li.btn_last a{border-radius:3px;-webkit-border-radius:3px;-moz-border-radius:3px}
.paging_wrap li.btn_next,.paging_wrap li.btn_prev{margin-top:0px;letter-spacing:-3px; vertical-align:top; text-align:center}
.paging_wrap li.btn_next a,.paging_wrap li.btn_prev a{position:relative;top:0px;border-radius:3px;-webkit-border-radius:3px;-moz-border-radius:3px}
/* //paging */


/**********************************************************/
/***************** 2차작업 시작 2016.03.03 ****************/
/**********************************************************/

/* 상세상품navi */
.view_navi_box {display:block;position:relative;background:none;padding-top:30px;text-align:left;color:#4d4d4d;font-weight:600;letter-spacing:-0.05em;}
.view_navi_tit {display:inline;padding-bottom:30px;text-align:left;color:#4d4d4d;font-size:18px}

.view_navi {float:left;padding-top:0px}
.view_navi li{float:left;padding-right:20px;margin-right:14px;background:url('/img/ico/bar_16.gif') no-repeat right 2px}
.view_navi li.last {background:none;color:#000}
.view_navi li a{float:left;color:#777;font-family: 'Nanum Gothic','맑은 고딕','돋움',sans-serif;font-size:14px;font-weight:600}
/* //상세상품navi */

/* 상세상품 이미지 */
.view_wrap {margin:0px auto;width:1100px;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.view_top_box {display:inline-block;margin-top:-10px;border:1px solid #d8d8d8}
.view_top_img {display:inline-block;position:relative;float:left;left:0px;top:0;width:499px;margin-right:0px;border-right:none;border-bottom:none;z-index:60}
.view_top_img img {display:block;width:100%;height:100%;}
.v_topimg {position:relative;display:block;width:499px;height:590px;}
.v_topimg img {width:499px;height:499px;background:#eeedec url(/img/common/view_thum_bg.gif) center center no-repeat}

.sns_b_wrap {text-align:center;margin-top:10px}
.sns_box {width:500px;padding-top:15px}
.sns_box li {display:inline-block;width:44px;margin-right:10px}
.sns_box li.last {margin-right:0px}
.sns_box img {width:40px;height:40px;vertical-align:middle}

.ico_v_dsd_box {padding:0px 0 10px}
.ico_v_dsd {padding:3px 8px 4px;background:#aaacaf;color:#fff;font-size:12px;letter-spacing:-0.05em}
/* //상세상품 이미지 */

/* 상세상품 텍스트 및 구매금액 */
.v_top_txt_box {position:relative;width:515px;background:#fbfbfb;border-left:1px solid #d8d8d8;padding:30px 40px 60px;font-family: Verdana, "NanumBold", "Malgun Gothic", sans-serif;} /* 20160405 상세페이지 90%축소시 화면틀어지는부분 수정*/
.v_top_name {padding:5px 0 0 0;color:#000;font-size:30px;font-weight:800;letter-spacing:-0.08em}
.v_top_txt {color:#333;font-size:18px;line-height:1.6em;padding:15px 0 18px;border-bottom:1px solid #e1e1e1} /* 20160518 2depth 텍스트크기 수정 */
.v_top_info {overflow:hidden;position:relative;margin:10px 0 0 0;padding:0 0 14px 80px; line-height:1.85;letter-spacing:-0.1em;border-bottom:1px solid #ddd}

.v_top_info dt,
.v_top_info dd {padding:3px 0 0 0;}
.v_top_info dt {clear:both;position:relative;left:-80px;padding:3px 0 0 0;margin-right:-80px;float:left;color:#999;font-size:13px}
.v_top_info dd {position:relative;float:right;width:100%;font-size:14px;color:#555}

/* 20160526 네이버지식쇼핑으로 인해 여백값 수정 */
.v_top_price {position:relative;top:-2px;margin-right:10px;text-decoration:line-through;color:#666;font-size:15px;vertical-align:top;font-weight:normal}
.v_top_sale {position:relative;top:-6px;color:#000;font-size:20px;font-weight:normal;vertical-align:top}
/* 20160526 네이버지식쇼핑으로 인해 여백값 수정 */

.btn_ds_delive {margin-left:15px;padding:4px 8px;font-size:12px;background:#fff;border:1px solid #ccc;color:#51c2ae;letter-spacing:-0.02em;font-weight:normal}
.btn_ds_delive:hover {padding:4px 8px;color:#000;border:1px solid #000;letter-spacing:-0.02em;transition:all .5s}

.v_top_select_box {position:relative;display:inline-block;height:40px;line-height:40px;vertical-align:top}
.v_top_select {overflow:hidden;position:relative;padding:10px 10px;background:#fff none repeat scroll 0 0;width:430px;height:40px;line-height:40px;border:1px solid #c0c0c0;color:#333;font-size:12px;vertical-align:top}
.v_top_sel_arrow {position:absolute;right:1px;top:1px;border-left:0px solid #c0c0c0;width:34px;height:38px;background:#fff url("/img/ico/select_box1.png") no-repeat 4px 5px;overflow:hidden;pointer-events:none;}
.v_top_p_box {display:block;margin:15px 10px;font-size:17px;color:#333;letter-spacing:-0.05em}
.v_t_price {position:relative;top:2px;padding-left:10px;font-size:32px;font-weight:bold;color:#fa4d4d}

/* 20160309 찜하기 on 버튼 추가*/
.v_top_btn_wrap {display:inline-block;text-align:center;margin:40px 0 60px}
.v_btn_order, .v_btn_cancel, .v_btn_keep, .v_btn_keep_on, .v_btn_soldout, .v_btn_soldout2, .v_btn_soldout3 {display:inline-block;color:#fff;font-weight: 600;font-size:16px;height:50px;line-height:50px;}
.v_btn_order {width:193px;background:#fe5155}
.v_btn_cancel {width:183px;background:#59c9a8}
.v_btn_keep {width:115px;height:48px;line-height:48px;background:#fff;border:1px solid #888;color:#777}
.v_btn_soldout {width:193px;background:#909095;color:#e0e0e0}
.v_btn_soldout2 {width:183px;background:#909095;color:#e0e0e0}
.v_btn_soldout3 {width:117px;background:#909095;color:#e0e0e0}
.v_btn_keep_on {padding-left:20px;width:95px;height:48px;line-height:48px;background:#fff url("/img/ico/ico_keep.gif") no-repeat 24px 18px;border:1px solid #888;color:#fe5155}
.v_btn_order:hover {width:191px;height:48px;background:#fff;color:#f94549;border:1px solid #fe5155;line-height:48px}
.v_btn_cancel:hover {width:181px;height:48px;background:#fff;color:#f94549;border:1px solid #fe5155;line-height:48px}
.v_btn_keep:hover {width:115px;height:48px;background:#fff;color:#f94549;border:1px solid #fe5155;line-height:48px}
.v_btn_keep_on:hover {padding-left:20px;width:95px;height:48px;line-height:48px;background:#fff url("/img/ico/ico_keep.gif") no-repeat 24px 18px;border:1px solid #fe5155;color:#f94549}
/* //20160309 찜하기 on 버튼 추가*/

/* //상세상품 텍스트 및 구매금액 */

/* 20160517 상세정보 텝수정 */
.product_detail_content {position:relative;margin-top:54px;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.pdt_detail_tab {position:relative;height:54px;background:#fff;z-index:10;}
.pdt_detail_tab_inner {position:relative;height:50px;border-top:3px solid #555; border-bottom:1px solid #ccc;background-color:#f8f8f8;}
.pdt_detail_tab_inner .pdt_item {position:relative;display:block;width:168px;height:50px;float:left;margin-right:-1px;}
.pdt_detail_tab_inner .fir a {width:168px;border-left:none;border-right:1px solid #ccc;}
.pdt_detail_tab_inner a {display: block;width:167px;height:32px;padding:18px 0 0 0;color:#666;font-size:15px;border-right:1px solid #ccc;text-align:center;line-height:1.0;} /* 20160518 상세정보텝 텍스트크기 수정 */
.pdt_detail_tab_inner .fir a:hover{width:166px;border-left:none;border-left:1px solid #ccc;}
.pdt_detail_tab_inner a:hover{width:166px;background:#fff;color:#000;border-bottom:1px solid #fff;border-left:1px solid #ccc;;font-weight:bold;}
.pdt_detail_tab_inner .on a {width:166px;background:#fff;color:#000;border-bottom:1px solid #fff;border-left:1px solid #ccc;;font-weight:bold;}
.pdt_detail_tab_inner .on a:hover {width:166px;border-left:none;border-left:1px solid #ccc;font-weight:bold;color:#000}
.pdt_detail_tab_inner .num {font-family:Vernada;font-weight:bold;color:#fa4d4d}
.pdt_detail_section {position:relative;padding-top:30px} /*20170829 padding-top:60px 에서 30px로 줄임*/
.pdt_detail_section img {display:block;margin:0 auto;max-width: 100%;}

/* 20160330 푸터 공지사항 */
.footer_detail_section {position:relative;padding-top:30px}
.footer_detail_section img {display:block;margin:0 auto;max-width: 100%;}
/* //20160330 푸터 공지사항 */
/* //20160517 상세정보 텝수정 */

/* 구매정보 */
.pdt_policy_tit {text-align:center;color:#333;font-size:24px;font-weight:600; letter-spacing:-0.05em}
.list_wrap {position:relative;margin:36px 50px;border-bottom:1px solid #ccc}
.pdt_p_tit {height:42px;background:#777;text-align:center;color:#fff;font-size:16px;font-weight:600;letter-spacing:-0.01em;line-height:42px}

.pdt_p_box {position:relative;margin:0}
.pdt_p_box .tbl {border-bottom:1px solid #ccc;width:100%;}
.pdt_p_box .tbl tr.last th, .pdt_p_box .tbl tr.last td {border-bottom:1px solid #666}
.pdt_p_box .tbl th {color:#222;background:#eee;border-bottom:1px solid #ccc;font-size:13px;text-align:center;vertical-align:middle}
.pdt_p_box .tbl td {position: relative;border-bottom:1px solid #ccc;color:#333;padding: 10px 20px}
.pdt_p_txt {position:relative;padding:15px;line-height:1.7em;font-size:16px;color:#585858} /* 20160518 구매정보 텍스트크기 수정 */
.pdt_p_txt li {list-style-type:disc;list-style-position:outside;}
/* //구매정보 */

/* 옵션선택시 */
.p_option_wrap {width:100%;position:relative;left:0;padding-top:2px;z-index:7}
.p_optionbox {display:table;width:100%;background:none;border-top:0px solid #cdcccc;border-bottom:0px solid #cdcccc;text-align:left}
.p_optionmn {display:block;padding:10px 12px;background:#fff;color:#333;border:1px solid #bbb;font-weight:normal;letter-spacing:-0.05em}
.p_optionmn:hover {color:#fe696c}

/* 20160309 옵션상품 일시품절일 경우 */
.p_op_soldout {display:block;padding:10px 12px;background:#fff;color:#999;border:1px solid #bbb;font-weight:normal;letter-spacing:-0.05em}
.p_opt_lst_soldout {display:block;padding:10px 14px;background:fff;border:1px solid #c8c8c8;border-top:none;font-size:1em;color:#999}
/* //20160309 옵션상품 일시품절일 경우 */

.ico_select_arrow {float:right; position:relative;top:-2px;right:0px;}
.ico_select_arrow img {border:none;vertical-align:middle}

.p_option_lisbox {position:relative;padding:0px;margin:0;background:#fff}
.p_option_list_on {display:block;padding:10px 14px;background:fff;border:1px solid #c8c8c8;border-top:none;font-size:1em;color:#000}
.p_option_list_on:hover {color:#fe696c}
.p_option_list {display:block;padding:10px 14px;background:fff;border:1px solid #c8c8c8;border-top:none;font-size:1em;color:#555}
.p_option_list:hover {color:#fe696c}
.ico_money_op {display:inline;background:#f1f1f1;position:relative;top:-1px;margin-left:10px;padding:0px 4px 3px 3px;text-align:center;border:1px solid #d1d1d1;color:#666;vertical-align:middle;font-size:11px;letter-spacing:-0.05em}

.opt_p_box {position:relative;display:block;margin:20px 0 0px;font-family: Verdana, "NanumBold", "Malgun Gothic", sans-serif;}
.opt_p_box .tbl tr {position:relative;display:inline-block;background:#e7e8e9;padding:11px 15px 4px;margin-bottom:10px;border:1px solid #ddd;width:483px;vertical-align:middle} /* 20160602 옵션선택영역 수정1 */
.opt_p_box .tbl td {overflow:hidden;color:#333;text-align:left;vertical-align:middle}

/* 20160602 옵션선택영역 수정2 */
.opt_box {display:inline-block;width:260px;}
.opt_box2 {display:inline-block;width:80px;}
.opt_box3 {display:inline-block;width:124px;} /*20170621 옵션금액영역 수정*/
.opt_box4 {display:inline-block;width:36px}
/* //20160602 옵션선택영역 수정 */

.opt_txt_box {overflow:hidden;position:relative;font-family: Verdana, "NanumBold", "Malgun Gothic", sans-serif}
.option_txt {display:inline-block;margin-top:0px;max-width:220px;font-size:14px;color:#000;line-height:1.5em;letter-spacing:-0.05em;text-align:left;text-overflow:ellipsis;text-overflow:-o-ellipsis-lastline;-webkit-line-clamp:3;white-space:normal;-webkit-box-orient:vertical;word-wrap:break-word;word-break:break-all;white-space:normal;overflow:hidden; vertical-align:top}
.ico_money_box {display:inline}
.ico_money {position:absolute;margin:3px 0 0 8px;height:14px;padding:0 4px 1px 2px;line-height:14px;text-align:center;background:#fff;border:1px solid #bbb;font-size:11px;color:#777;letter-spacing:-0.05em;vertical-align:middle}
.option1_del {float:right;margin:0}
.option1_del img {border:none;vertical-align:middle;border:3px solid #e7e8e9}
.option1_del img:hover {background:#d9d9d9;border:3px solid #d9d9d9}

.option_price {float:right;display:inline;font-size:15px;color:#000;font-weight:600; text-align:right;font-family: Verdana, "NanumSBold", "Malgun Gothic", sans-serif;} /*20170621 옵션금액 텍스트사이즈 수정*/
/*
.option1 {float:right;overflow:hidden;display:inline;vertical-align:middle;font-family: Verdana, "NanumSBold", "Malgun Gothic", sans-serif;}
.option1 .price {display:inline-block;width:52px;height:35px;line-height:35px;background:#fff;border:1px solid #dadada;font-size:1.1em;color:#000;font-weight:bold;text-align:center;vertical-align:middle}
*/
/*20170428 옵션수량 영역수정*/
.option1 {float:right;overflow:hidden;display:inline;vertical-align:middle;font-family: Verdana, "NanumSBold", "Malgun Gothic", sans-serif;}
.option1 .price {display:inline-block;width:52px;height:35px;line-height:35px;margin:0px -3px 0 0;background:#fff;border:1px solid #dadada;font-size:1.1em;color:#000;font-weight:bold;text-align:center;vertical-align:middle;}
/*//20170428 옵션수량 영역수정*/

.option1 .plus {float:right;display:inline-block;height:17px;line-height:17px;padding:0px 6px;background:#fff;border:1px solid #dadada;border-left:none;font-size:6px;color:#606060;font-weight:bold;text-align:center}
.option1 .plus:hover, .option1 .mius:hover {background:#f0f0f0}
.option1 .mius {float:right;display:inline-block;height:17px;line-height:17px;padding:0px 6px;margin:-18px 0 0 0px;background:#fff;border:1px solid #dadada;border-left:none;border-top:none;font-size:6px;color:#606060;font-weight:bold;text-align:center}
.option1 img { vertical-align:middle}

/*20170621 수정 옵션수량 직접입력*/
.price_input {display:inline-block;font-size:1em; vertical-align:middle; text-align:center;margin:-1px -9px 0 0; border: 0px solid #dadada;-webkit-appearance:none;}
.price_input input {display:inline-block;font-weight:bold;color:#000; width:58px;height:35px;line-height:30px;margin:-3px 0 0 -10px;font-size:1em; text-align:center;vertical-align:middle;font-family: Verdana, "NanumSBold", "Malgun Gothic", sans-serif;}
.inputno2 {overflow:hidden; border-style:none;border-top-width:0px;border-bottom-width:0px;background:none;outline:none;}
.price_input[type=number]::-webkit-input-placeholder {color:#444;}
.price_input[type=number]::-moz-placeholder {color:#444}
.price_input[type=number]:focus {;color:#444;outline: medium none;}

.price_input2 {display:inline-block;font-size:1em; vertical-align:middle; text-align:center;margin:-11px -9px 0 0; border: 0px solid #dadada;-webkit-appearance:none;}
.price_input2 input {display:inline-block;font-weight:bold;color:#000; width:58px;height:28px;line-height:28px;margin:7px 0 0 -10px;font-size:1em; text-align:center;vertical-align:middle;font-family: Verdana, "NanumSBold", "Malgun Gothic", sans-serif; }
.price_input2[type=number]::-webkit-input-placeholder {color:#444;}
.price_input2[type=number]::-moz-placeholder {color:#444}
.price_input2[type=number]:focus {;color:#444;outline: medium none;}

/*firefox*/
.price_input input[type=number]::-webkit-outer-spin-button {-webkit-appearance: none; margin: 0;} 
.price_input input[type=number]::-webkit-inner-spin-button {-webkit-appearance: none; margin: 0;} 
.price_input input[type=number] {-moz-appearance: textfield; } 
.price_input2 input[type=number]::-webkit-outer-spin-button {-webkit-appearance: none; margin: 0;} 
.price_input2 input[type=number]::-webkit-inner-spin-button {-webkit-appearance: none; margin: 0;} 
.price_input2 input[type=number] {-moz-appearance: textfield; } 
    
/*chrome*/ 
.price_input input[type=number]::-webkit-inner-spin-button {-webkit-appearance: none;-moz-appearance: none; appearance: none; margin: 0; }     
.price_input input[type=number]::-webkit-outer-spin-button {-webkit-appearance: none;-moz-appearance: none; appearance: none; margin: 0; } 
.price_input2 input[type=number]::-webkit-inner-spin-button {-webkit-appearance: none;-moz-appearance: none; appearance: none; margin: 0; }     
.price_input2 input[type=number]::-webkit-outer-spin-button {-webkit-appearance: none;-moz-appearance: none; appearance: none; margin: 0; }    
 
/*//20170621 수정 옵션수량 직접입력*/

/* //옵션선택시 */

/* 연관상품 */
.relative_box_wrap {position:relative;width:1101px;margin:10px auto 0; *zoom:1}
.relative_wrap {position:relative;margin-top:15px}
.relative_lis_tit {position:relative;margin-bottom:40px;padding-left:40px;background:#f8f8f8;height:52px;line-height:52px;border-top:3px solid #555;border-bottom:1px solid #ccc;text-align:left;color:3b3b3b;font-size:15px;font-weight:normal}
.relative_list {overflow:hidden;position:relative}
.relative_list li {position:relative;display:inline-block;width:266px;height:356px;margin:0 12px 70px 0;float:left;vertical-align:top}
.relative_list li.last {width:266px;margin-right:0px;float:left;vertical-align:top}

.grid_r {position:relative;width:262px;height:356px;box-sizing:border-box;z-index:120}
.grid_r:hover .tmb_hover_r {overflow:hidden;background:none;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-bottom:none;width:262px;height:356x;filter:alpha(opacity=100);opacity:1;transition:all .01s}
.grid_r:hover .tmb_hover_r2 {overflow:hidden;background:none;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-top:none;width:262px;height:356x;filter:alpha(opacity=100);opacity:1;transition:all .01s}
/* //연관상품 */


/**********************************************************/
/***************** 3차작업 시작 2016.03.09 ****************/
/**********************************************************/

/* 상품후기 */
.p_comment {margin:0; width:1100px}
.p_com_tit_box {overflow:hidden;position:relative;padding:20px 0 20px;letter-spacing:-0.01em}
.p_com_tit {color:#000;font-size:26px;font-weight:600} /* 20160518 상세설명 타이틀 폰트크기 수정 */
.p_com_btn {float:right;display:inline;margin-top:3px;}
.p_btn_write {padding:9px 28px;background:#57d0ac;color:#fff;font-size:16px;border:1px solid #57d0ac;font-weight:600} /* 20160518 버튼 폰트크기 수정 */
.p_btn_write:hover {background:#fff;color:#46bf9b;border:1px solid #57d0ac;}

.tbl_com{width:100%;border-top:2px solid #777;border-bottom:1px solid #d9d9d9;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.tbl_com tr.tbl_lst:hover {background:#f9f9f9}
.tbl_com th{height:42px;line-height:42px;font-size:13px;background:#fff url('/img/ico/bar_9.gif') no-repeat left center;border-bottom:1px solid #d9d9d9;}
.tbl_com th:first-child{background-image:none}
.tbl_com th.last{}
.tbl_com td{text-align:center;line-height:1.6em;padding:9px 0;border-top:1px solid #d9d9d9;color:#444;font-size:15px;font-weight:normal} /* 20160518 상품후기 폰트크기 수정 */
.tbl_com td a:hover{text-decoration:underline}

/* 20160411 전체상품후기 */
.tbl_com .tbl_lst_img img {width:80px;border:none}
/* //20160411 전체상품후기 */

.tbl_com tr.notice td{background:#f9f9f9}
.tbl_com .subject{text-align:left;padding-left:10px} 
.tbl_com .subject:first-child{padding-left:0}

/* 20160317 table 텍스트 수정, 삭제, 이미지첨부 기능추가 */
.tbl_com .s_text{position:relative;text-align:left;padding:15px 10px} 
.s_text>.btns{position:absolute;right:0;top:15px}

/* 20160518 상품후기 수정삭제버튼 폰트크기 수정 */
.s_text>.btns a{font-size:14px;color:#8d8d8d;display:inline-block}
.s_text>.btns a:first-child{padding-right:10px;margin-right:5px;background:url('/img/ico/bar_9.gif') no-repeat right 8px} 
/* //20160518 상품후기 수정삭제버튼 폰트크기 수정 */

.ico_pp {display:inline-block;position:relative;top:3px;padding-left:5px;}
.ico_pp img {width:16px;height:14px;border:none}
/* //20160317 table 텍스트 수정, 삭제, 이미지첨부 기능추가 */

.tbl_com .s_text:first-child{padding-left:0}

.tbl_com .nick_box {padding-left:0px;text-align:left}
.tbl_com .nick {position:relative;left:10px;height:42px;text-align:left}
.tbl_com .ico_nick_box {position:relative;left:10px;display:inline-block}
.tbl_com .ico_p {overflow:hidden;width:35px;height:35px;-webkit-border-radius:17px;-moz-border-radius:17px;border-radius:17px;}

/* 20160411 상세상품후기 썸네일이미지 */
.ico_v_p {overflow:hidden;width:38px;height:38px;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;}
.ico_v_nick_box {position:relative;left:10px;margin-top:4px;display:inline-block}
.tbl_v_nick_box {margin:-35px 0 0 60px;}
.tbl_v_nick_txt {overflow:hidden;display:block;width:94%;color:#666;text-align:left;font-size:13px;text-overflow:ellipsis;white-space:nowrap;letter-spacing:-1px} 
/* //20160411 상세상품후기 썸네일이미지 */

.tbl_com .ico_g {margin-top:-10px;}

.tbl_nick_box {margin:-38px 0 0 66px;}
.tbl_nick_txt {overflow:hidden;display:block;width:94%;color:#666;text-align:left;font-size:13px;text-overflow:ellipsis;white-space:nowrap;letter-spacing:-1px} 
.star_box {font-size:17px;color:#000}
.star_box:hover {color:#000;}

/* 20160325 상품후기 이미지가 있을경우 */
.p_comment_img {position:relative;padding-top:60px}
.p_comment_img img {display:block;margin-left:0px;max-width:54%;}
/* //20160325 상품후기 이미지가 있을경우 */

/* 댓글 */

/* //상품후기 */
/*20190429a 상품상세 상단후기*/
.tbl_t_reply_w { overflow:hidden;display: inline-block;width:801px; margin:40px 0px 10px;}
.tbl_t_reply_w2 { overflow:hidden;display: block;width:1100px;border-top:1px solid #e1e1e1; margin:40px 0px 20px;}
.tbl_top_reply {width:100%;border-bottom:1px solid #e5e5e5;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.tbl_top_reply tr.tbl_lst:hover {background:#f9f9f9}
.tbl_top_reply th {height:42px;line-height:42px;font-size:13px;background:#fff url('/img/ico/bar_9.gif') no-repeat left center;border-top:0px solid #e1e1e1e1;}
.tbl_top_reply th:first-child{background-image:none}
.tbl_top_reply th.last{}
.tbl_top_reply td{text-align:center;line-height:1.6em;padding:9px 0;border-top:1px solid #e5e5e5;color:#444;font-size:15px;font-weight:normal} 
.tbl_top_reply td a:hover{text-decoration:underline}
.tbl_top_reply .subject { overflow:hidden;display:block; vertical-align:middle;text-align:left;padding:11px 10px;text-overflow:ellipsis;white-space:nowrap;}
.tbl_top_reply .subject:first-child{padding-left:0}
.ico_t_photo {display:inline-block;position:relative;top:3px; text-align:center;}
.ico_t_photo img {border:none}

.tbl_lst_vs { position:relative;display:block;margin:10px 18px;}
.tbl_lst_vs2 { position:relative;display:block;margin:10px 30px;}
.ttop_reply_txts {display:block;padding-top:15px; font-size:15px; line-height:1.8em; font-weight:normal; color:#000; text-align:left;}
/*//20190429a 상품상세 상단후기*/

/* 댓글 */
.comment_tit {margin-top:40px;text-align:left;color:#000;font-size:16px;font-weight:600;}
.ico_spe {position:relative;top:-2px;color:#fff;font-size:13px;background:#46bf9b;padding:4px 7px 6px 10px;margin:0px 8px 0 0;border-radius:17px}
.comment_w {background:#f3f3f3;border:1px solid #e6e7e8;padding:15px 20px 20px;position:relative;margin-top:12px}
.comment_secret {height:20px;margin-bottom:10px}
.comment_secret label{color:#606060;font-size:12px;vertical-align:top;}
.comment_w textarea{width:848px;height:63px;padding:10px;border:1px solid #d1d1d1;border-radius:3px;color:#666;font-size:12px;vertical-align:top;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.comment_w .textarea2{width:548px;height:63px;padding:10px;border:1px solid #d1d1d1;border-radius:3px;color:#666;font-size:12px;vertical-align:top;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.btn_regist_box {position:absolute;right:23px;top:76px;} /* 20160518 입력버튼 위치수정 */
.btn_regist {overflow:hidden;padding:33px 30px;background:#b6b7be;border:1px solid #9ea0a4;border-radius:3px;color:#fff;font-size:14px;font-weight:normal }
.btn_regist:hover {background:#46bf9b;border:1px solid #46bf9b;border-radius:3px;color:#fff;font-size:14px;font-weight:normal }
.comment_secret .chk{vertical-align:middle; po}
.comment_secret .chk2{vertical-align:middle; position:relative; top:-1px}

.comm_sort_tit {position:relative;height:36px;border-bottom:1px solid #cecece;margin-top:15px}
.comm_tit {position:relative;float:left;width:91%}
.comm_tit em{line-height:35px;padding-left:0}
.btn_sort {position:absolute;top:10px;right:0px;width:105px}
.btn_sort a{font-size:12px;color:#8d8d8d}
.btn_sort a:first-child{padding-right:10px;background:url('/img/ico/bar_9.gif') no-repeat right 3px;margin-right:5px}
.btn_sort .on {font-weight:600;color:#46bf9b}
.btn_sort .on img{margin:0px 5px 0 0;display:inline-block;vertical-align:middle}

.comment_list li{border-bottom:1px solid #efefef;padding:20px 0 0 0;position:relative}
.com_lst_pic {position:absolute;top:20px;left:0}
.c_img_pic {display:inline-block}
.c_img_pic {width:48px;height:48px;-webkit-border-radius:24px;-moz-border-radius:24px;border-radius:24px;overflow:hidden}
.c_img_ico{position:absolute;left:-4px;top:36px}

.com_txt{padding-left:75px;margin-bottom:15px}
.com_txt>strong{font-weight:bold;color:#383838;display:inline-block;margin-right:10px}
.com_txt>em{font-size:12px;color:#9b9b9b;display:inline-block}
.com_txt>p{margin-top:10px;font-size:12px;line-height:1.4} 
.txt-secret{padding-left:17px;background:url('/img/ico/ico_lock.gif') no-repeat left center;vertical-align:middle}

.clfix:after{content:".";display:block;height:0px;clear:both;visibility:hidden}
.clfix{display:inline-block}
.clfix{display:block}
.comment-list>ul>li{border-bottom:1px solid #efefef;padding:20px 0 0 0;position:relative}
.comment-list>ul>li>.pic{position:absolute;top:20px;left:0}
.comment-list>ul>li>.pic em{display:inline-block}
.comment-list>ul>li>.pic em img{width:48px;height:48px;-webkit-border-radius:24px;-moz-border-radius:24px;border-radius:24px;behavior:url('/inc/js/PIE.htc');overflow:hidden}
.comment-list>ul>li>.pic .ico{position:absolute;left:-6px;top:40px;width:57px}
.comment-list>ul>li>.txt{padding-left:75px;margin-bottom:15px}
.comment-list>ul>li>.txt>strong{font-size:13px;font-weight:bold;color:#383838;display:inline-block;margin-right:10px}
.comment-list>ul>li>.txt>em{font-size:13px;color:#9b9b9b;display:inline-block}
.comment-list>ul>li>.txt>p{margin-top:10px;font-size:14px;line-height:1.4em} /*20190924 대댓글 텍스트 폰트크기 수정*/
.comment-list>ul>li>.txt .txt-secret{padding-left:17px;background:url('/img/ico/ico_lock.gif') no-repeat left center;}
.comment-list>ul>li>.btns{position:absolute;right:0;top:20px}
.comment-list>ul>li>.btns a{font-size:12px;color:#8d8d8d;display:inline-block}
.comment-list>ul>li>.btns a:first-child{padding-right:10px;margin-right:5px;background:url('/img/ico/bar_9.gif') no-repeat right 6px}
.comment-list>ul>li>.re{padding-left:75px}
.comment-list>ul>li>.re .btn-re{color:#676767;font-size:12px;display:inline-block;padding-right:15px;background:url('/img/ico/ico_down2.gif') no-repeat right center;margin-bottom:15px}
.comment-list>ul>li>.re .btn-re strong{color:#46bf9b}
.comment-list>ul>li>.re .btn-re.open{background-image:url('/img/ico/ico_up.png')}
.comment-list>ul>li>.re .btn-re.open strong{color:#676767}
.comment-list>ul>li>.re .re-write{background:#f5f5f5;border:1px solid #f1f1f1;padding:15px 0 15px 75px;margin-left:-75px;display:none}
.comment-list>ul>li>.re .re-write>fieldset{position:relative;width:806px}
.comment-list>ul>li>.re .re-write>fieldset .secret{height:22px; padding:10px 0}
.comment-list>ul>li>.re .re-write>fieldset .secret label{font-size:12px;}
.comment-list>ul>li>.re .re-write>fieldset .secret .chk{vertical-align:middle;}
.comment-list>ul>li>.re .re-write>fieldset textarea{width:710px;height:38px;*margin:10px 75px;padding:10px;border:1px solid #d1d1d1;border-radius:3px;color:#666;font-size:12px;vertical-align:top;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.comment-list>ul>li>.re .re-write>fieldset .btn-regist2{position:absolute;right:0px;top:45px;}
.comment-list>ul>li>.re .re-write>ul{width:710px}
.comment-list>ul>li>.re .re-write>ul>li{padding:15px 0 15px 12px;background:url('/img/ico/ico_re.png') no-repeat left 22px;border-top:1px dotted #e5e5e5}
.comment-list>ul>li>.re .re-write>ul>li:first-child{border-top:0 none}
.comment-list>ul>li>.re .re-write>ul>li strong{font-weight:bold;color:#383838;display:inline-block;margin-right:10px}
.comment-list>ul>li>.re .re-write>ul>li em{font-size:12px;color:#9b9b9b;display:inline-block}
.comment-list>ul>li>.re .re-write>ul>li p{margin-top:10px;font-size:12px;line-height:1.4}

.btn_regist2_box {position:absolute;right:0px;top:62px;}
.btn_regist2 {overflow:hidden;padding:21px 20px;background:#b6b7be;border:1px solid #9ea0a4;border-radius:3px;color:#fff;font-size:14px;font-weight:normal }
.btn_regist2:hover {background:#46bf9b;border:1px solid #46bf9b;border-radius:3px;color:#fff;font-size:14px;font-weight:normal }
/* //댓글 */

/* 상품후기 작성 */
.tbl_write {width:100%;border-top:2px solid #777;border-bottom:1px solid #d9d9d9;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.tbl_write th{height:42px;line-height:42px;padding-left:25px;font-size:13px;background:#f5f5f5;border-bottom:1px solid #d9d9d9;color:#666;text-align:left}
.tbl_write th:first-child{background-image:none}
.tbl_write td{line-height:20px;padding:10px;border-top:1px solid #d9d9d9;color:#444;font-size:13px;font-weight:normal}

.p_write_select_box {position:relative;display:inline-block}
.p_write_select {overflow:hidden;padding-left:10px;background:#fff none repeat scroll 0 0;height:34px;line-height:32px;border:1px solid #c0c0c0;color:#333;font-size:15px;vertical-align:middle;letter-spacing:1px;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.p_write_sel_arrow {position:absolute;right:1px;top:1px;border-left:1px solid #e9e9e9;width:30px;height:32px;background:#fff url("/img/ico/select_box1.png") no-repeat 5px 3px;overflow:hidden;pointer-events:none}

.p_write_box {background:#fff none repeat scroll 0 0;color:#333;-moz-border-bottom-colors:none;-moz-border-left-colors:none;-moz-border-right-colors:none;-moz-border-top-colors:none;border:1px solid #c0c0c0;text-indent:8px;height:30px;line-height:30px;vertical-align:middle;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}

.p_write_btn_wrap {text-align:center;margin:40px 0 60px}
.p_w_btn_regist, .p_w_btn_cancel {display:inline-block;color:#fff;font-weight:600;font-size:17px;height:56px;line-height:56px;}
.p_w_btn_regist {width:232px;background:#fe5155}
.p_w_btn_cancel {width:232px;background:#b0b0b8}
.p_w_btn_regist:hover {width:230px;height:54px;background:#fff;color:#f94549;border:1px solid #fe5155;line-height:56px}
.p_w_btn_cancel:hover {width:230px;height:54px;background:#fff;color:#f94549;border:1px solid #fe5155;line-height:56px}
/* //상품후기 작성 */

/* 상품문의 작성 */
.qna_secret {padding-left:17px;background:url('/img/ico/ico_lock2.gif') no-repeat left center;vertical-align:middle}
/* //상품문의 작성 */

/* 장바구니 담기 팝업 */
.popwrap{position:relative;height:100%; position:fixed; width: 100%; z-index: 15000;}
.popup_box{position:relative;width:477px; height:265px;border:1px solid #c0c0c0;background-color:#fff;top:382px;left:712px}
.popup_top{position:absolute; top:12px; right:12px}

.popup_txt{text-align:center;color:#000; font-size:20px;margin-top:82px;font-family:'Nanum';letter-spacing:-0.07em}

.p_btn_wrap{display:inline-block;text-align:center;margin:33px 77px 60px}
.p_btn_cart, .p_btn_keep {display:inline-block;color:#fff;font-weight: 600;font-size:16px;height:47px;line-height:47px;}
.p_btn_cart{width:156px;background:#c0c0c0}
.p_btn_keep{width:156px;background:#fe5155}
/* //장바구니 담기 팝업 */
 
/* 20160318 한줄상품평 삭제기능 추가 */ 
.btn_line_del a {font-size:12px;color:#8d8d8d}
/* 20160318 한줄상품평 삭제기능 추가 */ 


/*********************************************************/
/********** 20160330 하단 푸터 링크 페이지 작업 **********/
/*********************************************************/

/* 이용약관 */
.agreementtxt{margin:0 40px 0 20px;color:#666;font-size:12px;line-height:1.7em;letter-spacing:0px}
.agreementtxt>ul>li{margin-top:25px}
.agreementtxt>ul>li:first-child{margin-top:0}
.agreementtxt>ul>li>strong{font-size:13px;color:#333;margin-bottom:1px;display:block}
.agreementtxt>ul>li>ul>li{text-indent:-14px;padding-left:14px}
.agreementtxt>ul>li>ul>li>ul>li{text-indent:-14px;padding-left:14px}
.agreementtxt>ul>li>ul>li>ul>li>ul>li{text-indent:-14px;padding-left:14px}
/* //이용약관 */

/* 개인정보취급방침 */
.privacy{margin:0 40px 0 20px;color:#666;font-size:12px;line-height:1.7em;letter-spacing:0px}
.privacy .box{background:#fbfbfb;border:1px solid #dfdfdf;padding:12px 20px;margin-top:6px}
.privacy>ul>li{border-top:1px dotted #bbb;padding:25px 0}
.privacy>ul>li:first-child{border-top:0 none}
.privacy>ul>li>strong{font-size:13px;color:#333;margin-bottom:1px;display:block}
.privacy>ul>li em{color:#373737;font-weight:bold}
.privacy>ul>li>ul>li{margin-top:7px}
.privacy>ul>li>ul.ty02>li{margin-top:0}
.privacy>ul>li>ul.ty02>li:first-child{margin-top:20px}
.privacy>ul>li>ul>li>ul{margin-top:2px;padding-left:23px}
.privacy>ul>li>ul>li>ul.ty02{padding-left:14px}
.privacy>ul>li>ul>li>p{padding-left:23px}
.privacy>ul>li>ul>li>p.ty02{padding-left:14px}
.privacy>ul>li>ul>li>ul>li{text-indent:-14px;padding-left:14px}
.privacy>ul>li>ul>li>ul>li>ul>li{padding-left:14px}
/* //개인정보취급방침 */


/*********************************************************/
/*************** 20160411 전체상품후기 view **************/
/*********************************************************/

/* 상세 상품후기 */
.tbl_v_com {width:100%;border-top:2px solid #777;border-bottom:1px solid #d9d9d9;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.tbl_v_com tr.tbl_lst:hover {background:#f9f9f9}
.tbl_v_com th {padding:0 20px;height:64px;line-height:64px;font-size:21px;background:#fff;border-bottom:1px solid #eee;text-align:left;font-weight:normal}
.tbl_v_com th:first-child{background-image:none}
.tbl_v_com th.last{}
.tbl_v_com td{text-align:center;line-height:20px;padding:9px 0;border-top:1px solid #d9d9d9;color:#444;font-size:13px;font-weight:normal}
.tbl_v_com td.t_v_comment a:hover{text-decoration:underline}

.tbl_v_com .v_comm_v_txt {position:relative;margin:30px 25px;text-align:left; font-size:1.05em; color:#666;line-height:1.6em} 
.tbl_v_com .nick_box {padding-left:0px;text-align:left}
.tbl_v_com .nick {position:relative;left:10px;height:42px;text-align:left}
.tbl_v_com .ico_nick_box {position:relative;left:10px;display:inline-block}
.tbl_v_com .ico_p {overflow:hidden;width:35px;height:35px;-webkit-border-radius:17px;-moz-border-radius:17px;border-radius:17px;}
.tbl_v_com .ico_g {margin-top:-10px;}
 
.v_comment_img {position:relative;margin:25px 20px;}
.v_comment_img img {display:block;max-width:60%;}

.date_comm{float:left}
.date_comm li{float:left;color:#a1a0a0;font-size:12px;line-height:14px;font-weight:normal}
.date_comm li span{display:inline-block;padding-left:18px;margin-right:12px}
.date_comm li.dc1 span{background:url('/img/ico/ico_time.gif') no-repeat left 1px}
.date_comm li.dc2 span{background:url('/img/ico/ico_eye.gif') no-repeat left 1px;color:#ff2626}
.date_comm li.dc3 span{background:url('/img/ico/ico_balloon.gif') no-repeat left 1px;color:#ff2626}
/* //상세 상품후기 */

/* 상품후기 상품진열 */
.list_wrap {position:relative;background:#eee;margin:60px 160px;border:1px solid #e6e6e6}
.list_wrap a {display:block;margin:0;padding:0;text-decoration:none;border:none}
.list_wrap a:hover {clear:both;display:block;text-decoration:none;border:none}
.list_box {overflow:hidden;margin:10px 0}
.list_img {float:left}
.list_img img {margin-left:15px;border:0;width:125px;height:125px;border:1px solid #e6e6e6;vertical-align:top}
.list_txt_box {overflow:hidden;position:relative;left:12px;top:0px;width:76%;vertical-align:top}
.list_tit {overflow:hidden;width:91%;margin:5px 0 10px;text-overflow:ellipsis;white-space:nowrap;color:#222;line-height:1.2em;font-size:1.2em;font-weight:600; :}
.list_tit_2depth {overflow:hidden;color:#8a8a8a;font-size:1em;line-height:1.6em;text-overflow:ellipsis;text-overflow:-o-ellipsis-lastline;display:inline-block;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;word-wrap:break-word;word-break:break-all;white-space:normal;max-height:3.1em}

.view_price_wrap_v {position:relative;margin-top:16px}
.view_price_v {font-size:15px;color:#bbb;text-decoration:line-through;font-weight:normal;letter-spacing:-1px}
.view_list_dc_v {padding-left:5px;color:#ff4c4d;font-weight:600;font-size:18px;letter-spacing:-0.03em} 
/* //상품후기 상품진열 */

/* 이전/다음글 */
.prev_next{margin-top:50px;line-height:52px;border-top:1px solid #ccc} 
.prev_next dt{float:left;height:52px;width:8%;padding-left:2%}
.prev_next dd{float:left;height:52px;width:88%;*width:87%;padding-right:2%;position:relative;text-align:right}
.prev_next dd>a{display:block}
.prev_next dd p{position:absolute;left:0px;top:0;width:68%;padding-left:3%;text-align:left}
.prev_next dd em{color:#999;display:inline-block}
.prev_next dd em.date{padding-right:13px;margin-right:12px;background:url('/img/ico/bar_9.gif') no-repeat right center}
.prev_next .prev{border-bottom:1px solid #e9e9e9}
.prev_next dt.prev{background:url('/img/ico/ico_up2.png') no-repeat right center}
.prev_next dt.next{background:url('/img/ico/ico_down2.png') no-repeat right center}
.prev_next .next{border-bottom:1px solid #ccc}
/* //이전/다음글 */

/* 20160517 상단 연관상품 */
.top_relat_list_wrap {margin-bottom:100px;border-bottom:1px solid #ddd}
.top_relat_lis_tit {position:relative;margin-bottom:40px;padding-left:0px;background:#fff;height:58px;line-height:58px;border-top:3px solid #555;border-bottom:1px solid #ddd;text-align:left;color:3b3b3b;font-size:18px;font-weight:normal;letter-spacing:-0.04em}
.top_relat_wrap {position:relative;margin-top:10px}
.top_relat_list {overflow:hidden;position:relative}
.top_relat_list li {position:relative;display:inline-block;width:210px;height:310px;margin:0 12px 30px 0;float:left;vertical-align:top}
.top_relat_list li.last {width:208px;margin-right:0px;float:left;vertical-align:top}
.grid_top {position:relative;width:210px;box-sizing:border-box;z-index:120}
.grid_top:hover .grid_top_hover {overflow:hidden;background:none;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-bottom:none;width:206px;height:250px;filter:alpha(opacity=100);opacity:1;transition:all .01s}
.grid_top:hover .grid_top_hover2 {overflow:hidden;background:none;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-top:none;width:206px;height:60px;filter:alpha(opacity=100);opacity:1;transition:all .01s}
.top_li_box_img {width:210px;height:212px;background:#f3f4f4;vertical-align:top; margin-bottom:15px;} 
.top_li_box_img img {width:210px;height:212px;border:none}

.top_li_txt_box {position:relative;display:block;font-weight:normal;text-align:left;padding:0 5px} 
.top_li_tit {overflow:hidden;display:block;width:99%;color:#232323;padding-bottom:2px;font-size:16px;font-weight:600;text-align:left;text-overflow:ellipsis;white-space:nowrap;letter-spacing:0px}

.ico_dsd_area {position:absolute;right:4px;bottom:3px}
.ico_dsd_a {padding:2px 4px 3px;background:#aaacaf;color:#fff;font-size:12px;letter-spacing:-0.02em}

.top_list_dc {padding-left:3px;color:#000;font-weight:600;font-size:16px;letter-spacing:-0.04em}
/* //20160517 상단 연관상품 */

/* 20160518 상세설명 텍스트영역 */
.pdt_txt_area {position:relative;display:block;margin:10px 150px 30px}
.pdt_txt {font-size:16px;color:#585858;line-height:1.5em;font-weight:normal;text-align:left;}
.pdt_tit {background:#499fd9;padding:3px;color:#fff;font-weight:700}
/* //20160518 상세설명 텍스트영역 */

/* 2016.05.17 다신모바일 다신회원후기 대댓글 css 추가*/
.replyid {margin:2px 5px 2px 0;color:#1b72bc;background:#dfeaf4;padding:3px 5px;font-size:0.85em;font-weight:bold;font-family:"나눔고딕",NanumGothic,sans-serif}

/* 20160520 예약배송상품 및 배송 옵션내용 추가 */

/* 20160526 상세P 예약배송상품영역 여백수정 */
.resv_pdt_wrap {position:relative;width:515px;margin:15px 0px 0;padding:14px 0 0;border-top:1px solid #e8e8e8;}
.resv_pdt {display:block;color:#222;line-height:1.8em;font-size:14px;}
.resv_pdt_tit {display:inline-block;height:22px;line-height:20px;padding:0px 8px;margin:0 6px 3px 0;border:2px solid #5aafda;border-radius:60px;color:#5aafda;font-size:14px;letter-spacing:-0.05em}
.resv_pdt_txt {display:block;color:#000;}
/* //20160526 상세P 예약배송상품영역 여백수정 */

.resv_pdt_cart_wrap {position:relative;background:#d7daec;padding-bottom:10px}
.resv_pdt_cart {display:block;padding:12px 24px 0;margin:0 16px;color:#000;line-height:1.8em;font-size:14px;border-top:1px solid #b8bcd5}
.resv_pdt_cart_tit {display:inline-block;height:22px;line-height:22px;padding:0px 8px;margin-right:6px;border:2px solid #249edc;border-radius:60px;color:#249edc;font-size:14px;letter-spacing:-0.05em}
.resv_pdt_cart_txt {display:block;color:#000;}

.delivery_option {padding-left:5px;color:#000;}/* 20160531 제주고항공료 문구추가로 인한 패딩값 수정 */
/* //20160520 예약배송상품 및 배송 옵션내용 추가 */

/* 20160531 네이버지식쇼핑용 폰트크기 수정 */
.v_top_naver {display:inline-block;padding:1px 8px 3px;background:#baece9;color:#000;font-size:1em;line-height:1.35em}
/* //20160531 네이버지식쇼핑용 폰트크기 수정 */

/* 20160718 주소영역 지번, 도로명 추가 */
.ads_input input {margin:-2px 5px 0 3px}
/* //20160718 주소영역 지번, 도로명 추가 */


/* 20160728 비회원로그인시 추가 */
/*--20180917 비회원로그인 영역수정--*/
.nomem_pop_wrap {position:relative;background:rgba(0,0,0,0.5);height:100%; left:0; position:fixed; top:0; width: 100%; z-index: 15000;}
.nomem_pop_box {overflow:hidden;width:400px;  line-height:22px;padding:0px;overflow:hidden;position:absolute;top:132px;left:45%;margin-left:-115px;background:#fff;border:1px solid #999; border-radius:5px}
.nomem_pop_box2 {overflow:hidden;width:400px;line-height:22px;padding:0px 0 20px;overflow:hidden;position:absolute;top:300px;left:45%;margin-left:-115px;background:#fff;border:1px solid #c0c0c0;}
.nomem_member22 {display:inline-block;float:right;text-align:center;width:48%;height:46px;line-height:46px;border:1px solid #999;background:#fff;border-radius:0px;color:#999;font-size:16px;font-weight:600;}
.nomem_member22:hover {height:46px;background:#fff;color:#fe6666;border:1px solid #fe5155;line-height:46px}
 
.nomem_pop_tit_w {display: block;background:#fff;text-align:left; padding:15px 0px 0px; margin:0px 20px;border-bottom: 2px solid #000;}
/**.nomem_pop_tit {margin:7px 0px 13px;font-size:2.6em;color:#222; font-weight:800}**/
.nomem_pop_tit {background:#f9f9f9;color:#222;text-align:center;display: block; font-size: 14px; letter-spacing: -1px;padding:15px 0 10px 0px;border-bottom: 1px solid #d8dbdf;}
.nomem_pop_txt {margin:0px 0px 12px;font-size:1em;color:#888; line-height:1.3em;; font-weight:norm; letter-spacing:0.03em}
.nomem_pop_close {position:absolute;right:15px;top:15px}

.nomem_pop_tbl {table-layout: fixed; width: 100%;margin:20px 0 15px}
.nomem_pop_tbl th {font-weight:normal;text-align:left;padding-left:20px;font-size: 14px;  color: #222; letter-spacing:-1px;font-weight:600;}
.nomem_pop_tbl tr td {padding:0px 20px 8px 20px;text-align:left;color:#777}
.nomem_pop_input {width:100%; background: #fff none repeat scroll 0 0;-moz-border-bottom-colors: none; -moz-border-left-colors: none;  -moz-border-right-colors: none; -moz-border-top-colors: none;
    border-color: #bbbbbb; border-image: none;color: #333;font-size: 14px;text-indent:5px; border-style: solid; border-width: 1px; height: 43px;line-height:43px;  vertical-align: middle;}
/*--//20180917 비회원로그인 영역수정--*/

.nomem_btn_w {padding:0px 20px 20px 20px;text-align:center}
.nomem_login {display:inline-block;float:left;text-align:center;width:48%;height:48px;line-height:48px;background:#fe6666;border-radius:0px;color:#fff;font-size:16px;font-weight:600;}
.nomem_login:hover {height:46px;background:#fff;color:#fe5155;border:1px solid #fe6666;line-height:46px}
.nomem_member {display:inline-block;float:right;text-align:center;width:48%;height:46px;line-height:46px;border:1px solid #fe6666;background:#fff;border-radius:0px;color:#fe6666;font-size:16px;font-weight:600;}
.nomem_member:hover {height:46px;background:#fff;color:#666;border:1px solid #fe5155;line-height:46px}
.nomem_nomember {display:inline-block;margin-top:13px;text-align:center;width:100%;height:50px;line-height:50px;background:#53b3ea;border-radius:0px;color:#fff;font-size:16px;font-weight:600;}
.nomem_nomember:hover {background:#fff;color:#30a1e2;border:1px solid #30a1e2;height:48px;line-height:48px;}

.order_nomemb_t {display:block;line-height:150%}
.privacy_w {position:relative;width:400px;height:60px;overflow-y: scroll;border:1px solid #c0c0c0;padding-left:5px;line-height:1.3; }
/* //20160728 비회원로그인시 추가 */

/*--20180917 SNS로그인--*/
.snslogin_new_w { display:block; margin:0px 20px;}
.btn_nonmemb {display:table;width:100%;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif;text-align:center;}
.btn_nonmemb_l3 {display:table-cell;vertical-align:top;width:100%;}
.btn_nonmemb_a {display:block;padding:10px 0px;background:#fe6666;border:1px solid #fe6666;border-radius:2px;font-size:1.25em;font-family:"나눔고딕",NanumGothic,"돋움",Dotum;font-weight:600;line-height:1.6;color:#fff;text-align:center;white-space:nowrap} 
.btn_nonmemb_a3 {display:block;padding:10px 0px;background:#4acec7;border:1px solid #4acec7;border-radius:2px;font-size:1.25em;font-family:"나눔고딕",NanumGothic,"돋움",Dotum;font-weight:600;line-height:1.6;color:#fff;text-align:center;white-space:nowrap}
.pop_sns {overflow:hidden;position:relative; width:100%;padding:8px 0px;margin-top:10px;text-align:center}
.pop_sns img {border:none;vertical-align:top;width:54px}
.pop_sns_t { display:inline-block;height:40x; line-height:50px; padding:0px 10px 0px 0px; font-size:1.2em; color:#666 }
.login_t_w {display:block; width:100%;margin:10px 0px 13px -4px; text-align:center;font-size:1.05em; vertical-align:middle;  }
.login_t_w li {display:inline-block; height:27px; line-height:27px;vertical-align:middle; color:#bbb;text-align:center;margin:0 0px 0 0px; }
.login_t_w a {display:block;color:#666;}
/*--//20180917 SNS로그인--*/
/* //20160728 비회원로그인시 추가 */

/* 20160930 회원가입혜택 */
.gift_box_wrap {overflow:hidden;position:relative;margin:3px 20px 20px;background:#fff;border:1px solid #eaeaea}
.gift_tit {padding:10px 0;width:100%;background:#f9f9f9;text-align:center;color:3b3b3b;letter-spacing:7px;font-size:1.25em;font-weight:600;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif;}
.gift_btn_join {padding:12px 0px 14px;background:#fff;text-align:center;color:#fff;font-size:1.3em;font-weight:600;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif;}
.gift_btn_join a {display:inline-block;padding:0 100px;background:#fe6666;text-align:right;height:46px;line-height:46px;border:1px solid #fe6666;border-radius:0px;}
.gift_btn_join a:hover {background:#fff;border:1px solid #fe6666;color:#fe6666;}
.gift_wrap {padding:0px;background:#fff;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif;text-align:left;border-top:1px solid #eee;border-bottom0px solid #eee}
.gift_list {display:table;width:100%;margin:12px 0 8px;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif;text-align:center;}
.gift_list_l {display:table-cell;vertical-align:top;width:33%;border-right:1px solid #eee}
.gift_list_l_last {display:table-cell;vertical-align:top;width:33%;margin:10px 0}
.gift_list_a {display:block;background:#fff;line-height:1.4em;font-size:1.15em;font-weight:600;color:#666;}
.gift_list_txt {display:block;margin-top:10px}
.gift_list_txt .txt1 {color:#ff5960}
.gift_list_txt .txt2 {color:#54c3bd}
.gift_list_txt .txt3 {color:#e7af2e}
.gift_list_a img {position:relative;top:0px;border:noen;vertical-align:middle;width:60px}
.gift_list_on .gift_list_a{padding:5px 0;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif;background:#80b1de;color:#fff;border-top:1px solid #71a2d0;font-weight:700}

.gift_v_box_wrap {overflow:hidden;position:relative;margin:0px 0px 20px;background:#fff;border-top:1px solid #e9e9e9;border-bottom:1px solid #e9e9e9;}
.gift_v_tit {display:inline-block;padding:34px 26px;background:#f9f9f9;text-align:center;color:3b3b3b;letter-spacing:7px; vertical-align:top;font-size:1.25em;font-weight:600;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif;}
.gift_v_btn_join {display:inline-block;padding:20px 15px 0 0;background:#fff;text-align:center;color:#fe6666;vertical-align:top;font-size:1.25em;font-weight:600;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif;}
.gift_v_btn_join a {display:inline-block;padding:0 12px;background:#fff;text-align:right;height:40px;line-height:40px;border:1px solid #ff7077;border-radius:24px;}
.gift_v_btn_join a:hover {background:#ff7077;color:#fff}
.gift_v_wrap {display:inline-block;padding:12px 20px 8px;background:#fff;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif;text-align:left;border:0px solid #eee}
.gift_v_list {display:table;width:100%;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif;text-align:center;}
.gift_v_list_l {display:table-cell;vertical-align:top;width:33%;border-right:1px solid #eee}
.gift_v_list_l_last {display:table-cell;vertical-align:top;width:33%;margin:10px 0}
.gift_v_list_a {display:block;background:#fff;line-height:1.4em;font-size:1.15em;font-weight:600;color:#666;}
.gift_v_list_txt {display:inline-block;margin:0 10px}
.gift_v_list_txt .txt1 {color:#ff5960}
.gift_v_list_txt .txt2 {color:#54c3bd}
.gift_v_list_txt .txt3 {color:#e7af2e}
.gift_v_list_a img {position:relative;top:0px;border:noen;vertical-align:middle;width:60px}
.gift_v_list_on .gift_v_list_a{padding:5px 0;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif;background:#80b1de;color:#fff;border-top:1px solid #71a2d0;font-weight:700}
/* //20160930 회원가입혜택 */

/* 20161019 네이버페이 버튼 노출 */
.naverpay_box {float:right;background:#fff;height:88px;margin-top:-35px;padding:12px;border:1px solid #f5f5f5;}
.naverpay_box2 {display:inline-block;background:#fff;height:88px;position: absolute;top:50px;right:-260px;border:0px solid #eee;}
.naverpay {width:285px}
.naverpay2 {width:236px}
/* //20161019 네이버페이 버튼 노출 */

/* 20161115 회원혜택 UI 변경 */
.benefit_area {width:100%;display:table-cell;}
.benefit_area li {float:left;width:275px;display:table;vertical-align:middle;text-align:center;margin-bottom:25px}
/* //20161115 회원혜택 UI 변경 */

/* 20161115 인기상품LIST 텝메뉴 추가 */
.topmn_wrap {display:block;position:relative;margin:50px 0px 35px 0;text-align:left}
.topmn {display:table;width:100%;text-align:center;}
.topmn a:hover {background:#fff;padding:18px 0;color:#000;font-weight:600;border-top:2px solid #fd555d;border-left:2px solid #fd555d;border-right:2px solid #fd555d;border-bottom:none}
.topmn_l{display:table-cell;vertical-align:top;width:14%;font-size:1.25em;font-weight:600;color:#555;}
.topmn_a{display:block;padding:18px 0;background:#f9f9f9;border-top:1px solid #ddd;border-right:1px solid #ddd;border-bottom:2px solid #fd555d;} 
.topmn_on .topmn_a {background:#fff;padding:18px 0;color:#000;font-size:1.05em;font-weight:600;border-top:2px solid #fd555d;border-left:2px solid #fd555d;border-right:2px solid #fd555d;border-bottom:none}
.topmn_l:first-child .topmn_a{}
.topmn_l:last-child .topmn_a{}
.topmn_l:first-child .topmn_a:after{}
.topmn_l:last-child .topmn_a:after{}
/* //20161115 인기상품LIST 텝메뉴 추가 */

/* 20161115 핫키워드 텝메뉴 추가 */
.hotmn_wrap {position:relative;margin:30px 12px 35px 0;background:#f7f7f7;text-align:left}
.hotmn {display:table;width:100%;text-align:center;}
.hotmn_l{display:table-cell;vertical-align:top;width:11%;font-size:1.25em;font-weight:600;color:#555;}
.hotmn_a {display:block;padding:18px 0;background:#fff;border-top:1px solid #ddd;border-right:1px solid #e9e9e9;border-bottom:2px solid #fd555d;color:#666;font-size:0.9em;line-height:2em;} 
.hotmn_on .hotmn_a {background:#fff;padding:18px 0;color:#000;font-size:0.9em;font-weight:600;border-top:2px solid #fd555d;border-left:2px solid #fd555d;border-right:2px solid #fd555d;border-bottom:none}
.hotmn_on .hotmn_a img {height:64px}
.hotmn_a img {height:64px}
.hotmn a:hover {background:#fff;padding:18px 0;color:#000;font-weight:600;border-top:2px solid #fd555d;border-left:2px solid #fd555d;border-right:2px solid #fd555d;border-bottom:none}
/* //20161115 핫키워드 텝메뉴 추가 */

/* 20161115 주간핫딜 및 단독배너 UI 변경 */
.m_bn_area {position:relative;display:table;padding:14px;border:1px solid #eee;border-bottom:none} 
.m_bn_area li {float:left;border:1px solid #d6d6d6;margin-right:14px}
.m_bn_area li.last {float:left;margin-right:0px}

.m_bn_area2 {display:table;padding:0 14px 14px;border:1px solid #eee;border-top:none} 
.m_bn_area2 li {float:left;border:1px solid #d6d6d6;margin-right:14px}
.m_bn_area2 li.last {float:left;margin-right:0px}

.m_bn_tit {position:relative;margin-bottom:26px;text-align:left;color:#333;font-size:25px;font-weight:600;letter-spacing:-0.06em}
.m_bn_stit {padding:0 5px;color:#666;font-size:16px;font-weight:normal;letter-spacing:0.1em}

.m_bn_price {position:absolute;margin:160px 0 0 22px;z-index:300}
.m_b_price {display:block}
.m_b_per_price {font-size:13px;color:#909090;text-decoration:line-through;font-weight:normal;letter-spacing:-1px}
.m_b_dc {display:block;margin-top:3px} 
.m_b_list_dc {color:#000;font-weight:600;font-size:22px;letter-spacing:-0.06em}
.ico_keep_mbn {position:absolute;bottom:20px;margin-left:22px}

.grid_bn {position:relative;width:528px;height:300px;box-sizing:border-box;z-index:120}
.grid_bn2 {position:relative;width:257px;height:300px;box-sizing:border-box;z-index:120}
.grid_bn:hover .tmb_hover {overflow:hidden;background:none;position:absolute;top:-2px;bottom:0px;left:-2px;right:0px;border:2px solid #fe6b6b;width:526px;height:298px;filter:alpha(opacity=100);opacity:1;transition:all .01s;}
.grid_bn2:hover .tmb_hover {overflow:hidden;background:none;position:absolute;top:-2px;bottom:0px;left:-2px;right:0px;border:2px solid #fe6b6b;width:255px;height:298px;filter:alpha(opacity=100);opacity:1;transition:all .01s;}
/* //20161115 주간핫딜 및 단독배너 UI 변경 */

/* 20161124 선택한 딜 라인표시 추가 */
.choice_deal1 {overflow:hidden;display:table-cell;width:260px;height:419px;border:2px solid #fe6b6b}
.choice_deal2 {display:block;width:180px;height:241px;border:2px solid #fe6b6b}
.choice_deal3 {margin-bottom:-36px;display:table-cell;width:354px;height:508px;border:2px solid #fe6b6b;}
/* //20161124 선택한 딜 라인표시 추가 */

/* 20161209 메인좌측 고정배너 */
.floating_bn_wrap {text-align:center;margin:0 auto;}
.floating_bn_box {position:relative;top:154px;z-index:50}
.floating_bn_box div.floating_bn {display:block;position:absolute;top:10%;right:50%;width:112px;margin:-46px 580px 0 0;z-index:55}
.floating_bn {display:table;text-align:center;vertical-align:middle;width:100%;text-indent:-3px;background:#fff}
.floating_ul {position:relative;margin:12px 0 0;bottom:4px;border:1px solid #ddd;}
.floating_ul li {display:table;text-align:center;vertical-align:middle;padding-top:10px;width:110px;height:74px;background:#fff;border-top:1px solid #f3f3f3}
.floating_ul li img {display:table-cell;text-align:center;vertical-align:middle;width:38px;padding-left:33px;}

.floating_ul2 {position:relative;margin:10px 0 0;border:1px solid #ddd}
.floating_ul2 li {display:table;text-align:center;vertical-align:middle;padding-top:10px;width:110px;height:88px;background:#fff;border-top:1px solid #eee}
.floating_ul2 li img {display:table-cell;text-align:center;vertical-align:middle;width:110px;padding:0px 0 0 0px;}

.flo_tit {padding:7px 5px;background:#f2f2f2;border-bottom:0px solid #ddd;line-height:1.4em;font-weight:600;color:#555}
.flo_tit em {color:#fe6666}
.flo_txt {margin:8px 0;font-weight:600;font-size:1em;letter-spacing:-0.1em;color:#666;line-height:1.6em}
/* //20161209 메인좌측 고정배너 */

/*20180425 사은품영역 수정(출고안내 및 회원가입혜택 노출 수정)*/
.benefit_pdt_wrap {position:relative;width:515px;margin:15px 0px 0;padding:14px 0 0;border-top:1px solid #e8e8e8;}
.benefit_pdt {display:block;color:#222;line-height:1.8em;font-size:14px;}
.benefit_pdt_txt {display:inline-block;height:22px;line-height:20px;padding:0px 8px;margin:0 6px 3px 0;color:#03a9f4;font-size:14px;letter-spacing:-0.05em}

.benefit_wrap {clear:both;display:block;position:relative;top:26px;width:512px;border:1px solid #dbdbdb;}
.benefit_con {width:100%;position:relative;background:#fff;}
.benefit {display:table;width:100%;height:74px;}

.benefit li{float:left;width:20%;padding:5px;text-align:center;overflow:hidden;}
.benefit li.li30 {float:left;width:30%;text-align:center;overflow:hidden;}
.benefit_tit { margin-top:5px;font-size:1.15em;line-height:22px;letter-spacing:0.1em;color:#333;font-weight:600}
.benefit_img {position:relative;top:13px;padding:0 5px;color:#444;font-size:1em;}
.benefit_img img {width:38px} 
.benefit_btn {display:inline-block;background:#fff;border-radius:3px;height:25px;line-height:24px;border:1px solid #ff7077;color:#ff7077;font-size:1.05em;font-weight:700;padding:0px 20px;margin:5px 0 0;letter-spacing:-0.08em}
.benefit_line {border-right:1px solid #e4e4e4;}
.benefit_tbox {display:inline-block;padding:5px 0 0 5px;letter-spacing:-1px; line-height:1.3em}
.benefit_txt1 {display:table;vertical-align:middle;color:#ff5960;font-weight:600}
.benefit_txt2 {display:table;vertical-align:middle;color:#54c3bd;font-weight:600}
.benefit_txt3 {display:table;vertical-align:middle;color:#edb73a;font-weight:600}
.benefit_txt4 {display:table;vertical-align:middle;color:#729ee7;font-weight:600}

.th_tit {text-align:center; margin-left:-24px; font-weight:normal}
.btn_giftmore a { display:block; float:right;right:10px; font-size:15px; color:#666; font-weight:600}
.ico_giftds img { display:inline-block; width:15px; vertical-align:top; margin:0.04em 7px 0 0}
.ico_giftds_arw img {display:inline-block;vertical-align:top; margin:0.07em 8px 0 10px}
.gift_txtn {color: #fe4f4f;}
/*//20180425 사은품영역 수정(출고안내 및 회원가입혜택 노출 수정)*/

/* 20161206 상세> 포토후기 노출 */
.photo_line {margin-top:20px;height:2px;background:#777;}
.p_reply {overflow:hidden;width:1112px}
.p_reply li {float:left;width:172px;height:172px;vertical-align:top;margin:0 13px 13px 0}
.p_r_lst_box {overflow:hidden;position:relative}
.p_reply_box img {width:172px;height:172px;border:1px solid #eee}
/* //20161206 상세> 포토후기 노출 */

/*20180425 회원 사은품영역 수정*/
.giftmn_wrap {display:block;padding:0px;background:#fff;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif;text-align:left;border-top:0px solid #d7d7d7}
.giftmn {display:table;width:100%;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif;border-top:0px solid #ccc;text-align:center}
.giftmn_l { float:left; display:table-cell;vertical-align:top;width:24%;border-right:0px solid #d7d7d7}
.giftmn_l30 { float:left; display:table-cell;vertical-align:top;text-align:center;}

.giftmn_a {display:block;vertical-align:middle;padding:0px 0 5px;font-size:12px;font-weight:normal;line-height:1.6em;color:#000}
.giftmn_a2_box {position:relative;top:0px;}
.giftmn_a2 {display:table-cell;background:#80a8e9;vertical-align:middle; padding-top:5px;width:120px;height:125px;text-align:center;font-size:13px;font-weight:normal;line-height:1.6em;color:#fff}
.giftmn_a2 em {padding-top:20px;text-align:center;font-size:16px;font-weight:600;letter-spacing:0.2em;color:#fff}
.giftmn_a em {color:#fe6666}
.giftmn_a img {border:noen;vertical-align:middle;width:100px}
/*//20180425 회원 사은품영역 수정*/


/* 20161215 상단 회원가입 혜택배너 */
.header .top_bn {position:relative;display:block;width:100%;height:70px;background:#02adff;border-bottom:0px solid #02adff;margin:0 auto;z-index:1000}
.header .top_bn_ri {position:relative;right:50%;width:500%;height:70px;background:#75b3fa;border-bottom:0px solid #278dde;margin:0 auto;z-index:130}

.top_bn_wrap {width:1100px;margin:0 auto;position:relative;z-index:150;background:#FFF;}
.btn_close {position:relative;top:24px;right:-6px}
.btn_close {width:22px}

/*20190703 최상단배너 닫기버튼 수정*/
.btn_close_n {position:absolute;top:10px;right:-20px}
.btn_close_n img {width:23px}
/*//20190703 최상단배너 닫기버튼 수정*/

.top_bn {position:absolute;left:0;top:0}
.top_bn>li{float:left;padding-right:0px}
.top_bn>li:first-child{padding-left:0} 
.top_bn>li>a{float:left;height:23px;padding-top:0px}
.top_bn>li>a.active,
.top_bn>li:hover>a{} 
.top_bn li a{float:left;color:#646363;font-family:'dotum';font-size:11px}
/* //20161215 상단 회원가입 혜택배너 */

/* 20161215 side 카트 */
.side_cart_wrap {position:relative;top:130px;z-index:10000}
.side_cart_box {float:right;margin:0 auto}
.cart_fixed {position:fixed;top:293px;}
.side_c_box {position:absolute;width:100px;background:#fff;border:1px solid #5e6877; border-top:none}
.side_c_con {display:block;background:#5e6877}
.side_c_con li {display:block;height:32px;line-height:32px;padding-left:0px;text-align:left;color:#fff;border-top:1px solid #667182;border-bottom:1px solid #4e5a6c}
.side_c_con li a:hover {border-bottom:1px solid #fff}
.ico_f_go {display:inline-block;position:absolute;top:13px;margin-left:5px}
.side_c_num {float:right;margin-right:10px;font-weight:600;color:#fe6666}
.side_c_con dl {float:left;display:block;width:100px;background:#fff;padding:10px 0 0;margin:3px 0px;vertical-align:middle;text-align:center;border-bottom:0px solid #3d8ae0}
.side_c_con dt {position:relative;margin:0 12px}
.side_temp {width:74px;height:53px;margin-bottom:10px;border:none;vertical-align:middle;border:1px solid #eee;}

.sideimg_box {position:absolute;display:none;top:0px;right:0px;background:#5e6877;width:220px;height:53px;border:1px solid #405389}
.sideimg_box em {display:block;text-align:left;padding-left:10px;line-height:1.5em}
.sideimg_area {position:relative}
.side_name {padding-top:11px;width:130px;color:#fff;font-size:11px;word-break:break-all;white-space:nowrap;text-overflow:ellipsis;overflow:hidden }
.side_price {font-size:12px;color:#fe6666;font-weight:600}
.side_img {float:right;position:absolute;top:0;right:0}
.side_img img {width:74px;height:53px}
.side_ico_close {float:right;position:absolute;top:0;right:0; z-index:1}
.side_ico_close img {width:11px;height:11px}
.side_ico_b {position:relative;display:table;width:76px;height:15px;line-height:15px;vertical-align:top;margin:2px 0 8px;}
.side_ico_b img {width:14px;height:13px}
.side_ico_prev {position:absolute;left:0;top:2px;}
.side_ico_next {position:absolute;right:0;top:2px;}
.side_b_txt {width:50px;color:#000}
.side_b_txt .page {color:#fe6666}
/* //20161215 side 카트 */

/* 20161215 이용약관 체크박스 */
.agreement_wrap {position:relative}
.agreement {margin:20px 0 20px;font-size:1.05em;text-align:center;vertical-align:middle}
.agreement a {color:#000;font-weight:bold;text-decoration:underline}
.agreement_chk {position:relative;top:3px;margin-right:4px}
/* //20161215 이용약관 체크박스 */


.agreementtxt { color: #666;  font-size: 12px;  letter-spacing: 0;  line-height: 1.7em;  margin: 0 40px 0 20px;}
.agreementtxt > ul > li {margin-top:25px}

/* 20170120 메인p 하단 한줄공지 영역 추가 */
.m_noti_box {margin:0; width:1100px; margin:50px 0 -30px; }
.tbl_m_noti {width:100%;border-top:2px solid #777;border-bottom:1px solid #d9d9d9;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.tbl_m_noti tr.tbl_lst:hover {background:#f9f9f9}
.tbl_m_noti td {height:42px;line-height:42px;font-size:1.02em;color:#333;border-bottom:1px solid #d9d9d9;}
.tbl_m_noti .tit {margin:0 0px 0 30px;font-weight:700;color:#000;font-size:1.1em}
.tbl_m_noti .date {padding-left:5px;font-weight:normal;color:#999;font-size:1em}
.tbl_m_noti .txt a:hover{text-decoration:underline}
.tbl_m_noti .go a:hover{ color:#fe6666}
.tbl_m_noti .go img {margin:17px 0 0 5px;}
/* //20170120 메인p 하단 한줄공지 영역 추가 */


/*20170303 직원 전용 구매 버튼*/
.v_staff_btn_box {position:relative;display:block;text-align:center;margin:-30px 0 40px;padding-top:28px;border-top:1px solid #e1e1e1}
.v_staff_b_order{display:inline-block;color:#fff;font-weight:600;font-size:16px;height:50px;line-height:50px;width:260px;background:#53b3ea;text-align:center}
.order_staff_btn {position:relative;display:block;text-align:center;padding:50px 0;margin:0px 0 80px 0px;}
.order_staff_btn_ok {background:#53b3ea;}
/*//20170303 직원 전용 구매 버튼*/

/*20170313 직원전용 주문*/
.order_staff_t {position:relative;display:block;text-align:left;padding:8px 0px 8px 140px;color:#7e8bd5;font-weight:bold}
/*//20170313 직원전용 주문*/

/*20190312 gnb메뉴 메인전용*/
/*20190801a gnb메뉴 메인전용 변경*/
.m_header .gnb_sub-wrap{position:absolute;width:100%;background:#fff;height:50px;border-bottom:1px solid #d4d4d4;}
.m_header .gnb_sub{position:relative;width:1110px;margin:0 auto;}
.m_header .gnb_sub>li{float:left;padding:0 46px}
.m_header .gnb_sub>li:first-child{padding-left:0}
.m_header .gnb_sub>li>a{float:left;height:23px;padding-top:8px; }
.m_header .gnb_sub>li>a.active,
.m_header .gnb_sub>li:hover>a {background:url("../../img/common/bg_gnb_on.gif") no-repeat center bottom;height:34px;z-index:200}
.gnb_sub_bl {background:#fff;margin-top:0px;height:20px}
.m_header .gnb_sub>li:hover>a{display:block; background:#fff; z-index:100}
.gnb_quickmenu { display:inline-block; vertical-align:bottom; background:#fd555d; height:50px; line-height:50px;width:96px; margin-top:-17px; text-align:center;color:#fff;font-size:0.88em; border:1px solid #fe6666; border-top:none}
.gnb_quickmenu a { clear:both;color:#fff; }
.gnb_quickmenu img { display:inline-block; vertical-align:top; margin:18px 8px 0px 0px }

.m_header .sub2 {position:absolute;top:42px;height:384px;background:#fff;padding:16px 27px 0px;border:1px solid #fa4d4d;}
.m_header .sub2 li a {clear:both;display: inline;background:#fff;line-height:2.1em;font-size:1.1em;font-weight:normal}
.m_header .sub2 li a:hover {color:#fa4d4d;font-weight:700}
.m_header .sub2.sub01{width:1050px;left:0px;}

.m_header .sub {position:absolute;top:42px;height:210px;background:#fff;padding:16px 16px 0px;border:1px solid #fa4d4d;}
.m_header .sub li a {clear:both;display: inline;background:#fff;line-height:2.1em;font-size:1.1em;font-weight:normal}
.m_header .sub li a:hover {color:#fa4d4d;font-weight:700}

.m_header .sub.sub01{width:210px;left:97px}
.m_header .sub.sub02{width:210px;left:436px}
.m_header .sub.sub03{width:210px;left:500px}
.m_header .sub.sub04{width:220px;left:580px}
.m_header .sub.sub05{width:220px;left:684px}
.m_header .sub.sub06{width:210px; height:310px;left:790px;}
.m_header .sub.sub07{width:230px;left:840px}

.gnb_quick_con { background:#fff;}
.gnb_quick_tit {display:block; width:116px;height:36px; line-height:36px; font-size:1.2em; font-weight:600; border-bottom:1px solid #ddd; padding:0px 0px 4px 9px; margin:0px 0px 7px -9px;}
.gnb_quick_tit2 {display:block; width:280px;height:36px; line-height:36px; font-size:1.2em; font-weight:600; border-bottom:1px solid #ddd; padding:0px 0px 4px 10px; margin:0px 0px 7px -9px; z-index:1000}
.gnb_quick_tit3 {display:block; width:0px;height:36px; line-height:36px;border-bottom:0px solid #ddd; padding:0px 0px 4px 9px;margin:0px 0px 7px -9px;}

.healths {display:inline-block; position:relative;width:270px;}
.healths ul {float:left;width:134px; margin-right:15px}
.healths ul.healths_mn {position:absolute;top:-1px;right:-16px;width:110px;margin-right:none}
.healths ul li {display:inline;margin-left:9px;}

.sub_cons { display:inline-block; width:1060px; margin-left:4px;}
.sub_cons ul {float:left;width:134px; margin-right:18px}
.sub_cons ul.last {float:left;width:134px; margin-right:10px;}
.sub_cons ul li { display:block;margin-left:9px;}
.sub_best_cons {display:inline-block;width:1060px;margin:14px 0px 0px 9px;}
.sub_best_box {clear:both;display:block;}
.sub_best_box li {float:left;width:134px; margin-right:18px; }
.sub_best_box li.last {float:left;width:134px; margin-right:0px;}
.sub_best_c_tit {display:inline-block;margin-top:15px;width:160px;height:48px; line-height:48px; font-size:1.3em; font-weight:600;}
/*//20190801a gnb메뉴 메인전용 변경*/
/*//20190312 gnb메뉴 메인전용*/

/*20170629 동영상 재생 기능 추가*/
.htico_box { overflow:hidden;position:absolute;bottom:1px;right:0px;background:rgba(0,0,0,0.6);width:31px;height:31px;text-align:center;opacity:0.85;}
.htico_box img{width:23px;height:23px;margin-top:4px;border:none}
.htico_box2 { overflow:hidden;position:absolute;bottom:1px;right:0px;background:rgba(0,0,0,0.6);width:22px;height:22px;text-align:center;opacity:0.85;}
.htico_box2 img{width:16px;height:16px;margin-top:3px;border:none}

.ico_pp2 {display:inline-block;position:relative;top:3px;padding-left:5px;}
.ico_pp2 img {border:none;display:inline-block ;}
.pl5 {margin-left:5px}

/*상품이미지 grid*/
.tb_mw_wrap .tb_mw{position:relative;display:inline-block;overflow:hidden;vertical-align:top}
.tb_mw_wrap .tb_mw:hover .tb_m {transition-duration:.0s;-webkit-transform:scale(1.05);-ms-transform:scale(1.05);transform:scale(1.05)}
.tb_mw_wrap .tb_m{display:block;transition:-webkit-transform .2s cubic-bezier(.165,.84,.44,1);transition:transform .2s cubic-bezier(.165,.84,.44,1);transition:transform .2s cubic-bezier(.165,.84,.44,1),-webkit-transform .2s cubic-bezier(.165,.84,.44,1)}
/*//상품이미지 grid* /

/*인기상품*/
.best_mn_box {position:absolute;right:0px;margin-top:-40px;font-weight:normal;color:#ddd; font-size: 1.4em;vertical-align:top;z-index:20}
.best_mn_box a{display:inline-block; color:#333;padding:0 10px;font-weight: 600}
.best_mn_box a:hover { color:#ff4c4d; font-weight: 600 }
.best_mn_box .on {color:#ff4c4d; font-weight: 600}
/*//인기상품*/


/* 20170713 구매정보 UI 변경 */
.pdt_policy_tit_n {text-align:left;color:#232323;font-size:20px;font-weight:normal; letter-spacing:-0.008em}
.pdt_policy_tit_n em { color:#000;font-weight:600; }
.list_wrap_n {position:relative;background:#fff;border-bottom:0px solid #eee}
.pdt_p_tit_n { display: inline-block; width:100%; height:42px;margin-top:40px ;background:#fafafa;text-align:left;color:#232323;font-size:16px;font-weight:600;letter-spacing:-0.01em;line-height:42px;border-top:1px solid #f1f1f1;border-bottom:1px solid #f1f1f1;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.pdt_p_tit_n img  { display: inline; vertical-align: middle; text-align: left; margin:-2px 10px 0}
.pdt_p_box_n {position:relative;margin:0}
.pdt_p_box_n .tbl {border-bottom:0px solid #ccc;width:100%;}
.pdt_p_box_n .tbl tr.last th, .pdt_p_box .tbl tr.last td {border-bottom:1px solid #eee}
.pdt_p_box_n .tbl th { padding-left:25px;color:#222;background:#fafafa;border-bottom:1px solid #eee;font-size:14px;text-align:left;vertical-align:middle; font-weight:normal}
.pdt_p_box_n .tbl td {font-size:15px;color:#333;background:#fff;border-bottom:1px solid #eee;color:#333;padding: 18px 20px}

.pdt_p_txt_n {position:relative;padding:0px 5px;line-height:1.7em;font-size:15px;color:#232323;} 
.pdt_p_txt_n .question {padding: 22px 0px 0px;line-height:1.7em;font-size:15px;color:#232323; font-weight: 700; } 
.pdt_p_txt_n .answer { text-align: left; padding: 15px 0px 0px;line-height:2.2em;} 
.pdt_p_txt_n .answer em { color: #555; margin-right: 10px; font-weight: 600} 
.pdt_p_txt_n img { display: inline-table; vertical-align: middle; text-align: left; margin:18px 0 2px} 
.pdt_p_txt_n .txt { color: #fe4444}
.pdt_p_txt_n .txt2 { color: #000; font-size:13px; font-weight:700}
/* //20170713 구매정보 UI 변경 */

/*20170818 재입고알림추가*/
.alarm_pop_wrap {position:relative;height:100%; left:0; position:fixed; top:0; width: 100%; z-index: 9999;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.alarm_pop_box {overflow:hidden;width:440px; line-height:22px;padding:0px 0;overflow:hidden;position:absolute;top:220px;left:45%;margin-left:-115px;background:#fff;border:1px solid #e9e9e9;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.alarm_pop_tit {background:#f4f4f4;color:#222;text-align:center;display: block; font-size: 15px; letter-spacing: -0.03em;padding:15px 0 10px 0px;border-bottom: 1px solid #eee;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.alarm_pop_close {position:absolute;right:15px;top:15px}

.v_btn_alarm {display:inline-block;color:#fff;font-weight: 600;font-size:16px;height:50px;line-height:50px;width:183px;background:#59c9a8;color:#fff}
.v_btn_alarm a {display: block}
.v_btn_alarm img { display: inline-block; width:20px; vertical-align: middle; margin:-4px 8px 0 0}

.tbl_ala_txt { padding: 5px 0 10px; font-size:14px; color: #777; letter-spacing: -0.03em; line-height:1.5em;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.table_alarm_w {padding:10px 20px 25px}
.table_alarm { width:100%;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.table_alarm th { display: table-cell; height:40px; vertical-align:middle; font-size:14px;color:#323232;text-align:left;padding:5px 0px;}
.table_alarm td { display: table-cell; height:40px; vertical-align:middle; font-size:15px;color:#6e6e7d;padding:5px 0px;}
.input_ala {background-color:#ffffff;color:#6e6e7d; border:1px solid #d2d2d2; font-size:16px; height:40px;padding:0 3px; vertical-align:middle;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}

.btn_alarm_w { display: block; margin:10px 20px 30px;}
.btn_alarm {display:table;width:100%;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif;text-align:center;}
.btn_alarm_l {display:table-cell;vertical-align:top;width:49%;}
.btn_alarm_l2 {display:table-cell;vertical-align:top;width:2%}
.btn_alarm_a {display:block;padding:10px 0px;background:#fe5155;border:1px solid #fe5155;font-size:16px;font-family:"나눔고딕",NanumGothic,"돋움",Dotum;font-weight:600;line-height:1.6;color:#fff;text-align:center;white-space:nowrap}
.btn_alarm_a2 {display:block;padding:10px 0px;background:#c0c0c0;border:1px solid #c0c0c0;font-size:16px;font-family:"나눔고딕",NanumGothic,"돋움",Dotum;font-weight:600;line-height:1.6;color:#fff;text-align:center;white-space:nowrap}

.check_box_m {position:relative;vertical-align:top}
.check_box_m input {vertical-align:top}
.check_box_m .checkbox { width:17px; height: 17px; margin-right:5px}
/*20170818 재입고알림추가*/

/*20170914 다신특가세트추가*/
#container2 {width:100%; min-width:1100px;background:#eaf3f3}
#container2 .contents2 { padding:52px 0 50px;width:1100px;margin:0 auto; } 

.m_set_area {display:table;padding:0px;} 
.m_set_area li {float:left;border:0px solid #ddd;margin-right:17px}
.m_set_area li.last {float:left;margin-right:0px}
.m_set_v_txt {position:absolute;top:0px; height:100%; text-align:center; }
.m_set_v_t {display: inline-table;width:255px;height:100%;}
.m_set_v {display:table-cell;vertical-align:middle;overflow:hidden;width:255px;  padding:106px 0 5px;vertical-align: middle;}
.m_set_v_price { display:block;color:#555;font-weight:600;font-size:17px;font-family:'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}

.m_set_grid_bn {position:relative;width:255px;height:330px;box-sizing:border-box;z-index:120}
.m_set_grid_bn:hover .tmb_hover {overflow:hidden;background:none;position:absolute;top:-2px;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;width:251px;height:328px;filter:alpha(opacity=100);opacity:1;transition:all .01s;}
/*//20170914 다신특가세트추가*/

 
 /*20171011 상세옵션> 쿠폰영역 추가*/
.coupon_wrap {overflow:hidden;display:block;position:relative;background: #e2e2e8; width:497px; padding:8px; border:1px solid #ddd; border-top:none} /*20171011 width값 추가*/
.coupon_area {margin:0px; padding-bottom:0px; background-color: #fff; border: 1px solid #ddd}
.coupon_area ul {overflow:hidden}
.coupon_area li {display:block; padding:6px}
.coupon_area li.last {position:relative;background:#fff; border-bottom:none} 
.coupon_tit { display: block; position:relative;padding:0 14px; height:48px; line-height:48px; color: #222; font-size:1.35em; font-weight:bold; letter-spacing: -0.1em;border-bottom:1px solid #edeef0;}
.ico_coupon_go { position:absolute; margin-top:8px; right:10px}

.coupon_box {position:relative;background:#fff; border-bottom:2px dashed #e2e2e8} 
.coupon_box a {display:block;height:100%;  }
.coupon_boxss {overflow:hidden;display:table-cell;vertical-align:middle; padding:10px 8px;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif;}
.coupon_thum {overflow:hidden;display:table-cell;position:relative;width:138px;height:70px;background:url(/img/ico/ico_coupon_bg.png) no-repeat;background-size:100% 100%;-webkit-background-size:100% 100%;z-index:20}
.coupon_thum_v {overflow:hidden;display: inline-table;height:100%;}
.coupon_thum_v span {display:table-cell;vertical-align:top; padding-top:7px;font-size:11px; color:#ff5001; text-align: center; font-weight:600;}
.coupon_thum_v em { display:block; vertical-align:middle; width:138px; line-height:0.9em; font-size:28px; color:#000; font-weight:bold;}

.coupon_t_box {overflow:hidden;display:table-cell;height:50px;vertical-align:middle;padding:0 10px; }
.coupon_t_box span {overflow:hidden;padding:0px;font-size:13px;color:#666;text-align:left;line-height:1.7em;text-overflow:ellipsis;text-overflow:-o-ellipsis-lastline;display:block;display:-webkit-box;-webkit-line-clamp:1;-webkit-box-orient:vertical;word-wrap:break-word;word-break:break-all;white-space:normal;letter-spacing:-0.03em}
.ico_coupon_down  { position:absolute; top:30px; right:24px; line-height:2.2em;text-align: center; font-size:12px; color:#ff5001; font-weight:600}
/*//20171011 상세옵션> 쿠폰영역 추가*/

/*20171017 고객센터 및 상품문의 영역 추가*/
.order_checkmn_new{display:table; border-top:0px solid #ccc; text-align: center;}
.order_checkmn_new li{display:table-cell; vertical-align: top; width:130px; border-right:0px solid #d7d7d7;}
.order_checkmn_a2{display:block; margin:8px 2px; height:20px; padding:7px 0; background:#d0cece; border:1px solid #d2d2d2; font-size:13px; line-height:21px;
color:#6b6a74; vertical-align: middle; font-weight:bold;}
.order_checkmn_new_on .order_checkmn_a2{background:#7f7f7f; color:white;}
.order_checkmn_wrap_new{background:#fff; position:relative; text-align: center; padding:3px 0 2px 0px; font-size:17px; 
color:#666; font-weight:700px; line-height:1.7; border-top:1px solid #eaeaea; font-weight:600 }

.order_checkmn_wrap_new2{ position:relative; text-align: center; padding:3px 0 2px 0px; font-size:17px; 
color:#666; font-weight:700px; line-height:1.7; border-top:1px solid #eaeaea; margin-left:89%; margin-top:-58px;}

.order_checkmn_a3{display:block; margin:8px 2px; height:20px; padding:7px 0; background:#00b0f0; border:1px solid #d2d2d2; font-size:13px; line-height:21px;
color:white; vertical-align: middle; font-weight:bold; }


/* table */
.tbl-y-wrap{border:1px solid #dedede}
.tbl-y-wrap .tbl-y{border-bottom:0 none}
.tbl-y-wrap .tbl-y tr:first-child th,
.tbl-y-wrap .tbl-y tr:first-child td{border-top:0 none !important}
.tbl-y-wrap .tbl-y th{border-left:0 none}
.tbl-y-wrap .tbl-y td{border-right:0 none;background:#fff}
.mento_rank {display:inline;background:#e2614c;color:#fff;font-size:11px;padding:3px 5px;margin-right:5px;border-radius:3px}

.tbl-y{table-layout:fixed;width:100%;border-bottom:1px solid #b2b2b2}
.tbl-y th{color:#444343;font-size:13px;border-top:1px solid #e5e5e5;background:#f5f5f5;padding:22px 0 22px 14px;text-align:left;line-height:1.4;border-left:1px solid #e0e0e0}
.tbl-y td{border-top:1px solid #e5e5e5;padding:10px 0 10px 14px;border-right:1px solid #e0e0e0;vertical-align:middle}
.tbl-y td.noline {border-top:0px solid #e5e5e5;padding:0px 0 10px 14px;border-right:1px solid #e0e0e0;vertical-align:middle} /* 20160329 글쓰기 카테고리 다신관리자 셀렉트 박스 추가 */
.tbl-y tbody tr:first-child th,
.tbl-y tbody tr:first-child td{border-top:1px solid #b2b2b2 !important}
.tbl-y th span{color:#6e6e6e;font-size:13px;font-weight:normal}
.tbl-y td .dash{line-height:37px;font-weight:bold;vertical-align:top;display:inline-block;white-space:pre}
.tbl-y input{vertical-align:middle}

.tbl-y.view th{padding-top:10px;padding-bottom:10px}
.tbl-y.view td{line-height:16px}
.tbl-y.view .btns{font-size:0;line-height:0}

.tbl-y.pink th{background:#faede6}
.tbl-y.pink,.tbl-y.pink tbody tr:first-child th, .tbl-y tbody tr:first-child td{border-color:#e0e0e0}

.tbl-y.write th{padding-top:10px;padding-bottom:10px;border-left:0 none}
.tbl-y.write td{border-right:0 none}
.tbl-y.write tr:first-child th,
.tbl-y.write tr:first-child td{border-top:2px solid #737373 !important}
.tbl-y.write .file-wrap{width:475px}
.tbl-y.write .file-wrap .txt-file{width:380px}
.tbl-y.write .select-wrap3{float:left;margin-right:7px}

.tbl-list{table-layout:fixed;width:100%;border-bottom:1px solid #dad9d9}
.tbl-list thead th{height:41px;line-height:41px;font-size:12px;background:url('/img/common/bg_th.gif') no-repeat -4px top;border-left:1px solid #ebebeb}
.tbl-list thead th:first-child{background:url('/img/common/bg_th.gif') no-repeat left top;border-left:0 none}
.tbl-list thead th.last{background:url('/img/common/bg_th.gif') no-repeat right top}
.tbl-list td{text-align:center;line-height:20px;padding:14px 0;border-top:1px solid #efefef;color:#626262;font-weight:normal}
.tbl-list td a{color:#626262}
.tbl-list tbody tr:first-child td{border-top:0 none}
.tbl-list .group{text-align:left;padding-left:10px}
.tbl-list .category{text-align:left;padding-left:10px}
.tbl-list .subject{text-align:left;padding-left:10px} 
.tbl-list .subject:first-child{padding-left:0}
.tbl-list .subject img { position:relative; top:3px; } 

.tbl-list .writer .inner{height:42px;padding-left:12px;text-align:left;width: 110px;text-overflow: ellipsis;white-space: nowrap; overflow: hidden;}

.tbl-list .writer .ico-wrap{position:relative; display:inline}
.tbl-list .writer .pic{width:35px;height:35px;-webkit-border-radius:17px;-moz-border-radius:17px;border-radius:17px;behavior:url('../js/PIE.htc');overflow:hidden}
.tbl-list .writer .grade{position:absolute;left:-9px;top:13px}


.tbl-list .writer .inner em{line-height:35px;} 
.inner_nick_box {position:relative;top:-30px;left:46px} 
.inner_nick {overflow:hidden;width:60%;text-overflow:ellipsis;white-space:nowrap;} 
.inner_nick2 {overflow:hidden;width:250px;text-overflow:ellipsis;white-space:nowrap} 

.tbl-list .ico{vertical-align:text-bottom}
.tbl-list td.al{padding-left:10px;text-align:left}
.tbl-list .c-num{color:#e11c24;font-weight:bold;display:inline-block;margin-left:8px}
.tbl-list tr.notice td{background:#fff7d5}
.tbl-list tr.notice td.group{color:#d32115;font-weight:bold;}
.tbl-list tr.notice.ty02 td{background:#fff7d5} 
.tbl-list tr.notice td .tyft {color:#d32115} 
.tbl-list tr.notice td a.pd10 {padding-left:10px} 
.tbl-list tr.notice.ty02 td:first-child{padding-left:10px}

.tbl-list.ty02 {border-top:1px solid #737373; font-size:13px}
.tbl-list.ty02 thead th{background:#fbfbfb url('/img/ico/bar_9.gif') no-repeat left center;border-left:0 none;border-bottom:1px solid #d0d0d0}
.tbl-list.ty02 thead tr.wh th{background-color:#fff}
.tbl-list.ty02 thead th:first-child{background-image:none}

.select-wrap{position:relative;width:118px}
.select-wrap .select{border:1px solid #c4c4c4;height:26px;color:#727171;-webkit-appearance:none;outline: none;display: block;width:100%;cursor:pointer;font-family: 'Nanum Gothic','맑은 고딕','돋움',sans-serif;font-size:13px;position:relative;background:#fff}

.select-wrap .select-arr{width:24px;height:24px;background:url('/img/btn/btn_arr.gif') no-repeat; position:absolute;right:1px;top:1px;overflow:hidden;pointer-events: none}

.sch-wrap{background:#f6f6f6;padding:14px 0;margin-top:35px}
fieldset.sch{width:308px;margin:0 auto}
fieldset.sch:after{content:".";display:block;height:0px;clear:both;visibility:hidden}
fieldset.sch .select-wrap{float:left}
fieldset.sch input{float:left;margin:0 3px}
fieldset.sch .btn-sch{float:left}
.ipt3{border:1px solid #c4c4c4;height:24px;line-height:24px;padding-left:10px;width:135px;color:#7e7e7;font-family: 'Nanum Gothic','맑은 고딕','돋움',sans-serif;font-size:13px}

.text01{padding:10px 0px 0px; line-height:1.9em; font-size:1em; font-weight:700;}
.text02{font-weight:700; margin-bottom:-15px;}
.text03{text-align:left; padding:10px 0px 0px; line-height:1.9em; }
/*//20171017 고객센터 및 상품문의 영역 추가*/

/*20171018 공지게시판 추가*/
.btn-ar{text-align:right;margin-top:30px}
.dateCmnt li span{display:inline-block;padding-left:18px;margin-right:12px}
.dateCmnt li.dc01 span{background:url('/img/ico/ico_time.gif') no-repeat left 1px}
.dateCmnt li.dc02 span{background:url('/img/ico/ico_eye.gif') no-repeat left 1px;color:#ff2626}
.dateCmnt li.dc03 span{background:url('/img/ico/ico_balloon.gif') no-repeat left 1px;color:#ff2626}
.gall-view{position: relative;}
.gall-view .tit {position:relative;color:#434343;font-size:20px;padding:20px 5px 20px 0;border-top:1px solid #737373;
border-bottom:1px solid #ececec;line-height:1.4em;} 
.gall-view .tit p {overflow:hidden;width:88%}
.gall-view .bbs-info{padding:10px 0;border-bottom:1px solid #cecece;margin-bottom:50px} 
.gall-view .bbs-info.ty02{padding:6px 0 6px}
.gall-view .dateCmnt{float:left}
.gall-view .bbs-info.ty02 .dateCmnt{float:right; display:inline-block; }
.dateCmnt li{float:left;color:#a1a0a0;font-size:12px;line-height:14px;font-weight:normal}
.gall-view .bbs-info.ty02 .dateCmnt li{line-height:35px}
.gall-view .bbs-info.ty02 .dateCmnt li span{background-position:0 center}
.gall-view .bbs-info.ty02 .writer{position:relative;float:left;width:50%}
.gall-view .bbs-info.ty02 .writer em{line-height:35px;padding-left:0}
.gall-view .dateCmnt li{background:url('/img/ico/bar_9.gif') no-repeat left center;padding-left:9px;margin-left:0px}
.gall-view .dateCmnt li:first-child{margin-left:0;padding-left:0;background:none}
.gall-view .txt{line-height:1.6em;color:#585858;font-size:15px} 

.gall-view .sns{ position:relative;text-align:center;padding:45px 0}
.gall-view .sns .heart{display:inline-block;width:150px;height:50px;background:url('/img/common/bg_heart.gif') no-repeat;line-height:50px;margin-right:20px;margin-top:0 !important}
.gall-view .sns .heart span{display:inline-block;padding-left:32px;background:url('/img/ico/ico_heart.png') no-repeat left center;font-size:bold;font-size:15px;color:#323232;font-weight:bold;vertical-align:top}
.gall-view .sns a{display:inline-block;vertical-align:top;margin:4px 2px 0 2px}


.gall-view .sns .bmark{display:inline-block;width:150px;height:50px;background:url('/img/common/bg_heart.gif') no-repeat;line-height:50px;margin-right:20px;margin-top:0 !important}
.gall-view .sns .bmark span.off{display:inline-block;padding-left:32px;background:url('/img/ico/ico_bmark_off.png') no-repeat left center;font-size:bold;font-size:15px;color:#323232;font-weight:bold;vertical-align:top}
.gall-view .sns .bmark span.on{display:inline-block;padding-left:32px;background:url('/img/ico/ico_bmark_on.png') no-repeat left center;font-size:bold;font-size:15px;color:#323232;font-weight:bold;vertical-align:top}



.gall-view .sns .notic_e {display:inline-block;width:150px;height:50px;background:url('/img/common/bg_heart.gif') no-repeat;line-height:50px;margin-right:20px;margin-top:0 !important}
.gall-view .sns .notic_e span {display:inline-block;padding-left:32px;background:url('/img/ico/ico_notic_e.png') no-repeat left center;font-size:bold;font-size:15px;color:#323232;font-weight:bold;vertical-align:top}


.good_writing {margin:40px 0}
.good_w_tit {display:block;font-size:14px;color:#444; margin-bottom:15px}
.good_w_tit em { color:#F00}
.good_writing li {font-size:13px;line-height:1.8em;color:#222;margin-left:0px}

.btns_w {position:absolute;right:0;top:6px}
.btns_w a{font-size:12px;color:#8d8d8d;display:inline-block;padding-right:10px;background:url('/img/ico/bar_9.gif') no-repeat right 2px;margin-right:5px;}
.btns_w a:last-child {background:none;margin-right:-7px}
.btns_w a.bt_on{color:#46bf9b}
.btns_w a.bt_on img{margin:2px 5px 0 0}

.retext {color:#fa111a}
.gall-view .bbs-info2{padding:13px 0 20px 0;border-bottom:1px solid #cecece;margin-top:10px}
.gall-view .bbs-info2.ty02{padding:6px 0 10px 6px}

.btns2{position:absolute;right:0;top:6px}
.btns2 a{font-size:12px;color:#8d8d8d;display:inline-block}
.btns2 a:first-child{padding-right:10px;background:url('/img/ico/bar_9.gif') no-repeat right 2px;margin-right:5px}
.btns2 a.bt_on{color:#fa111a}
.btns2 a.bt_on img{margin:2px 5px 0 0}

.comment-list>ul>li>.btns_d{position:absolute;right:0;top:18px}
.comment-list>ul>li>.btns_d a {display:inline-block;font-size:12px;color:#8d8d8d;vertical-align:middle}

.comment-write {background:#f9f9f9;border:1px solid #ececec;padding:15px;position:relative;margin-top:12px}
.comment-write .secret {height:20px;} 
.comment-write .secret label{color:#606060;font-size:12px;vertical-align:top;}
.comment-write textarea{width:91.5%;height:68px}
.comment-write .btn-regist{position:absolute;right:15px;top:35px}

.prev-next{margin-top:50px;line-height:52px;border-top:1px solid #cecece; font-size:13px} /*20171025 폰트사이즈 변경*/
.prev-next dt{float:left;height:52px;width:8%;padding-left:2%}
.prev-next dd{float:left;height:52px;width:88%;*width:87%;padding-right:2%;position:relative;text-align:right}
.prev-next dd>a{display:block}
.prev-next dd p{position:absolute;left:0px;top:0;padding-left:;width:68%;padding-left:3%;text-align:left}
.prev-next dd em{color:#9e9e9e;display:inline-block}
.prev-next dd em.date{padding-right:13px;margin-right:12px;background:url('/img/ico/bar_9.gif') no-repeat right center}
.prev-next .prev{border-bottom:1px solid #e9e9e9}
.prev-next dt.prev{background:url('/img/ico/ico_up.png') no-repeat right center}
.prev-next dt.next{background:url('/img/ico/ico_down2.png') no-repeat right center}
.prev-next .next{border-bottom:1px solid #cecece}
/*//20171018 공지게시판 추가*/

/*20171025 1:1문의 추가*/
.gall-view .btns_c a {position:relative;top:0px;font-size:12px;color:#8d8d8d;display:inline-block}
.gall-view .btns_c a:first-child {padding-right:10px;background:url(/img/ico/bar_9.gif) no-repeat right 10px;margin-right:5px}
.gall-view .btns_c_t a {position:relative;top:0px;font-size:12px;color:#8d8d8d;display:inline-block}
.gall-view .btns_c_t a:first-child {padding-right:10px;background:none;margin-right:5px}
.gall-view .btns_c2 a{font-size:12px;color:#8d8d8d;display:inline-block}
.gall-view .btns_c2 a:hover {text-decoration:underline}

.bbs-info3 {display:table;position:relative;width:100%;padding:6px 0;border-bottom:1px solid #cecece;margin-bottom:50px}
.bbs-info3 .inner {position:relative;display:table-cell;vertical-align:middle;width:20px;height:42px;padding-left:12px;text-align:left}
.bbs-info3 .ico-wrap{position:relative;display:inline-block}
.bbs-info3 .pic{width:35px;height:35px;-webkit-border-radius:17px;-moz-border-radius:17px;border-radius:17px;behavior:url('../js/PIE.htc');overflow:hidden}
.bbs-info3 .grade{position:absolute;left:-9px;top:24px}
.bbs-info3 .inner_nick_box {position:relative;top:-18px;width:160px;margin-left:5px;} 
.bbs-info3 .inner_nick {overflow:hidden;width:88%;text-overflow:ellipsis;white-space:nowrap;} 
.bbs_con {display:table-cell;vertical-align:middle;display:inline-block;text-align:left;margin:5px 0 0 50px;min-height:42px}
.badge2 {overflow:hidden;max-width:260px;display:inline-block;} 
.badge2 img {margin-right:8px;margin-bottom:2px}
.ico_mark_t_box {display:inline-block;position:relative; margin:6px 2px 0;width:38px;height:40x;text-align:center;vertical-align:bottom;}
.ico_mark {width:33px;border:none}
.ico_mark_t {position:absolute;top:-5px;right:-2px;max-width:20px;width:16px;height:14px;padding-right:1px;line-height:13px;color:#000;font-size:0.8em;border-radius:30px;border:1px solid #000;vertical-align:middle;text-align:center;font-weight:normal;letter-spacing:-0.1em;text-shadow:none}

.group_bbs_con {display:table-cell;vertical-align:middle;text-align:left;margin:5px 0 0 50px;min-height:42px}/
.group_info_t {color:#08c6dd}
.date_c {position:absolute;right:0;overflow:hidden;display:inline-block;margin-top:-8px}
.dateCmnt2 li{float:left;color:#a1a0a0;font-size:12px;line-height:14px;font-weight:normal}
.dateCmnt2 li span{display:inline-block;padding-left:18px;margin-right:12px}
.dateCmnt2 li.dc01 span{background:url(/img/ico/ico_time.gif) no-repeat left 1px}
.dateCmnt2 li.dc02 span{background:url(/img/ico/ico_eye.gif) no-repeat left 1px;color:#ff2626}
.dateCmnt2 li.dc03 span{background:url(/img/ico/ico_balloon.gif) no-repeat left 1px;color:#ff2626}
.dateCmnt2 li{background:url(/img/ico/bar_9.gif) no-repeat left center;padding-left:9px;margin-left:0px}
.dateCmnt2 li:first-child{margin-left:0;padding-left:0;background:none}
/*//20171025 1:1문의 추가*/

/* 20171101 상품문의 안내메세지 */
.qa_info_wrap {position:relative;overflow:hidden;padding:0px;background:none;}
.qa_info_t {position:relative;font-size:13px;color:#777;text-align: left; padding: 0px 20px 20px;line-height:1.4em; }
.qa_info_t .txt { display: inline; text-decoration: underline}
.qa_info_t .txt2 { display:block; margin:3px 0 0 17px;}
/* //20171101 상품문의 안내메세지 */

/* 20171101 주문결제 영수증보기 */
.receipt {display: inline-block; margin-left:20px;background: #6b79d1; height: 30px; line-height: 30px; width:110px; color: #fff; font-size: 1em; font-weight: 600; text-align: center}
.receipt a { display: block;}


/* 20180111 초특가세트 블릿영역 추가 */
.deep_dc_wrap {position:relative;width:100%;text-align:center;margin:0 auto;}
.deep_dc_w {position:relative; top:0px;height:380px;z-index:200;}
.deep_dc_w div.deep_dc a {z-index: 55;}

.deep_dc{width:100%;}
.deep_dc a{overflow: hidden;display:block;width:42px;height:70px;text-indent:-1000px;position:absolute;top:45%;margin-top:-0px;background: url(../../img/common/deep_dc_navi.png) no-repeat center center;z-index: 100;}
.deep_dc a.d_dc_prev{right:50%;margin-right:550px;background-position:left center; }
.deep_dc a.d_dc_next{left:50%;margin-left:520px;background-position:right center}

.deep_dc_bullet {overflow:visible;position:absolute;bottom:0px;width:100%;height:0;z-index:150}
.deep_dc_bullet li {display:inline-block;vertical-align:top;padding:0 3px; *display: inline; *zoom: 1;}
.deep_dc_bullet li a  {display:block;width:8px;height:8px; border-radius:30px; margin:20px 0 0 0;overflow:hidden;background:#bfbfbf; color:#bfbfbf;-webkit-box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.1); -moz-box-shadow:0 0 0 1px rgba(0, 0, 0, 0.1);box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.1);opacity: 0.8; filter:alpha(opacity=80);}
.deep_dc_bullet li a:hover,
.deep_dc_bullet li a.now {width:35px;opacity: 1.0; filter: alpha(opacity=100);background:#fe6b6b; color:#fe6b6b;}
/* //20180111 초특가세트 블릿영역 추가 */

/*20180525 검색결과 내용 추가*/
#container3{width:1100px;margin:0 auto; *zoom:1}
#container3:after{content:".";display:block;height:0px;clear:both;visibility:hidden}
.sub_list_tit_new {display:inline;text-align:left;color:#4d4d4d;font-size:23px}
.sub_list_box_new {display:block;position:relative;background:none;margin:0 13px 10px 0;padding:18px 0 30px;border-bottom:1px solid #999;border-top:0px solid #e6e6e6;text-align:left;color:#4d4d4d;font-size:22px;font-weight:600;letter-spacing:-0.05em;}
.sub_list_box_new2 {display:block;position:relative;background:none;margin:0 13px 10px 0;padding:18px 0 30px; #999;border-top:0px solid #e6e6e6;text-align:left;color:#4d4d4d;font-size:22px;font-weight:600;letter-spacing:-0.05em;}
/*//20180525 검색결과 내용 추가*/

/*20180625 상세상품 썸네일 미리보기*/ /*20190719 상품상세 썸네일 미리보기영역 수정*/
.preview_wrap {display:block;margin:10px auto 0px; background:#fff;}
.preview_box {display:block;width:500px; padding:8px 0px 0px; margin-bottom:10px; text-align:center}
.preview_box li {width:70px;display:inline-block; }
.preview_box li.last {margin-right:0px;width:64px;}
.preview_box img {width:64px;height:64px;vertical-align:middle;border:1px solid #dedede}
/*//20180625 상세상품 썸네일 미리보기*/

/*---20190418 상세설명, 옵션 수정---*/
.pdt_detail_n {position:relative}
.pdt_details {position:relative;display: inline-block; overflow:hidden;width:801px;}
.pdt_details li { float:left; }
.pdt_details li img {text-align:left}

.v_floating_box { overflow:hidden;display:inline-table;height:100%; position:fixed; top:0; width: 1100px; margin:0 auto; z-index: 10;}
.v_floating_boxa {width: 100%; height:100%;text-align:center; display:inline-table; vertical-align:top;width:100%;height:100%; border:1px solid #0000}
.v_floating_opt {position:absolute; right:0px; top:0px; z-index:1}
.viw_option_w {position:relative;float:left;width:260px; margin:0px 0 0 3px; padding:13px; height:800px; border:1px solid #e5e5e5; border-top:1px solid #959595; vertical-align:top; font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif; }
.viw_option_tit {display:block; height:43px; line-height:40px; color:#4d4d4d; font-size:1.3em; font-weight:normal; letter-spacing:-0.01em;font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif;}
.viw_option_box {background:#fbfbfb;font-family: Verdana, "NanumBold", "Malgun Gothic", sans-serif;}
.viw_option_info {overflow:hidden;position:relative; line-height:1.7em;letter-spacing:-0.1em; font-weight:normal;font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif;}
.viw_option_info dt,
.viw_option_info dd {padding:3px 0 0 0;}
.viw_option_info dt {clear:both;position:relative;padding:3px 0 0 0;float:left;color:#999;font-size:13px}
.viw_option_info dd {position:relative;float:right;width:100%;font-size:14px;color:#555}
.p_v_option_wrap {width:100%;position:relative;left:0;padding-top:2px;}
.p_v_optionbox {display:table;width:100%;text-align:left}
.p_v_opt_listbox {position:relative; display:block;background:#fff; font-weight:normal;font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.p_v_optionmn {display:block;padding:0px 12px; height:46px; line-height:45px;color:#000; border-top:1px solid #ccc; border-left:1px solid #ccc; border-right:1px solid #ccc;border-bottom:1px solid #fb8e89;letter-spacing:-0.05em;font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.p_v_optionmn em {color:#959595; letter-spacing:0.03em}
.p_v_optionmn:hover {color:#fe696c}
.p_v_optionmn1 {display:block;padding:0px 12px; height:46px; line-height:45px;background:#f9f9f9;color:#000; border:1px solid #fb8e89; border-bottom:1px solid #d9d9d9;letter-spacing:-0.05em; font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.p_v_optionmn1:hover {color:#fe696c}
.p_v_optionmn2 {display:block;padding:0px 12px; height:46px; line-height:45px;color:#000; border:1px solid #d9d9d9; border-bottom:1px solid #d9d9d9;letter-spacing:-0.05em ;font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.p_v_optionmn2:hover {color:#fe696c}

.p_v_optlist1 { display:block;background:#fff; max-height:502px;border:1px solid #fb8e89; border-top:none; overflow-y: scroll}
.p_v_optlist1 li {display:inline-block; width:100%;}
.p_v_optlist1 li a {display:block;padding:10px 12px;font-size:1em;color:#555;border-bottom:1px solid #e9e9e9; }
.p_v_optlist1 li a:hover { background:#f7f7f7; }
.p_v_optlist1 li .num { display:inline-block; width:24px; vertical-align:top; text-align:left}
.p_v_optlist1 li .txt { display:inline-block; width:193px; vertical-align:top; text-align:left; }
.p_v_optlist1 li .price { font-weight:700;font-family: Verdana, "NanumBold", "Malgun Gothic", sans-serif;}

/*20191029 상세 플로팅옵션 품절영역 추가*/
.soldout {display:inline-block;padding:10px 12px;font-size:1em;color:#959595;border-bottom:1px solid #e9e9e9;}
.soldout .num { display:inline-block; width:24px; vertical-align:top; text-align:left}
.soldout .txt { display:inline; width:210px; vertical-align:top; text-align:left;}
.soldout .price { font-weight:700;font-family: Verdana, "NanumBold", "Malgun Gothic", sans-serif;}
/*//20191029 상세 플로팅옵션 품절영역 추가*/

.p_v_optlist2 { display:block; position:relative;border-top:1px solid #f1f1f1;border-bottom:1px solid #f1f1f1;max-height:490px;overflow-y: scroll}
.p_v_optlist2 li {display:inline-block; width:100%; background:#fff}
.p_v_optlist2 li .p_v_opt_mn {display:block;padding:10px 12px 0px;font-size:1em;color:#222;border:1px solid #e9e9e9;border-bottom:1px solid #d1d1d1; border-top:none; font-weight:normal; letter-spacing:0.005em;font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif }
.p_v_optlist2 li .num { display:inline-block; width:24px; vertical-align:top; text-align:left}
.p_v_optlist2 li .txt { display:inline-block; width:176px; vertical-align:top; text-align:left}
.v_opt_price { position:absolute; top:18px; right:22px; color:#000; font-size:1.1em; font-weight:800;font-family: Verdana, "NanumSBold", "Malgun Gothic", sans-serif;}

.p_v_optlist3 { display:block; position:relative;background:#fff; border:1px solid #e9e9e9; border-top:none; max-height:480px;overflow-y: scroll}
.p_v_optlist3 li {display:inline-block;padding:10px 12px;font-size:1em;color:#959595;border-bottom:1px solid #e9e9e9;}
.p_v_optlist3 li .num { display:inline-block; width:24px; vertical-align:top; text-align:left}
.p_v_optlist3 li .txt { display:inline; width:210px; vertical-align:top; text-align:left;}
.p_v_optlist3 li .price { font-weight:700;font-family: Verdana, "NanumBold", "Malgun Gothic", sans-serif;}

.v_opt_box {position:relative;display:block;margin:10px 0px; padding:10px 0px 0px;  border-top:1px dotted #d9d9d9}
.v_opt_box .del { position:absolute; right:0px; bottom:3px; }
.v_opt_box .del img { vertical-align:top; width:11px; opacity:0.95 }
.v_option1 {position:relative;display:inline-block;vertical-align:middle; width:80px;font-family: Verdana, "NanumSBold", "Malgun Gothic", sans-serif;}
.v_option1 .price { display:inline-block;width:60px;height:35px;line-height:35px;margin:0px -3px 0 0;background:#fff;border:1px solid #dadada;font-size:1.1em;color:#000;font-weight:bold;text-align:center;vertical-align:middle;}
.v_option1 .plus { position:absolute; top:0px; right:0px; display:inline-block;width:17px;height:17px;line-height:17px; margin:0px 0 0 0px;background:#fff;border:1px solid #dadada;border-left:none;font-size:6px;color:#606060;font-weight:bold;text-align:center; }
.v_option1 .plus:hover, .v_option1 .mius:hover {background:#f0f0f0}
.v_option1 .mius {position:absolute; top:18px; right:0px;display:inline-block;width:17px;height:17px;line-height:17px;background:#fff;border:1px solid #dadada;border-left:none;font-size:6px;color:#606060;font-weight:bold;text-align:center}
.v_option1 img { vertical-align:middle}

.p_v_option_list_on {display:block;padding:10px 14px;background:fff;border:1px solid #c8c8c8;border-top:none;font-size:1em;color:#000}
.p_v_option_list_on:hover {color:#fe696c}
.p_v_option_list:hover {color:#fe696c}
.ico_v_money_op {display: inline-block;background:#f1f1f1;margin-left:10px; width:30px; height:18px; line-height:18px;text-align:center;border:1px solid #d1d1d1;color:#666;vertical-align:middle;font-size:11px;letter-spacing:-0.05em}

.v_opt_btn_w {position:absolute; bottom:12px; right:0px;}
.v_opt_tip ul { display:inline-block;width:100%; background:#f7f7f7; padding:8px 0;border-top:1px solid #d9d9d9}
.v_opt_tip li { display:inline-block;line-height:1.5em; padding:0px 9px; vertical-align:top;text-align:left;}
.v_opt_tip li .tit {display:inline-block;width:40px; font-size:0.95em; color:#999; font-weight:normal}
.v_opt_tip li .txt {display:inline-block;font-size:0.95em; color:#555; font-weight:600; letter-spacing:-0.05em}
.v_opt_tip li .btn {display:inline-block; background:#fff; width:89px; height:17px; line-height:15px;color:#59c9a8;font-size:11px;border:1px solid #c9c9c9;text-align:center; letter-spacing:-0.09em;font-family: Verdana, "NanumSBold", "Malgun Gothic", sans-serif }
.v_opt_tip li .btn:hover { border:1px solid #59c9a8}
.v_opt_tip li .btn img { margin:4px 0 0 4px; opacity:0.8 }

.v_opt_total { display:block;vertical-align:top; height:50px;padding:12px 13px 0px 12px; line-height:50px; font-size:1.3em;border-top:1px solid #d9d9d9}
.v_opt_total .txt {display:inline-block; vertical-align:top;text-align:left; font-weight:600;}
.v_opt_total .price_b { float:right;display:inline-block;vertical-align:top; line-height:50px;height:50px;text-align:right;}
.v_opt_total .price {display:inline-block;vertical-align:top; margin-top:-2px;font-size:1.4em; font-weight:600;font-family: Verdana, "NanumSBold", "Malgun Gothic", sans-serif}
.v_opt_total .allprice {color:#fe5155}

.v_opt_btn_box a { float:left;display:block;width:261px;text-align:center; margin:10px 12px 0px;height:48px;line-height:49px }
.v_opt_btn_order, .v_opt_btn_cancel, .v_opt_btn_soldout {display:block; vertical-align:top;color:#fff;font-weight: 600;font-size:16px;height:50px;line-height:50px;}
.v_opt_btn_order {background:#fe5155}
.v_opt_btn_cancel {background:#fff;color:#f94549;border:1px solid #fe5155;}
.v_opt_btn_soldout {background:#909095;color:#e0e0e0}
.v_opt_btn_order:hover {background:#fff;color:#000;border:1px solid #000;}
.v_opt_btn_cancel:hover {background:#fff;color:#000;border:1px solid #000;}
/*---//20190418 상세설명, 옵션 수정---*/

/*20180713 주문/조회 탭메뉴 UI 변경*/
.check_tab_w {position:relative;overflow:hidden;display:inline;padding:8px 0px 8px; }
.check_tab { display: inline-block;width:100%;margin-bottom:30px; }
.check_tab li {position:relative;float:left;width:50%;background:#f4f4f4;} 
.check_tab .tab_mn {display:block;overflow:hidden;height:54px;line-height:55px;font-size:17px;font-weight:600;text-align:center;color:#333;border-top:1px solid #ccc;border-left:1px solid #ddd;border-right:1px solid #ddd;border-bottom:2px solid #4093c9; }
.check_tab .tab_mn:after {float:right;height:25px;margin-top:0px;content:''}
.check_tab .lst:after {border-right:0}
.check_tab .on .tab_mn {background:#fff;color:#4093c9;font-weight:600; border:2px solid #4093c9; border-bottom:1px solid #fff}
.listno_tab { background:#fff; padding:30px 10px 20px; text-align:center; font-size:13px; color:#333; font-weight:normal}
/*//20180713 주문/조회 탭메뉴 UI 변경*/

/*20180716 상품후기 UI 리뉴얼*/
.p_comment_lines { height:2px; width:100%; background:#777}
.p_comment_notis {display:block;text-align:left;}
.p_comment_notis ul { background:#f9f9f9; padding:10px 90px 5px ; border-bottom:1px solid #d9d9d9; height:80px;}
.p_comment_notis li { float:left; display:inline-block; line-height:1.7em; color:#333; font-size:15px}

.p_comment_lists {display:block; text-align:left;}
.pcomment_lsts {display:block; position:relative;padding:30px 0; border-bottom:1px solid #e9e9e9;}
.pcomment_lsts li { float:left; display:inline;line-height:1.7em; color:#333; font-size:16px}
.comms_btns{position:absolute;right:0;top:24px}
.comms_btns a{font-size:12px;color:#8d8d8d;display:inline-block}
.comms_btns a:first-child{padding-right:10px;margin-right:5px;background:url(../../img/ico/bar_9.gif) no-repeat right 2px}
.comms_btns a:hover { text-decoration:underline}
.comms_tits {display:inline-block; background:#f4f4f4; padding:10px; font-size:16px; font-weight:600; color:#000 }
.comms_txts {display:inline-block; width:980px; padding:15px 0px 10px; font-size:15px; line-height:1.8em; font-weight:normal; color:#444;}
.comms_txts_more {display:block; padding:0px; margin-bottom:14px; font-size:15px; font-weight:600; color:#000 }
.comms_stars {position:relative;height:30px;line-height:30px;font-size:1.1em;color:#666}
.comms_stars .stars {font-size:1.15em; color:#333}
.comms_nicks {display: inline-table;margin:12px 0 0 15px;padding:0px 14px;height:12px;line-height:14px;color:#555;border-left:1px solid #ddd;font-weight:normal; } 

.comms_imgs_box {display:block;padding:0px;background:#fff;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif;text-align:left;border-top:0px solid #d7d7d7}
.comms_imgs {display:table;width:1000px;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif;border-top:0px solid #ccc;text-align:center}
.comms_imgs li { float:left; overflow:hidden;display:table-cell;vertical-align:top;width:110px; height:120px; margin-right:6px;border:1px solid #d7d7d7}
.comms_imgs_a {display:block;vertical-align:middle;padding:0px 0 5px;font-size:12px;font-weight:normal;line-height:1.6em;color:#000}
.comms_imgs_a img {border:noen;vertical-align:middle;width:100%}

.comms_replys {display:inline-block;background:#f4f4f4; width:100%; margin-top:20px; padding:15px 0 10px;}
.comms_replys_b {display:block;padding:0px 20px;line-height:1.7em; color:#333;}
.ico_replys img { float:left;vertical-align:top; margin:8px 3px 0 0 }
.comms_re_txts {display: inline-block;width:600px; padding:13px 0px 10px; margin-left:27px; font-size:15px; line-height:1.7em; font-weight:normal;color:#444; }
.comms_replys_ds {display:inline-table; vertical-align:top; background:#6a6a6a; font-size:14px; border-radius:30px; width:66px; height:28px; line-height:28px; color:#fff; text-align:center; font-weight:600 }

.comms_img_big_box {position:relative;display:inline-table;height:100%; left:0; position:fixed; top:0; width: 100%; z-index: 16000;}
.comms_img_biga {width: 100%; height:100%;text-align:center; display:inline-table; vertical-align:top;width:100%;height:100%;background:rgba(0,0,0,0.7);}
.comms_img_big {position:absolute;top:0px;width:100%;height:100%;background:none;text-align:center;}
.comms_img_bigs {display: inline-table;height:100%;}
.comms_imgss {display:table-cell;vertical-align:middle;overflow:hidden;}
.comms_imgss img {overflow:hidden;width:100%; margin-top:0px;vertical-align: middle; border: none}

.ico_replys_close { position:fixed; top:30px; right:30px;}
.ico_replys_right { position:fixed; top:45%; right:100px;}
.ico_replys_left { position:fixed; top:45%; left:100px;}

.pcomment_one {display:block; position:relative;}
.pcomment_one .pcomment_one_box { position:relative;left:0px;display:block;padding:15px 0 0;height:80px;text-align:left; border-bottom:1px solid #e9e9e9}
.pcomment_one .pcomment_one_box li { float:left;display: inline; margin:0 10px;}
.pcomment_one .ico_nick_box {display: inline;position:relative;left:0px;display:inline}
.pcomment_one .ico_p {overflow:hidden;width:35px;height:35px;-webkit-border-radius:17px;-moz-border-radius:17px;border-radius:17px;}
.pcomment_one .ico_g {margin-top:-10px;}
.nicknames_box {display:block;margin:5px 0 0 0px;}
.nicknames_txt {overflow:hidden;display:block;width:100%;color:#666;text-align:center;font-size:13px;text-overflow:ellipsis;white-space:nowrap;letter-spacing:-1px} 
.pcomment_onetxt {overflow:hidden;display:block;margin:26px 0 0 15px; width:900px; font-size:15px; }
.ico_one_del {position:absolute; top:41px; right:10px;}
/*20180716 상품후기 UI 리뉴얼*/

/*20180717 포토영역 변경*/
.coms_p_news_w {overflow:hidden;position:relative; margin-top:20px;z-index:50}
.coms_p_news {overflow:hidden;width:90%} /*---20190305 상세 상품후기 사진이미지영역 수정---*/
.coms_p_news li {float:left;width:170px;height:180px;vertical-align:top;margin:0 10px 10px 0}
.coms_p_news li.last {float:left;width:170px;height:180px;vertical-align:top;margin:0 0px 10px 0}
.coms_p_new_box {overflow:hidden;height:180px;position:relative}
.coms_p_new img {height:174px;width:100%;border:1px solid #f1f1f1}
/*//20180717 포토영역 변경경*/

/*20180719 팝업 내용 추가*/
.table_alarm_w2 {padding:10px 20px 5px 20px}

/*//20180719 팝업 내용 추가*/

/*20180720 한줄상품평 수정*/
.pcomment_onetxt2 {overflow:hidden;display:block;margin:10px 0 0 10px;  width:900px; font-size:15px;}
.nicknames_txt2 {overflow:hidden; margin-left:10px; color:#666;text-align:center;font-size:13px;text-overflow:ellipsis;white-space:nowrap;letter-spacing:-1px} 

.pcomment_one .pcomment_one_box2 { position:relative;left:0px;padding:15px 0 15px 0; text-align:left; border-bottom:1px solid #e9e9e9; ;}
.pcomment_one .pcomment_one_box2 li { float:left;display:block; margin:0 10px; }

/*//20180720 한줄상품평 수정*/

/*20180801 무통장 결제 팝업처리*/
.outbank_choice { display:inline-block;padding:8px 0;}
.obank_iput_fix { display:inline-block;height:30px; width:388px; padding:0 6px; margin-left:10px;line-height:30px;background:#fff;color:#000;border:1px solid #bbb;font-size:1em;vertical-align:middle; font-weight:600}
.obank_txt_w { display:block; margin-left:40px;}
.obank_txt { display:inline-block; margin-left:30px; }
.obank_btn { display: inline-block; background:#f1f1f1; margin-left:10px;padding:0px 8px; height:20px; line-height:21px; font-size:0.85em; border:1px solid #d7d7d7; font-weight:normal; }

.proof_box { display:inline; margin:-2px 0 0 10px;padding:8px 0;}
.proof_select_w {display:block;  margin-left:70px}
.proof_select_box {position: relative; display:inline-block; }
.proof_select {background:#fff none repeat scroll 0 0;text-indent:3px;position:relative;height:30px;line-height:30px;border:1px solid #c0c0c0;color:#333;font-size:12px;cursor:pointer;overflow:hidden;}
.proof_select_arr {position:absolute;right:1px;top:1px;border-left:1px solid #c0c0c0;width:21px;height:28px;background: url("../../img/order/select_arrow.gif") no-repeat scroll right top;overflow:hidden;pointer-events:none;}
.proof_number { display:inline; }
.proof_company { display:block; margin:5px 0px 0px 119px}
.proof_number input.order_txt { -moz-border-bottom-colors: none; -moz-border-left-colors: none;  -moz-border-right-colors: none; -moz-border-top-colors: none;border-color: #c0c0c0; border-image: none;text-indent:8px; border-style: solid; border-width: 1px; height: 26px;line-height:6px;  vertical-align: middle;}

.obank_footer_txt {display:inline-block;background:#f1f1f1; margin-top:26px; padding:3px 12px; color:#555;font-size:13px; font-weight:normal; line-height:1.5em; border-left:1px solid #e1e1e1; border-right:1px solid #e1e1e1}
.obank_footer_txt em { font-weight:600}
.obank_footer_txt { display:inline-block; margin-top:10px; padding:4px 10px;background:#e1e1e1; color:#111; font-size:0.85em; line-height:1.4em; }
.obank_footer_txt em { font-weight:600 }

.obank_pop_wrap {position:fixed;top:0px;width:100%; height:100%;background-color:rgba(0,0,0,0.6);z-index:1000}
.obank_pop {position:relative;overflow:hidden;background:#ffffff;margin:90px 18px; border:1px solid rgba(0,0,0,0.6);-webkit-box-shadow: 0 1px 0 1px rgba(0, 0, 0, 0.1); -moz-box-shadow:0 1px 0 1px rgba(0, 0, 0, 0.1);box-shadow: 0 1px 0 1px rgba(0, 0, 0, 0.1); border-radius:3px;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif;}

.obank_pop_tbl {position: relative;}
.obank_pop_tbl .tbl {display: block;border-bottom:1px solid #dfe2e6; margin:10px 0px 0px; padding-bottom:30px; width: 100%; font-size:13px}
.obank_pop_tbl .tbl tr.last th, .obank_pop_tbl .tbl tr.last td { border-bottom:0px solid #737373;}
.obank_pop_tbl .tbl th { color: #8f8f97;background-color: #fff; border-bottom: 0px solid #dfe2e6;color: #333; padding: 14px 0 13px 20px;  text-align: right; vertical-align: middle; line-height:1.6em}
.obank_pop_tbl .tbl th em { color:#666;}
.obank_pop_tbl .tbl th .order_thtxt { color: #999;font-weight:normal;padding-top:5px;}
.obank_pop_tbl .tbl td {position: relative;border-bottom: 0px solid #dfe2e6;  color: #333;  padding: 8px 0 8px 20px;}
.obank_pop_tbl input.order_dimmed {background: #fff none repeat scroll 0 0; color: #333;}
.obank_pop_tbl input.order_txt { -moz-border-bottom-colors: none; -moz-border-left-colors: none;  -moz-border-right-colors: none; -moz-border-top-colors: none;border-color: #c0c0c0; border-image: none;text-indent:8px; border-style: solid; border-width: 1px; height: 30px;line-height:30px;  vertical-align: middle;}	
.obank_pop_tit {color:#333;display: block; margin:10px 10px 0px; padding:0px 0px 20px; border-bottom: 2px solid #737373;font-size: 18px; letter-spacing: -1px;text-align:center}
.obank_pop_btn {display: inline-block;background:#f1f1f1;border:1px solid #d1d1d1;color:#333;font-weight: 600;font-size:13px;padding:0 70px;height:36px;line-height:36px;margin:20px 0 10px 0;}
.obank_pop_btn2 {display: inline-block;background:#fff;border:1px solid #d1d1d1;color:#333;font-weight: 600;font-size:13px;padding:0 70px;height:36px;line-height:36px;margin:20px 0 10px 0;}
.obank_p_txt {margin:-11px 0px -11px 150px; font-size:0.96em; font-weight:normal; color:#666} /*20180913 입금자명 텍스트영역 추가*/
/*//20180801 무통장 결제 팝업처리*/


/*---20180813 만원의 행복 구성상품영역 수정---*/
.grid_mwon_top {position:relative;width:191px;box-sizing:border-box;z-index:120}
.grid_mwon_top:hover .grid_manwon_hover {overflow:hidden;background:none;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-bottom:none;width:187px;height:246px;filter:alpha(opacity=100);opacity:1;transition:all .01s}
.grid_mwon_top:hover .grid_manwon_hover2 {overflow:hidden;background:none;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-top:none;width:187px;height:56px;filter:alpha(opacity=100);opacity:1;transition:all .01s}
.manwon_li_box_img {width:191px;height:212px;background:#f3f4f4;vertical-align:top; margin-bottom:15px;} 
.manwon_li_box_img img {width:191px;height:212px;border:none}
.manwon_li_txt_box {position:relative;display:block;width:181px;font-weight:normal;text-align:left;padding:0 5px} 
.manwon_li_tit {overflow:hidden;display:block;width:99%;color:#232323;padding-bottom:2px;font-size:16px;font-weight:600;text-align:left;text-overflow:ellipsis;white-space:nowrap;letter-spacing:0px}
.ico_manwon_area {position:absolute;right:1px;bottom:3px}
.ico_manwon_a {padding:2px 4px 3px;background:#aaacaf;color:#fff;font-size:12px;letter-spacing:-0.02em}

.top_manwon_list {overflow:hidden;position:relative}
.top_manwon_list li {position:relative;display:inline-block;width:191px;height:310px;margin:0 12px 30px 0;float:left;vertical-align:top}
.top_manwon_list li.last {width:189px;margin-right:0px;float:left;vertical-align:top}
/*---//20180813 만원의 행복 구성상품영역 수정---*/

/*20180820 결제완료p 무통장입금 추가*/
.f_bank_pop_wrap {position:relative;height:100%; left:0; position:fixed; top:0; width: 100%; z-index: 9999;}
.f_bank_pop_bg {background:rgba(0,0,0,0.6);height: 100%;left: 0; position: absolute; top: 0; width: 100%;}
.f_bank_pop_box {padding:10px;overflow:hidden;position:absolute;top:120px;left:45%;margin-left:-300px;background:#fff;box-shadow:0 2px 10px 0 rgba(0, 0, 0, 0.5);box-sizing: border-box;border-radius:4px;overflow:hidden;font-size:16px;width:700px; line-height:22px;  }
.f_bank_pop_tbl {position: relative; width:500px; margin:20px auto 0px; border:1px solid #dfe2e6; border-right:none;border-bottom:none;}
.f_bank_pop_tbl .tbl {clear:both; display: block;width:100%;border-bottom:0px solid #dfe2e6;padding-bottom:0px;  font-size:14px; }
.f_bank_pop_tbl .tbl th { width:298px; height:40px;line-height:40px;color:#666;background:#f2f2f2;border-bottom:1px solid #dfe2e6;border-right: 1px solid #dfe2e6;text-align:center;vertical-align:middle; }
.f_bank_pop_tbl .tbl td { width:298px; height:40px;line-height:40px;border-bottom:1px solid #dfe2e6;border-right:1px solid #dfe2e6;color:#000;text-align:center;vertical-align:middle;}	
/*//20180820 결제완료p 무통장입금 추가*/

/*20180907 공지사항상세 sns영역 추가*/
.noti_sns_b_w {display:block;width:100%; padding:20px 0px 40px; margin-top:30px; border-top:1px dotted #dedede}
.noti_sns_b_wrap { position:relative; display:block;text-align:center;width:100%;}
.noti_sns_box {display:block;}
.noti_sns_box li {display:inline-block;width:44px;margin-right:10px}
.noti_sns_box li.last {margin-right:0px}
.noti_sns_box img {height:40px;vertical-align:middle}
.lists_btn {position:absolute; left:0px; top:0px}
/*//20180907 공지사항상세 sns영역 추가*/

 /*20180918  하단 푸터 ui 변경*/
.cs_menu_box2 {width:400px;height:0px;float:left;margin-top:5px}
.cs_menu_lst2 li {float:left;text-align:center;margin-bottom:1px;margin-right:6px;}
.cs_menu_lst2 li a {width:167px;display:inline-block;font-size:12px;color:#333;letter-spacing:-0.01em;padding:6px 0px 6px;background:#f4f4f4; border:1px solid #e1e1e1}
.cs_menu_lst2 li a span.ic{display:inline-block;vertical-align:middle;margin:0 auto 0px;text-align:ceneter;}
.cs_menu_lst2 li a:hover,.cs_menu_lst li a:focus{color:#ff4c4d;}

.account_w2 { display:block; margin:94px 30px 0 0;}
.account_w2 li { display:block;color:#999; line-height:1.2em}

.noti_more {display:inline-block;margin-left:10px;}
.noti_more img { margin:3px 0px 0 4px; width:6px; opacity:0.5}
.cscenter_b {border:1px solid #666;width:225px;padding:8px 0 5px 10px;}
.cscenter_txt3 {display:inline-block;color:#444;font-weight: 600; font-size:13px; line-height:2em; margin-top:-2px;} 
 /*//20180918  하단 푸터 ui 변경*/


/* 20181018 댓글 ui 변경 */
.vod_input_div { display: inline-block; position:relative;top:0px;left:0px;width:20px; height:0px; vertical-align: top;}
.vod_input_img_btn { margin:0; vertical-align: top; display: inline-block;cursor:pointer}
.vod_input_hidden {position:absolute; left:0px;top:0px; opacity:0; filter: alpha(opacity=0); -ms-filter: alpha(opacity=0);cursor:pointer;}
.vod_input_img_btn2 { margin:0; vertical-align: top; display: inline-block;cursor:pointer}
.vod_input_hidden2 {position:absolute; left:0px;top:0px; opacity:0; filter: alpha(opacity=0); -ms-filter: alpha(opacity=0);cursor:pointer;}
.vod_ico_picture {position:relative;top:4px;margin-left:1px;vertical-align:top;color:#a0a0a0;font-size:0.95em;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif;}
.vod_ico_picture2 {position:relative;top:-2px;margin-left:1px;vertical-align:middle;color:#a0a0a0;font-size:0.95em;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif}

.vod_ico_picture img {display:inline-block;vertical-align:top; padding-bottom:2px}

.p_comment_img2 {position:relative;text-align:left;padding-top:0px}
.p_comment_img2 img {display:block;margin-left:76px;max-width:54%;}

.comment-write2 .btn-regist {position:absolute;right:38px;bottom:18px}
.ico_del {position:absolute;right:48px;top:40px;z-index:20}
.ico_del img {vertical-align:top}
.ico_thum {position:absolute;right:55px;top:46px}
.ico_thum_box {overflow:hidden;height:54px;width:54px; }
.ico_thum img {height:54px;width:54px;vertical-align:top;border:1px solid #c8c8c8}
.ico_picture {position:relative;top:-1px;margin:0px 0 0 12px;vertical-align:middle;color:#a0a0a0;font-size:0.95em;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif}
.ico_picture img {margin:0px 0 0 14px;vertical-align:middle;}

.btn_regist_box2 {position:absolute;right:55px;top:110px;} 
.btn_regist3 {display: inline-block;padding:14px;text-align:center; background:#b6b7be;border:1px solid #9ea0a4;border-radius:3px;color:#fff;font-size:14px;font-weight:normal }
.btn_regist3:hover {background:#46bf9b;border:1px solid #46bf9b;border-radius:3px;color:#fff;font-size:14px;font-weight:normal }
.textarea2 textarea{width:848px;height:98px;padding:10px;border:1px solid #d1d1d1;border-radius:3px;color:#666;font-size:12px;vertical-align:top;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.thum_box {position:absolute;right:-18px;top:-10px;}
.textarea3 textarea{width:91.5%;height:108px}
.comment-write .btn-regist4{position:absolute;right:38px;top:100px}
/* //20181018 댓글 ui 변경 */


/*20181113 타임영역외 추가*/
.hot_time_ww {position:relative;margin:-73px 0 45px -5px;width:100%;text-align:center;color:#333;font-size:24px;font-weight:900;letter-spacing:0.6em;}
.hot_time_w {display:block; position:relative; background:url('../../img/main/time_bg.png') no-repeat center bottom;height:124px;} 
.h_time_t_box {position:relative;display:block; margin:0 auto; color:#000;font-size:0.83em; font-weight:bold;letter-spacing:-1em; text-align:center; letter-spacing:0.05em;font-family:'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif; }
.h_t_number li {position:absolute;top:90px;left:548px;text-align:right;letter-spacing:-0.01em;}
.h_t_number1 {display:inline-block;margin-left:21px;width:23px;}
.h_t_number2 {display:inline-block;margin-left:69px;width:23px;}
.h_t_number3 {display:inline-block;margin-left:109px;width:23px;}
.h_t_number4 {display:inline-block;margin-left:149px;width:23px;}

/*--자주구매한상품--*/
.user_nick {color:#555; font-weight:normal}
.user_buy_wrap {overflow:hidden;position:relative;z-index:50}
.user_buy {overflow:hidden;width:1110px}
.user_buy li {float:left;width:208px;height:300px;vertical-align:top;margin:0 14px 14px 0}
.user_buy_lst_box {overflow:hidden;position:relative;}
.user_buy_box img {width:206px;height:206px;border:1px solid #eee}
.user_buy_box_last img {width:206px;height:206px;border:1px solid #eee}
.ds_best_area_wrap {overflow:hidden;position:relative;display:block;border-top:0px solid #fafafa;padding:6px 8px;margin-bottom:8px;background:none;text-align:center} 
.ds_best_area {overflow:hidden;position:relative;display:blocks;padding:4px 0px;background:none;border-top:1px solid #fafafa}
.ds_b_tit {overflow:hidden;margin:0 auto;height:40px;font-size:15px;color:#444;text-align:center;line-height:1.3em;text-overflow:-o-ellipsis-lastline;text-overflow:ellipsis;display:inline-block;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;word-wrap:break-word;word-break:break-all;white-space:normal;max-height:2.7em; font-weight:normal}
.ds_b_price { display:block; margin-top:10px;color:#000;font-weight:700;font-size:16px;letter-spacing:-1px}
.b_list_dc_2 {margin:-1px 0px 0px 2px;color:#000;font-weight:normal;font-size:0.8em}
/*--//자주구매한상품--*/

/*//20181113 타임영역 추가*/


/*20181116 사진영역 추가*/
.d_photo2 {float:left;display:block;overflow:hidden;position:relative;top:0px;left:16px;width:50px;height:50px;}
.d_photo_view {position:relative;vertical-align:middle;}
.d_photo_view img {vertical-align:middle;border:none;width:50px}
.d_picture_count_box {position:absolute;top:29px;right:0px;width:30px;background:#5f5f5f;border-top-left-radius:3px;text-align:center;opacity:0.8}
.d_picture_count {position:relative;padding:0px 0px;font-size:0.7em;font-weight:bold;color:#fff;text-align:center;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif}
/*//20181116 사진영역 추가*/

/*20190305 상세>상품후기 식단플랜 추가*/
.comms_nicks2 {display: inline-table;margin:12px 0 0 0px;padding:0px 0px;height:12px;line-height:14px;color:#555;font-weight:normal; }
.chall_ing_txt {display:block;color:#4cade4;font-size:1em;}
.chall_end {display:block;color:#e86c6c;font-size:1.1em;text-decoration: underline;font-weight:600;}

.f_plan_tit_box {overflow:hidden;position:relative;padding:0px 0 20px;letter-spacing:-0.01em}
.food_plan_tit { display:block;color:#000;font-size:22px;font-weight:600; text-align:center}

.food_plan {overflow:hidden;width:1112px}
.food_plan li {float:left;width:172px;height:226px;vertical-align:top;margin:0 13px 13px 0}
.food_plan_box {overflow:hidden;position:relative}
.food_plan_box img {width:172px;height:172px;border:1px solid #eee}
.f_plan_id {display:block; height:38px; line-height:38px;text-align:center; border:1px solid #eee; border-top:none; font-size:1.05em; color:#777; }

.grid_n_fp {overflow:hidden; position:relative; width:174px;height:214px; bottom:0px; color:#fff; box-sizing:border-box;z-index:1000;  }
.grid_n_fp:hover .tmb_hover_n {overflow:hidden;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-bottom:none;width:168px;filter:alpha(opacity=100);opacity:1;transition:all .01s}
.grid_n_fp:hover .tmb_hover_n2 {overflow:hidden;background:none;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-top:none;width:168px;filter:alpha(opacity=100);opacity:1;transition:all .01s}}
/*//20190305 상세>상품후기 식단플랜 추가*/

/*20190128 휴대폰 본인 확인 팝업 추가*/
.alarm_pop_tit2 {background:#f4f4f4;color:#222;text-align:center;display: block; font-size: 15px; letter-spacing: -0.03em;padding:15px 0 10px 0px;border-bottom: 1px solid #eee;font-weight: 600}
.alarm_pop_tit22 {background:#f4f4f4;color:#222;text-align:center;display: block; font-size: 15px; letter-spacing: -0.03em;padding:15px 0 10px 0px;border-bottom: 1px solid #eee;font-weight: 600}
.sms_info_txt {position:relative;padding:15px 15px 0;font-size: 1.1em}
.sms_info_tit_txt {padding-top: 10px;font-size:15px; color: #000; line-height:1em;font-weight: 600}
.sms_info_tit_txt2 {font-size:12px; color: #777; line-height:1em;font-weight: normal;}
.sms_info_tit_txt3 {font-size:12px; color: #777; line-height:1em;font-weight: 600;}
.order_sms_wrap { background:#fff;position:relativetext-align:center;font-size:17px;color:#666;font-weight:700;padding:15px;}
.order_sms_pop_tbl {table-layout: fixed; width: 100%;}
.order_sms_pop_tbl tr td {padding:5px 0;text-align:left;color:#777;}
.sms_check {margin-left:5px;vertical-align: top}

.btn_sms_off {margin-left: 10px;padding:10px 0;display:block;background:#c0c0c0;border:1px solid #c9c9c9;font-size:14px;font-weight:600;line-height:1.6;color:#fff;text-align:center;white-space:nowrap}
.btn_sms_on {margin-left: 10px;padding:10px 0;display:block;background:#333;border:1px solid #c9c9c9;font-size:14px;font-weight:600;line-height:1.6;color:#fff;text-align:center;white-space:nowrap}

.sms_fc {color:#e86c6c}
/*//20190128 휴대폰 본인 확인 팝업 추가*/

/*20190211 휴대폰 본인 확인 팝업 버튼 추가*/
.obank_pop_btn_on {display: inline-block;background:#fe5155;border:1px solid #fe5155;color:#fff;font-weight: 600;font-size:13px;padding:0 70px;height:36px;line-height:36px;margin:20px 0 10px 0;}


/*20190325 개인정보취급방침 표 추가*/
.tbl_info_noti {width:82%;background:#fff;border-left:1px solid #bfbfbf; border-top:1px solid #bfbfbf; border-bottom:1px solid #bfbfbf;margin-top:10px;}
.tbl_info_noti th {height:30px;background:#d7d7d7;border-bottom:1px solid #bfbfbf;border-right:1px solid #bfbfbf;font-size:1.1em;color:#333;line-height:30px;font-weight:normal;vertical-align:middle;text-align:center}
.tbl_info_noti td {height:30px;background:#f9f9f9;padding:0px 20px;border-bottom:1px solid #bfbfbf;border-right:1px solid #bfbfbf;color:#666;line-height:30px;font-size:1em;font-weight:normal;vertical-align:middle;}
.tbl_a {color:#1d77db;text-decoration: underline;}
/*//20190325 개인정보취급방침 표 추가*/

/*---20190327 상세 쿠폰받기 영역 추가---*/
.btn_coupon_downs {display:inline-block;padding:1px 10px 2px;font-size:0.9em;background:#fff;border:1px solid #fe5155;color:#fe5155;letter-spacing:-0.06em;font-weight:600}
.btn_coupon_downs:hover {padding:2px 8px;color:#fe5155;border:1px solid #000;letter-spacing:-0.06em;transition:all .2s}
.ico_coupons_down img { display:inline-block; vertical-align:middle; margin-left:7px;}

/*쿠폰팝업*/
.coupn_pop_boxs {position:relative;}
.coupn_pop_box {padding:10px 10px 0px;position:absolute;top:270px;left:0px;background:#fff;border:1px solid #aaa;box-sizing: border-box;border-top-left-radius:4px;border-top-right-radius:4px;font-size:16px;width:510px; line-height:22px; z-index:300;  }
.coupn_pop_tit {position:relative;color:#fe5155;display: block; font-size: 0.95em; letter-spacing: -1px;padding:5px 10px 16px; border-bottom:1px solid #e1e1e1; font-weight:600}
.coupn_pin {position:absolute; left:108px; top:-6px;z-index:301;}
.coupn_ico_close { position:absolute; right:10px; top:8px; }

.coupon_pop_box_n {padding:2px 10px;position:absolute;top:325px;left:0px;background:#fff; border:1px solid #aaa; border-top:none;box-sizing: border-box;border-bottom-left-radius:4px;border-bottom-right-radius:4px;overflow:hidden;font-size:16px;width:510px; line-height:22px;z-index:300;}
.coupon_p_scroll {overflow-y:scroll;width:500px;max-height:362px;z-index:300}

.coupn_area {margin:0px; padding-bottom:0px; background-color: #fff; border:0px solid #ddd}
.coupn_area ul {overflow:hidden}
.coupn_area li {display:block; padding:0px 6px}
.coupn_area li.last {position:relative;background:#fff; border-bottom:none}
.coupn_box {position:relative;background:#fff; border-bottom:1px dashed #e2e2e8; margin-right:10px;}
.coupn_box a {display:block;height:100%;  }
.coupn_box a:hover { color:#fe5155 }
.coupn_boxss {overflow:hidden;display:table-cell;vertical-align:middle; padding:10px 5px;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif;}

.coupn_thum {overflow:hidden;display:table-cell; vertical-align:middle; position:relative; top:0px; right:0px; width:151px;z-index:20;}

.coupn_thums { float:left;display:block; margin:0 auto;width:106px;height:68px; padding-right:20px;border-left:4px solid #fe5155; border-top:1px solid #f0aaac; border-bottom:1px solid #f0aaac;text-align: center;}
.coupn_pay {display: block;vertical-align:top; padding-top:13px;font-size:0.8em; color:#000; line-height:1.6em; text-align: center; font-weight:600;}
.coupn_point {display: block;vertical-align:top;height:24px; line-height:24px; font-size:24px; color:#fe5155; text-align:center; font-weight:bold; letter-spacing:-0.07em;}
.coupn_p_t { display:inline-table; vertical-align:top; margin:3px 3px 0px 2px;font-size:15px;color:#fe5155;font-weight:600;}
.ico_coupn_down  { position:absolute; top:15px; right:0px;background:#fe5155; width:34px; height:70px;border-left:1px dashed #fff;}
.ico_coupn_down img { display:inline-block; vertical-align:top; margin:25px 10px 0px; z-index:305 }
.coupn_t_box {overflow:hidden;display:table-cell;height:100px;vertical-align:middle;}
.coupn_t_tit { overflow:hidden; display:block; width:294px; margin:1px 18px 9px 0px; font-size:1.02em;line-height:1.3em;font-weight:600; color:#000;text-overflow:ellipsis;text-overflow:-o-ellipsis-lastline;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;word-wrap:break-word;word-break:break-all;white-space:normal; max-height:2.7em;}
.coupn_t_txt {overflow:hidden;padding:0px;font-size:13px;color:#666;text-align:left;line-height:1.5em;text-overflow:ellipsis;display:block;white-space:normal;letter-spacing:-0.03em}
.coupn_t_txt img { margin:2px 2px 0px 1px; opacity:0.9}

.coupn_thums_c { float:left;display:block; margin:0 auto;width:108px;height:68px;border-left:4px solid #ccc; border-top:1px solid #ccc; border-bottom:1px solid #ccc;text-align: center;}
.coupn_pay_c {display: block;vertical-align:top; padding-top:13px;font-size:0.8em; color:#ccc; line-height:1.6em; text-align: center; font-weight:600;}
.coupn_point_c {display: block;vertical-align:top;height:24px; line-height:24px; font-size:24px; color:#ccc; text-align:center; font-weight:bold; letter-spacing:-0.07em;}
.coupn_p_t_c { display:inline-table; vertical-align:top; margin:3px 3px 0px 2px;font-size:15px;color:#ccc;font-weight:600;}
.ico_coupn_down_c  { position:absolute; top:15px; right:0px;background:#ccc; width:34px; height:70px;border-left:1px dashed #fff;}
.ico_coupn_down_c img { display:inline-block; vertical-align:top; margin:25px 10px 0px; z-index:305 }
.coupn_t_tit_c { overflow:hidden; display:block; width:294px; margin:1px 18px 9px 0px; font-size:1.02em;line-height:1.3em;font-weight:600; color:#bbb;text-overflow:ellipsis;text-overflow:-o-ellipsis-lastline;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;word-wrap:break-word;word-break:break-all;white-space:normal; max-height:2.7em; }
.coupn_t_txt_c {overflow:hidden;padding:0px;font-size:13px;color:#bbb;text-align:left;line-height:1.5em;text-overflow:ellipsis;display:block;white-space:normal;letter-spacing:-0.03em}
.coupn_t_txt_c img { margin:2px 2px 0px 1px; opacity:0.9}

.coupon_tip {overflow:hidden; background:#fff; padding:15px 8px; border-top:1px solid #ccc; margin-right:10px;}
.coupon_tip li { display:inline-block;line-height:1.2em; font-size:0.85em; color:#777; letter-spacing:-0.05em; }
.coupon_tip em { font-weight:600}
/*//쿠폰팝업*/
/*//---20190327 상세 쿠폰받기 영역 추가---*/

/*---20190329 로그인 UI 신규-->
/*회원가입 wrap 추가*/
.main #container .contens {width:650px;margin:0px auto;}
/*//회원가입 wrap 추가*/

/*회원가입*/
.ipt{width:243px;height:35px;padding-left:11px;line-height:35px;background:#f9f9f9;border:1px solid #d6d6d6;color:#7e7e7e;font-family: 'Nanum Gothic','맑은 고딕','돋움',sans-serif;font-size:13px}
.join {margin:0 auto;width:650px;float:none;padding-top:45px}
.join .txt-tit {font-size:30px;margin-bottom:27px;text-align:center;border-bottom:0 none;font-weight: 500}
.join .txt-h2{text-align:center;line-height:1.5;margin-bottom:43px;color:#5c5c5c;font-weight:normal;font-size:15px;}
.join .txt-h4{text-align:center;line-height:1.5;margin-bottom:40px;color:#5c5c5c;font-weight:normal;font-size:17px;}
.join .tbl-y input{width:222px}
.join .h3-wrap{margin-bottom:17px;border-top:2px solid #ff4c4d;padding-top:25px}
.join h3{display: block;float:left;font-size:20px;color:#2e2e2e;padding:0;border:0 none;margin:0;letter-spacing:-1px}
.join .txt-h3{float:left;color:#7a7a7a;padding-left:10px;background:url('../../img/ico/bar_12.gif') no-repeat left 2px;margin-left:14px;margin-top:3px;font-weight:500}
.join .txt-choice{padding:20px 0 17px 0;border-bottom:1px solid #e9e9e9}
.join .txt-choice label{font-size:12px;font-weight:500;margin-left:7px}
/*//회원가입*/

/*전체동의외 추가*/
/*20190416 이용약관외 한줄로 변경*/
.agree_all {display:block; margin:30px 5px 0px;font-size:1.3em;text-align:left;vertical-align:top; color:#000; font-weight:500;}
.agree_txt { color:#000; margin-left:-5px}
.agrees_ws {display:block;width:750px; }
.agrees {display: inline-block;margin-left:5px;font-size:1.13em;text-align:left;vertical-align:top;color:#333; letter-spacing:-0.05em;font-weight:500;}
.agrees a {display: inline-block;vertical-align:top; margin-top:1px;color:#ef0202;font-weight:400;text-decoration:underline}
.agrees2 {font-weight:400;text-decoration:underline}
/*//20190416 이용약관외 한줄로 변경*/

/*//전체동의외 추가*/
.agreement_wrap input[type="checkbox"] {display:none;}
.agreement_wrap input[type="checkbox"] + label {color:#f2f2f2;}
.agreement_wrap input[type="checkbox"] + label span {display:inline-block;width:19px;height:19px;margin:-2px 10px 0 0;vertical-align:middle; background:url(/img/ico/check_sheet.png) left top no-repeat;cursor:pointer;}
.agreement_wrap input[type="checkbox"]:checked + label span {background:url(/img/ico/check_sheet.png) -19px top no-repeat;}


/*로그인*/
.contents_w {min-height:615px;float:none;padding-top:45px;position:relative;}
.contents_w .login_nw_w {margin:0 auto;width:545px;padding-top:15px;text-align: center;display:block;}
.contents_w .login_nw_w .login_nw {overflow: hidden;margin:0 auto;text-align: center;display:inline-block;background:#fff;vertical-align:top; width:340px;padding:0px 30px; margin:0px 30px;}
.contents_w .login_nw {margin:0 auto;width:420px;float:none;border:0px solid #f1f1f1;border-radius:4px;}

.login_btit_w { display:block;margin-bottom:0px;padding:20px 20px 18px;background:#f9f9f9;border-bottom:2px solid #333;text-align:center;}
.login_btit {display:block;margin:5px 0px 10px;font-size:42px;color:#333; font-weight:800}
.login_btxt {display:block;margin:0px 0px 5px;font-size:1em;color:#888; line-height:1.3em;font-weight:700; letter-spacing:0.05em}

.joinus_wrap {position:relative;}
.login_nw_t { display:block; text-align:center; font-weight:normal}
.login_nw_tit {display:block; padding:10px 0px 30px;font-size:2.8em; color:#222; text-align:center; letter-spacing:-0.06em;font-weight:800}
.login_nw_txt {display:block;padding:0px 0px 20px; margin:0 -30px;font-size:14px; color:#888; line-height:1.5em;text-align:center;font-weight:0}
.login_nw_txt2 {display:block;position:relative;padding:20px 0px 20px; margin:0 -20px 0px -18px;font-size:0.9em; color:#666; line-height:1.5em;text-align:left;font-weight:normal;}
.login_nw_txt2 li {line-height:1.8em;}
.login_nw_txt2 img {margin-right:5px;}
.login_nw_txt2 a {color:#44a6e6;text-decoration:underline}

.tbl_joinus {display:table;width:100%}
.tbl_joinus th {height:40px;font-size:1em;color:#323232;font-weight:bold;font-family:"나눔고딕",NanumGothic,sans-serif;vertical-align:middle;text-align:left}
.tbl_joinus td {padding-bottom:8px;color:#6e6e7d}
.tbl_joinus_input2 {height:45px;line-height:45px;background:#fff;color:#bbb;border:1px solid #ccc;font-size:1em;padding:0 12px;vertical-align:middle}
.tbl_input_box {position:relative; padding-right:14px;}
.tbl_joinus_input2[type=text]::-webkit-input-placeholder {color:#bbb;}
.tbl_joinus_input2[type=password]::-webkit-input-placeholder {color:#bbb}
.tbl_joinus_input2[type=tel]::-webkit-input-placeholder {color:#bbb}
.tbl_joinus_input2[type=text]::-moz-placeholder {color:#bbb}
.tbl_joinus_input2[type=password]::-moz-placeholder {color:#bbb}
.tbl_joinus_input2[type=tel]::-moz-placeholder {color:#bbb}
.tbl_joinus_input2 {height:45px;line-height:45px;background:#fff;color:#9d9d9d;border:1px solid #ccc;font-size:1em;padding:0 12px;vertical-align:middle}
.inputno {overflow:hidden;height:45px;line-height:45px;width:100%;border-style:none;border-top-width:0px;border-bottom-width:0px;background:none;outline:none}
.logintxt {padding:15px;font-size:1.25em;text-decoration:underline;color:#555;line-height:1.5; font-weight:500;text-align:center;display: inline-block;}
.btn_login_sns {margin:10px 0px 0px;padding:14px 10px;border:1px solid #ef0202;background:#ef0202;border-radius:2px;color:#fff;text-align:center;font-size:14px;font-weight:500;}
/*//로그인*/

/*sns 로그인*/
.sns_login_w {display:block;text-align:center;}
.btn_joinus_sns {display:block;height:40px;line-height:40px;border:1px solid #fe6666;background:#fff;border-radius:2px;color:#fe6666;text-align:center;font-size:1.1em;font-weight:600;font-family:"나눔고딕",NanumGothic,sans-serif}
.sns_logb {position:relative;display:block;width:100%; margin-top:20px;}
.sns_logbox { position:relative; display:block;}
.sns_logbox li {position:relative;margin-bottom:10px; line-height:28px;}
.sns_logbox img {float:left; margin:2px 0px 0px 9px;width:28px;vertical-align:middle}
.sns_logbox a {display:block;padding:7px 0;}
.sns_logbox em {position:relative;color:#fff;font-weight:500}
.sns_logbox em.kka {position:relative;color:#3c1e1e;font-weight:500}
.sns_log_naver2 {display:block;background:#00c73c;border:1px solid #00c73c;text-align:center;font-size:1.1em;border-radius:2px}
.sns_log_kakao {display:block;background:#fae200;border:1px solid #fae200;text-align:center;font-size:1.1em;border-radius:2px}
.sns_log_10 {display:block;background:#fff; border:1px solid #333;text-align:center;font-size:1.1em;border-radius:2px}
.sns_naver_line {position:absolute; left:47px; top:0px;height:44px; width:1px; background:#4cd475; opacity:0.9}
.sns_kakao_line {position:absolute; left:47px; top:0px;height:44px; width:1px; background:#faeb5f; opacity:0.9}
.sns_10_t {color:#333;font-weight:500}
/*//sns 로그인*/

/* 회원가입완료 */
.join .complet{width:444px;border:1px solid #cacaca;margin:50px auto 0}
.join .complet ul{width:407px;margin:0 auto;padding:5px 0}
.join .complet li{padding:20px 0; border-top:1px solid #e3e3e3;overflow:hidden;font-size: 14px;}
.join .complet li:first-child{border-top:0 none}
.join .complet li strong{float:left;padding-left:5px;width:100px;font-weight:500;}
.join .complet li em{float:left;width:302px}
.btn-ac{text-align:center;margin-top:30px}
.btn-ac a{display:inline-block;margin:0 8px}
.c_best_tit {position:relative;margin-bottom:25px;width:100%;text-align:left;color:#444;font-size:22px;font-weight:normal;letter-spacing:-0.005em;}
.c_best_tit span { font-weight:700}
.c_best_tit a:hover { display: block; color:#999; width:500px}
.c_best_list_w {overflow:hidden;position:relative; z-index:1}
.c_best_list {position:relative ;}
.c_best_list li {position:relative;display:inline-block;width:266px;height:450px; margin:0 12px 20px 0;float:left;vertical-align:top; }
.c_best_list li.last {width:266px;margin-right:0px;float:left;vertical-align:top}
/* //회원가입완료 */

/*회원가입 하단 버튼 추가*/
.mem_btn_box .mem_btn_ok, .mem_btn_box .mem_btn_cancel{display: inline-block;font-weight:600;font-size:18px;width:210px;height:53px;line-height:54px;}
.mem_btn_ok {background:#fe4f4f; border:1px solid #fe4f4f;color:#fff;height:53px;}
.mem_btn_ok:hover {background:#fff; border:1px solid #000; color:#000;height:53px;}
.mem_btn_cancel {height:53px; border:1px solid #8b8b8b; background:#8b8b8b; color:#fff}
.mem_btn_cancel:hover {background:#fff; border:1px solid #000; color:#000;height:53px;}
/*//회원가입 하단 버튼 추가*/

/*sns 로그인*/
.sns_login_w {display:block;text-align:center;}
.btn_joinus_sns {display:block;height:40px;line-height:40px;border:1px solid #fe6666;background:#fff;border-radius:2px;color:#fe6666;text-align:center;font-size:1.1em;font-weight:600;font-family:"나눔고딕",NanumGothic,sans-serif}
.sns_logb {position:relative;display:block;width:100%; margin-top:20px;}
.sns_logbox { position:relative; display:block;}
.sns_logbox li {position:relative;margin-bottom:10px; line-height:28px;}
.sns_logbox img {float:left; margin:2px 0px 0px 9px;width:28px;vertical-align:middle}
.sns_logbox a {display:block;padding:7px 0;}
.sns_logbox em {position:relative;color:#fff;font-weight:500}
.sns_logbox em.kka {position:relative;color:#3c1e1e;font-weight:500}
.sns_log_naver2 {display:block;background:#00c73c;border:1px solid #00c73c;text-align:center;font-size:1.1em;border-radius:2px}
.sns_log_kakao {display:block;background:#fae200;border:1px solid #fae200;text-align:center;font-size:1.1em;border-radius:2px}
.sns_log_10 {display:block;background:#fff; border:1px solid #333;text-align:center;font-size:1.1em;border-radius:2px}
.sns_naver_line {position:absolute; left:47px; top:0px;height:44px; width:1px; background:#4cd475; opacity:0.9}
.sns_kakao_line {position:absolute; left:47px; top:0px;height:44px; width:1px; background:#faeb5f; opacity:0.9}
.sns_10_t {color:#333;font-weight:500}
/*//sns 로그인*/

/*20190422 SNS로그인영역 추가*/
.sns_logins_w {display:block;margin:25px 0px; border-top:1px solid #e1e1e1}
.sns_logins {display:block;text-align:center; margin:25px 104px;}
.sns_logsbox {position:relative;display:block;width:100%; }
.sns_logsbox li {position:relative;display:block;margin-bottom:15px}
.sns_logsbox img {float:left; display:inline-table;width:28px; margin:12px;vertical-align:middle}
.sns_logsbox a {display:block;padding:0px 0 0px;}
.sns_logsbox a:hover {border:1px solid #000; color:#000;height:50px;}
.sns_logsbox em {position:relative;color:#fff;font-weight:600; font-size:1.1em}
.sns_logsbox .kkas {position:relative;color:#3c1e1e;font-weight:600}
.sns_logs_naver {display:block;height:50px;line-height:52px;background:#00c73c;border:1px solid #00c73c;text-align:center;font-size:1.25em;border-radius:2px}
.sns_logs_kakao {display:block;height:50px;line-height:52px;background:#fae200;border:1px solid #fae200;text-align:center;font-size:1.25em;border-radius:2px}
.sns_navers_line {position:absolute; left:50px;top:1px;height:50px;line-height:50px; width:1px; background:#4cd475; opacity:0.9}
.sns_kakaos_line {position:absolute; left:50px;top:1px;height:50px;line-height:50px; width:1px; background:#f9ef95; opacity:0.9}
/*//20190422 SNS로그인영역 추가*/
/*---//20190329 로그인 UI 신규-->

/*20190429  메인광고 팝업 추가*/
.ad_popup_wrap {position:relative;height:100%; left:0; position:fixed; top:0; width: 100%; z-index: 10999;}
.ad_popup_bg {background:rgba(0,0,0,0.8);height: 100%;left: 0; position: absolute; top: 0; width: 100%}
.ad_bnr {position: fixed; left: 50%; top: 50%;z-index: 99999; -webkit-transform: translate(-50%,-50%); transform: translate(-50%,-50%);  display: none;}

.ad_depthmn_box {overflow:hidden;background:#fafafa;padding:0px;border-top:1px solid #dedede;}
.ad_depthmn{display:table;background:none;width:100%;padding:0px;text-align:center;}
.ad_depthmn_l{display:table-cell;vertical-align:top;width:50%; border-right:1px solid #dedede}
a.ad_depthmn_a {padding:0px 10px;background:none;font-size:11px; height:30px; line-height:31px;color:#666;}
.ad_depthmn_a:hover{padding:0px 10px;background:none;font-size:11px;height:30px; line-height:31px;color:#000;}
.ad_depthmn_l:first-child .z_depthmn_a{border-left:0px solid #dedede;}
.ad_depthmn_l:last-child .z_depthmn_a{border-right:none}
.ad_depthmn_l:first-child .z_depthmn_a:after{display:none}
.ad_depthmn_l:last-child .z_depthmn_a:after{display:none;border:none}
.ad_last {border-right:none}

/*20190503 배송비 쿠폰 팝업 추가*/
.view_coupon_wrap {position:relative;height:100%; left:0; position:fixed; top:0; width: 100%; z-index: 10999;}
.view_coupon_bg {background:rgba(0,0,0,0.3);height: 100%;left: 0; position: absolute; top: 0; width: 100%}
.view_coupon_c {position: fixed; left: 50%; top: 50%;z-index: 99999;  transform: translate(-50%,-50%);  display: none;}
.view_coupon_box {padding:0px;background:#fff;text-align: center;}
.view_coupon_box2 {width:280px;height:158px;padding:20px 0 8px 0;background:#fff;text-align: center;}
.view_coupon_txt {color:#333;font-size: 14px;padding-top:15px;line-height: 1.5}

.view_coupon_depthmn_box {overflow:hidden;background:#fff;padding:0px;border-top:1px solid #dedede;}
.view_coupon_depthmn_box2 {overflow:hidden;background:#eee;padding:0px;}
.view_coupon_depthmn_box3 {overflow:hidden;background:#a2a2a2;padding:0px;}
.view_coupon_depthmn{display:table;background:none;width:100%;padding:0px;text-align:center;}
.view_coupon_depthmn_l{display:table-cell;vertical-align:top;width:50%; border-right:1px solid #dedede}
a.view_coupon_depthmn_a {padding:0px 10px;background:none;font-size:12px; height:40px; line-height:41px;color:#666;}
a.view_coupon_depthmn_a2 {display:block;padding:0px 10px;background:none;font-size:12px; height:40px; line-height:41px;color:#fff;}
.view_coupon_depthmn_a:hover{padding:0px 10px;background:none;font-size:12px;height:40px; line-height:41px;color:#000;}
.view_coupon_depthmn_l:first-child .z_depthmn_a{border-left:0px solid #dedede;}
.view_coupon_depthmn_l:last-child .z_depthmn_a{border-right:none}
.view_coupon_depthmn_l:first-child .z_depthmn_a:after{display:none}
.view_coupon_depthmn_l:last-child .z_depthmn_a:after{display:none;border:none}
.view_coupon_last {border-right:none}
/*//20190503 배송비 쿠폰 팝업 추가*/

/*---20190523 다신샵 쿠폰/혜택 신규---*/
/*상단이미지 및 탭메뉴*/
.m_slides_wrap2{position:relative;width:100%;text-align:center;margin:0 auto;}
.m_slides_wrap2 .bx-wrapper {text-align:left}
.slides_container2 {display:block;position:relative; top:185px;height:624px;z-index:200;}
.slides_container2 div.slides_navi a{z-index: 55;}

.slides_container_app {display:block;position:relative; top:51px;height:518px;z-index:200;}
.slides_container_app div.slides_navi a{z-index: 55;}

.m_slides_lst2{overflow:hidden;height:564px;}
.m_slides_lst2 li{float:left;width:100%;background:no-repeat center top;}
/*//20190626 쿠폰혜택 상단영역 높이값 변경*/

/*20190626 상단 버튼영역 위치변경*/
.be_btns{ width:100%; z-index:1000}
.be_btns a{ position:relative;display:inline-block;height:564px;} 
.be_btns a.btn_be_login {display:inline-block;width:280px;margin:370px 0px 0px -536px;}
.be_btns a.btn_be_app {display:inline-block;width:280px;margin:370px 0px 0px 8px;}

.be_btns_app {width:100%; z-index:1000}
.be_btns_app a{ position:relative;display:inline-block;height:534px;} 
.be_btns_app a.btn_be_login {display:inline-block;width:280px;margin:320px 0px 0px -514px;}
.be_btns_app a.btn_be_app {display:inline-block;width:280px;margin:320px 0px 0px 8px;}
/*//20190626 상단 버튼영역 위치변경*/

.be_tab_w {position:relative;width:100%;background:#72756f;z-index:130; }
.be_tab {position:absolute; bottom:0px;width:100%;background:rgba(67,43,30,0.6); height:102px;margin:0 auto; border-bottom:1px solid #e9e9e9;text-align:center;z-index:1000}
.be_tab_nomal { display:block; width:1100px;border-left:0px solid #e9e9e9;margin:0 auto;}
.be_tab_nomal li {display: inline-block; width:266px;height:100px;font-weight: 600;color:#222;}
.be_tab_nomal li a {display:inline-block;width:266px;height:100px; font-weight: 600; font-size: 1.2em;}
.be_tab_nomal li a span { display:inline-table; vertical-align:top;margin-top:-70px;width:264px; z-index:1000}
.be_tab_nomal li a::before{float:left;width:268px;height:100px;margin:0px 0px 0px -3.5px;border-left:1px solid rgba(255,2555,255,0.05);content:''}
.be_tab_nomal li a::after{float:right;width:268px;height:100px;margin-top:-113px;border-right:1px solid rgba(82,66,57,0.6);content:''}
.be_tab_nomal li a.first::after{float:left;width:268px;height:100px;margin:-113px 0px 0px -5px;border-left:1px solid rgba(82,66,57,0.6);content:''}
/*//상단이미지 및 탭메뉴*/
.textimg { display:block;width:100%;min-width:1100px;padding :130px 0px 50px;}
.textimg img { text-align:center; vertical-align:top; border:none}
.textimg2 { display:block;width:100%;min-width:1100px;padding:44px 0px 28px; background:#f8f5f0}
.textimg2 img { text-align:center; vertical-align:top; border:none}

/*-----20190626 첫구매 수정-----*/
/*--혜택1. 첫구매 인기상품 100원--*/
.benefit_tit_bg {display:block;width:100%;height:210px;margin:4px auto 0px; background: url(../../img/event/20190509/benefit_step01_bg.png) repeat; text-align: center; }
.benefit_tit_bg img { padding:46px 0px 0px;text-align:center; vertical-align:top; border:none; margin:}
.benefit_list_bga {display:block;width:100%;margin:0px auto; padding:46px 0px;background:#f5f6f8; text-align: center; } /*20190725 인기상품100원 높이제한 삭제처리*/


/*첫구매 리스트*/
/*--20190725 첫구매 리스트 변경--*/
.be_best100_wrap { overflow:hidden;display:block;width:1162px;margin:20px auto 0px; *zoom:1; }
.be_best100_tit {position:relative;width:100%; margin:0px auto; z-index:500}
.be_best100_tit img {vertical-align:top; border:none}

.b_best100_list_w {overflow:hidden;display:block;position:relative;margin:-23px -10px 0px 0px;background:#fff; padding:63px 0px 0px 40px; border-top:1px solid #222957;} 
.b_best100_list {overflow:hidden;position:relative;;}
.b_best100_list li {position:relative;display:inline-block;width:354px;margin:0 10px -20px 0;float:left;vertical-align:top}
.b_best100_list li.last { margin-right:0px}

.b_step01_tbox {position:relative;display:block;background:none;padding:18px 16px 6px;height:80px;font-weight:normal;text-align:left; }
.b_step01_img {width:352px;height:352px;border:0px solid #f0f1f1;vertical-align:top;}
.b_step01_img img {border:none;width:352px;height:352px;}
.b_step01_t_tit {overflow:hidden;display:block;width:322px;color:#232323;padding-bottom:6px;font-size:17px;font-weight:600;text-overflow:ellipsis;white-space:nowrap;letter-spacing:0px}
.b_step01_tbox .b_step01_t_tit:hover {color:#fe6b6b;}
.b_step01_t_txt {overflow:hidden;display:block;margin-top:10px;color:#888;font-size:14px;letter-spacing:0px;line-height:1.4em;text-overflow:ellipsis;text-overflow:-o-ellipsis-lastline;display:inline-block;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;word-wrap:break-word;word-break:break-all;white-space:normal;max-height:3em}

.b_step01_price_w {position:relative;margin-top:10px}
.b_step01_price {display:inline-block}
.b_step01_per_price {display: table-cell;font-size:15px;color:#909090;text-decoration:line-through;font-weight:normal;letter-spacing:-1px}

.b_step01_dc {color:#666;font-weight:600;font-size:1.08em;letter-spacing:-1px}
.b_step01_li_dc {padding-left:5px;color:#fc2d2d;font-weight:600;font-size:22px;letter-spacing:-0.05em;font-family:'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}

.benefit_step01_tip { display:block; float:left;padding:30px 0px 0px; margin-left:10px; }
/*--//20190725 첫구매 리스트 변경--*/
/*//첫구매 리스트*/
/*--혜택1. 첫구매 인기상품 100원--*/
/*-----//20190626 첫구매 수정-----*/

/*--혜택2. 회원가입 2천원할인+2% 적립--*/
.benefit_tit_bg2 {display:block;width:100%;height:250px;margin:0px auto; padding-top:10px; background:#f6efed; text-align: center; border-top:1px solid #e4dad7}
.benefit_tit_bg2 img { padding:46px 0px 0px;text-align:center; vertical-align:top; border:none; margin:}
.benefit_list_bga2 {display:block;width:100%;height:590px;margin:0px auto; padding:46px 0px;background:#f6efed; text-align: center;  }
.b_2000sale_list_w {overflow:hidden;display:block;position:relative;height:324px; margin-top:-23px;background:#fff; padding:70px 40px 0px; border-top:1px solid #222957}
.benefit_step02_joinus {display:block; float:right;margin:16px 8px 0px 0px;}
.benefit_step02_joinus a {display:block;}
.benefit_step02_tip { display:block; float:left;padding:50px 0px 0px; margin-left:10px; }
/*--//혜택2. 회원가입 2천원할인+2% 적립--*/

/*--혜택3. 할인쿠폰 다운--*/
.b_coupon_wrap { overflow:hidden;display:block;width:1192px;margin:25px auto 0px; *zoom:1;  } /*20190626 쿠폰영역 width값 수정*/
.benefit_tit_bg3 {display:block;width:100%;height:264px;margin:0px auto; background:#eef5f6; text-align: center;border-top:1px solid #dbe5e6 ; }
.benefit_tit_bg3 img { padding:54px 0px 0px;text-align:center; vertical-align:top; border:none; margin:}
.benefit_list_bga3 {display:block;width:100%;height:690px;margin:0px auto; padding:36px 0px;background:#eef5f6; text-align: center}
/*할인쿠폰 다운 리스트*/
.b_coupon_list_w {overflow:hidden;display:block;position:relative;height:450px;background:#edeeef;padding:50px 38px 0px 46px; border-top:0px solid #222957} /*20190626 쿠폰영역 bg컬러수정*/
.b_coupon_list {overflow:hidden;position:relative;}
.b_coupon_list li {position:relative;display:inline-block;width:349px;margin:0 33px 100px 0;float:left;vertical-align:top;}
.b_coupon_list li.last { margin-right:-10px;width:349px; }
.b_step03_img {border:0px solid #f0f1f1;vertical-align:top;}
.b_step03_img img {border:none;}
/*//할인쿠폰 다운 리스트*/
.textimg3 { display:block;width:100%;min-width:1100px;padding:20px 0px 0px; margin-top:0px;}
.textimg3 img { text-align:center; vertical-align:top; border:none}
/*--혜택3. 첫구매 인기상품 100원--*/

/*인기상품BEST*/
/*20190626 인기상품BEST영역 수정*/ 
/*--20190725 인기상품BEST영역 추가수정--*/
.b_bests_wrap {position:relative;width:1113px;margin:0px auto; *zoom:1}
.b_bests_tit {position:relative; display:block;width:100%; margin:0 auto;}
.b_bests_tit img {margin:80px 0px 60px;vertical-align:top}]

.b_bests_list_wrap {overflow:hidden;display:block;}
.b_bests_list {overflow:hidden;position:relative;}
.b_bests_list li {display:inline-block;width:264px;height:370px; margin:0 12px 30px 0px;float:left;vertical-align:top; }
.b_bests_list li.last {width:264px;margin-right:0px;float:left;vertical-align:top}

.bests_li_txt_box {position:relative;padding:0px;background:#fff; width:264px;height:86px;padding:18px 0px 0px;}
.bests_li_box_img {width:264px;height:264px;background:#f3f4f4;vertical-align:top;}
.bests_li_box_img img {width:264px;height:264px;border:none}

.bests_li_txt_box {position:relative;display:block;font-weight:normal;text-align:left; padding-left:10px}
.bests_li_tit {overflow:hidden;display:block;width:244px;color:#404040;padding-bottom:6px;font-size:17px;font-weight:500;text-overflow:ellipsis;white-space:nowrap;letter-spacing:0px}
.bests_li_txt {overflow:hidden;display:block;margin:5px 18px 0 0;color:#999;font-size:14px;letter-spacing:0px;line-height:1.4em;text-overflow:ellipsis;text-overflow:-o-ellipsis-lastline;display:inline-block;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;word-wrap:break-word;word-break:break-all;white-space:normal;max-height:3em;font-weight: normal;}

.bests_price_wrap { position:absolute; bottom:40px; margin-top:20px}/
.bests_price {display:inline-block; }
.bests_per_price {display: table-cell; font-size:12px;color:#909090;text-decoration:line-through;font-weight:normal;letter-spacing:-1px; vertical-align: middle}
.bests_dc {color:#888;font-weight:600;font-size:1.1em;letter-spacing:-1px}
.bests_list_dc {padding-left:5px;color:#000;font-weight:600;font-size:17px;letter-spacing:-0.05em;font-family:'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}

.bests_btns { display:block;width:100%; background:#fff; padding:0px 0px 50px;margin:0px auto;} 
.bests_btns img { text-align:center; vertical-align:top; border:none}
/*//--20190725 인기상품BEST영역 추가수정--*/
/*//20190626 인기상품BEST영역 수정*/
/*//인기상품BEST*/

/*--혜택4. only app--*/
/*20190626 삭제처리*/
/*
.be_app_wrap { overflow:hidden;display:block;width:1162px;margin:25px auto 0px; *zoom:1; }
.benefit_tit_bg4 {display:block;width:100%;height:256px;margin:0px auto; background:#f8f8f4; text-align: center; border-top:1px solid #e8e8de}
.benefit_tit_bg4 img { padding:50px 0px 0px;text-align:center; vertical-align:top; border:none;}
.benefit_list_bga4 {display:block;width:100%;height:660px;margin:0px auto; padding:50px 0px;background:#f8f8f4; text-align: center; }
.be_app_tit {position:relative;width:100%; margin:0px auto; z-index:500}
.be_app_tit img {vertical-align:top; border:none}
.b_app_list_w {overflow:hidden;display:block;position:relative;height:426px;margin-top:-23px;background:#f4f1e8;padding:60px 40px 0px; border-top:1px solid #222957}
.textimg4 { display:block;width:100%;min-width:1100px;padding:46px 0px 0px;}
.textimg4 img { text-align:center; vertical-align:top; border:none}
*/
/*20190626 삭제처리*/
/*--//혜택4. only app--*/

/*20190626 앱리뷰 혜택 변경*/
.app_review_w {display:block;width:100%;margin:0px auto; background:#f4f8f8;text-align: center;}
.app_r_tit {display:block;width:100%;margin:0px auto; background:#f4f8f8; text-align: center;}
.app_r_tit img {padding:80px 0px 0px;text-align:center; vertical-align:top; border:none;}
.app_r_list {display:block;width:100%;margin:0px auto; background:#f4f8f8;padding:40px 0px 50px; border-top:0px solid #691b10}

.app_r_tit2 {display:block;width:100%;margin:0px auto; background:#eaedee; text-align: center;}
.app_r_tit2 img { padding:80px 0px 0px;text-align:center; vertical-align:top; border:none;}
.app_r_list2 {display:block;width:100%;margin:0px auto; background:#eaedee;padding:50px 0px 60px; border-top:0px solid #691b10}
.app_r_wrap { overflow:hidden;display:block;width:1162px;margin:0px auto; *zoom:1; }
.app_r_tip { display:block; float:left;padding:50px 0px; margin-left:20px; }
/*//20190626 앱리뷰 혜택 변경*/

/*20190626 쿠폰존*/
.coupon_zone_w {display:block;width:100%;margin:0px auto; background:#e7e5e5;text-align: center;}
.coupon_z_tit {display:block;width:100%;margin:0px auto; background:#e7e5e5; text-align: center;}
.coupon_z_tit img {padding:80px 0px 0px;text-align:center; vertical-align:top; border:none;}
.coupon_z_list {display:block;width:100%;margin:0px auto; background:#e7e5e5;padding:30px 0px 50px; border-top:0px solid #691b10}
.coupon_z_btn {display:block;width:100%;margin:0px auto; background:#e7e5e5;padding:30px 0px 80px; border-top:0px solid #691b10}

.coupon_z_tit2 {display:block;width:100%;margin:0px auto; background:#f9f9f9; text-align: center;}
.coupon_z_tit2 img { padding:80px 0px 0px;text-align:center; vertical-align:top; border:none;}
.coupon_z_list2 {display:block;width:100%;margin:0px auto; background:#f9f9f9;padding:50px 0px 60px; border-top:0px solid #691b10}
.coupon_z_wrap { overflow:hidden;display:block;width:1100px;margin:0px auto; *zoom:1; }
.coupon_z_tip { display:block; float:left;padding:50px 0px; margin-left:20px; }

.coups_z_list_w {overflow:hidden;display:block;width:1100px;margin:0px auto;background:#f9f9f9; border-top:0px solid #222957} 
.coups_z_list {overflow:hidden;position:relative;background:#eef2f2;padding:60px 0px 50px; border-bottom:1px solid #d9d9d9}
.coups_z_img {border:0px solid #f0f1f1;vertical-align:middle;padding:60px 0px 50px;}
/*//20190626 쿠폰존*/

.benefit_bg5 {overflow:hidden;display:block;width:100%;height:220px;margin:0px auto;background:#f9f9f9;*zoom:1;}
.benefit_bg5 img {padding:50px 0px 0px;text-align:center; vertical-align:top; border:none; margin:}
/*---//20190523 다신샵 쿠폰/혜택 신규---*/

/*---20190703 쿠폰혜택 배너리스트 신규---*/
.bnef_bn_list_w {display:block;width:100%;margin:50px auto 100px; background:#fff;text-align: center;}
.bnef_bn_list {display:block; text-align: center; }
.bnef_bn_list li {display:block; margin-bottom:20px}
.bnef_bn_list img {text-align:center; vertical-align:top; border:none;}
/*---//20190703 쿠폰혜택 배너리스트 신규---*/

/*20190724 메인외 UI 변경*/
/*웹폰트적용*/
.ds_b_tit22 {overflow:hidden;margin:0 auto;height:40px;font-size:16px;color:#4c4c4c;text-align:center;line-height:1.3em;text-overflow:-o-ellipsis-lastline;text-overflow:ellipsis;display:inline-block;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;word-wrap:break-word;word-break:break-all;white-space:normal;max-height:2.7em; font-weight:normal;font-family: 'Noto Sans',sans-serif !important}
.ds_b_price22 { display:block; margin-top:10px;color:#4c4c4c;font-weight:700;font-size:16px;font-family: 'Noto Sans',sans-serif !important}
.b_list_dc_222 {margin:-1px 0px 0px 2px;color:#4c4c4c;font-weight:700;font-size:16px;font-family: 'Noto Sans',sans-serif !important}

.noto_sans {font-family: 'Noto Sans',sans-serif !important}

/*베스트p 썸네일 변경*/
.h_li_txt_box2 {position:relative;display:block;background:#fff;padding:18px 16px;height:124px;font-weight:normal;text-align:left}
.h_li_tit2 {overflow:hidden;display:block;width:322px;color:#232323;padding-bottom:6px;font-size:15px;font-weight:500;text-overflow:ellipsis;white-space:nowrap;letter-spacing:0px}

.dashin_odm_box {position:relative;overflow: hidden;}
.dashin_odm_wrap {position:absolute;top:6px;right:8px;z-index: 2000}
.dashin_odm {width:100%}

.ico_dsd_box2 {position:absolute;right:16px;bottom:27px}
/*---20191119a 다신배송 높이값 추가---*/
.ico_dsd3 {display:inline-block;padding:0px 4px;height:16px;line-height:16px;background:#fe4f4f;border:1px solid #fe4f4f;color:#fff;font-size:13px;letter-spacing:-0.02em;}
.ico_dsd4 {display:inline-block;padding:0px 4px;height:16px;line-height:16px;background:#0fa7ff;border:1px solid #0fa7ff;color:#fff;font-size:13px;letter-spacing:-0.02em;} 
/*//---20191119a 다신배송 높이값 추가---*/
.ico_delivery {vertical-align:top;margin:-1px 3px 0 0;}
/*//20190724 메인외 UI 변경*/

/*20190801 메인p 신상품, 베스트p grid 및 메인p 할인율 추가*/
.grid_new {position:relative;width:262px;height:380px;box-sizing:border-box;z-index:120;}
.grid_new:hover .tmb_hover_n {overflow:hidden;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;width:260px;filter:alpha(opacity=100);opacity:1;transition:all .01s}
.grid_new:hover .tmb_hover_n2 {overflow:hidden;background:none;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-top:none;width:260px;height:130px;filter:alpha(opacity=100);opacity:1;transition:all .01s}

.grid_best {position:relative;width:350px;box-sizing:border-box;z-index:120}
.grid_best:hover .tmb_hover {overflow:hidden;background:none;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-bottom:none;width:350px;filter:alpha(opacity=100);opacity:1;transition:all .01s}
.grid_best:hover .tmb_hover2 {overflow:hidden;background:none;position:absolute;top:0;bottom:0px;left:0px;right:0px;border:2px solid #fe6b6b;border-top:none;width:350px;height:170px;filter:alpha(opacity=100);opacity:1;transition:all .01s}

.n_dc_sale {position:absolute;right:16px;}
.n_list_sale {display:inline-block;text-align: center;color:#fe4f4f;font-weight:600;font-size:18px;letter-spacing:-0.05em;}
.n_list_sale em {font-weight:700;font-size:14px;padding-left: 2px}

.n_dc_sale2 {padding-left:10px}
.n_list_sale2 {display:inline-block;text-align: center;color:#000;font-weight:600;font-size:17px;letter-spacing:-0.05em;}
.n_list_sale2 em {font-weight:700;font-size:14px;padding-left: 2px}
/*//20190801 메인p 신상품, 베스트p grid 및 메인p 할인율 추가*/

/*20190805 상세p 다신배송 아이콘 추가*/
.ico_dsd_area_n {position:absolute;right:4px;bottom:1px}
.ico_dsd4_n {padding:2px 4px 2px;background:#0fa7ff;border:1px solid #0fa7ff;color:#fff;font-size:11px;letter-spacing:-0.02em;}
.ico_dsd3_n {padding:2px 4px 2px;background:#fe4f4f;border:1px solid #fe4f4f;color:#fff;font-size:11px;letter-spacing:-0.02em;}
.ico_delivery_n {vertical-align:top;margin:0px 3px 0 0;}

/*20190823 상품후기 이미지 노출영역 UI 변경*/
.reply_numb { overflow:hidden;position:absolute;bottom:12px;right:8px;background:rgba(0,0,0,0.5);width:36px;height:20px;line-height:17px;text-align:center;}
.reply_numb em { display:inline-block;color:#f4f4f4;font-size:0.8em;}
/*//20190823 상품후기 이미지 노출영역 UI 변경*/

/*20190823 상세 쿠폰 영역 추가*/
.coupon_rn_wrap {position: relative;width:515px; margin-top:10px;}
.coupon_rn_box {position: relative;display: block;background: #edf0fb;padding:8px 10px;}

.coupon_rn_c {overflow:hidden;display:table-cell;vertical-align:middle; font-family: 'Noto Sans',sans-serif !important}
.coupon_rn_c a {display:block;height: 100%;}
.coupon_rn_thum {overflow:hidden;display:table-cell;vertical-align:middle; position:relative; top:0px; left:0px; z-index:20;}

.coupon_rn_img { position: relative;float:left;display:inline-block; margin:0 auto;width:109px;height:56px;background:url('../../img/ico/ico_coupon_img_n.png') no-repeat;}

.coupon_rn_point {display: block;vertical-align:middle;margin:6px 0 0 10px; font-size:18px;height:30px; color:#333; text-align:center; font-weight:bold; letter-spacing:-0.10em;font-family: 'verdana','Noto Sans',sans-serif !important}
.coupon_rn_point2 {display: block;vertical-align:middle;margin:0px 0 0 10px; font-size:23px;height:30px; color:#333; text-align:center; font-weight:bold; letter-spacing:-0.10em;font-family: 'verdana','Noto Sans',sans-serif !important}
.coupon_rn_point_t { display:inline-block;font-size:13px;margin:0 0 0 2px;}

.coupon_rn_pay {display: block;vertical-align:top;margin-top:0px; font-size:0.85em; color:#666; text-align: center; font-weight:600;letter-spacing:1px;}

.coupon_rn_t_box {overflow:hidden;display:table-cell;vertical-align:middle;padding-right: 20px;}
.coupon_rn_tit { display:inline-block;overflow:hidden; width:375px;  margin:3px 0px 0px 10px; font-size:18px;line-height:1.1em;font-weight:600; color:#000;text-overflow:ellipsis;display:block;white-space:nowrap;font-family:'Noto Sans',sans-serif !important;letter-spacing:0.08px}
.coupon_rn_txt {isplay:inline-block;overflow:hidden;margin:-1px 0px 0px 10px;padding:0px;font-size:12px;color:#666;text-align:left;text-overflow:ellipsis;display:block;white-space:nowrap;letter-spacing:0.05px}
.coupon_rn_ico {position:absolute; bottom:6px; right:8px;opacity:.6}
/*//20190823 상세 쿠폰 영역 추가*/

/*----------20190829 상세페이지 플로팅옵션메뉴 클래스 신규----------*/
/*연관상품*/
.relative_box_w_vn {position:relative;width:1100px;margin:10px 0; *zoom:1} 
.top_relat_tits_vn {position:relative;margin-bottom:40px;padding-left:0px;background:#fff;height:58px;line-height:58px;border-bottom:1px solid #e5e5e5;border-top:none;text-align:left;color:3b3b3b;font-size:1.5em;font-weight:normal;letter-spacing:-0.02em;font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.top_relat_tits_vn .txt { padding:0px 5px 19px 0px; border-bottom:1px solid #959595}
/*//연관상품*/

/*상세정보 탭수정*/
.product_detai_c_vn {position:relative;margin-top:54px;font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.pdt_detai_tab_vn {position:absolute;background:#fff; width:800px;z-index:10; }
.pdt_detai_tabinner_vn {display:inline;float:left;height:61px;width:801px;border-top:1px solid #e5e5e5; border-bottom:1px solid #e5e5e5;background-color:#fff;}
.pdt_detai_tabinner_vn .pdt_item {position:relative;display:block;width:201px;height:61px; line-height:61px;float:left;margin-right:-1px;}
.pdt_detai_tabinner_vn a {display: block;width:200px;height:61px; line-height:63px;color:#767676;font-size:1.48em;text-align:center; letter-spacing:-0.01em;-webkit-text-stroke-width:0.001em;font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo'}
.pdt_detai_tabinner_vn .fir a {width:200px;border-left:none;border-right:none;}
.pdt_detai_tabinner_vn .last a {width:200px;border-left:none;border-right:none;}
.pdt_detai_tabinner_vn .fir a:hover{width:199px;border-left:none;border-left:none;}
.pdt_detai_tabinner_vn a:hover{width:199px;background:#fff;color:#151516;border-bottom:1px solid #151516;border-left:none;font-weight:600;font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo'}
.pdt_detai_tabinner_vn .on a {width:199px;background:#fff;color:#151516;border-bottom:1px solid #151516;border-left:none;font-weight:600;font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo'}
.pdt_detai_tabinner_vn .on a:hover {width:199px;border-left:none;border-left:none;font-weight:600;color:#151516;font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo'}
.pdt_detai_tabinner_vn .num {font-family:Vernada;font-weight:bold;color:#fa4d4d; margin-left:3px; font-size:0.85em}

.pdt_detai_section_vn {position:relative; width:801px;}
.pdt_detai_section_vn img {display:block;margin:0 auto;max-width: 100%;}
.pdt_detail_tits_vn {display: block;height:61px; width:801px; line-height:63px;color:#000;font-size:2em;text-align:left; letter-spacing:-0.01em;-webkit-text-stroke-width:0.001em;font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif} /*20190904 상품상세메뉴영역 변경*/

.pdt_policy_tiit_vn { display: inline-block; height:45px; line-height:45px; padding:0px 20px; margin:10px 0px; text-align:left;color:#333;font-size:16px; letter-spacing:0.03em; border:1px solid #dedede;font-weight:normal; font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif;}
.pdt_policy_tiit_vn em { color:#000;font-weight:600; }
/*//상세정보 탭수정*/

/*구매전 배송정책*/
.pdt_p_tits_vn { display: block; width:100%; height:38px;line-height:30px;background:none;text-align:left;color:#111;font-size:1.5em;letter-spacing:-0.01em;font-weight:normal;border-bottom:none;font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif;}
.pdt_p_tits_vn img  { display: inline; vertical-align: middle; text-align: left; margin:-2px 10px 0}

.pdt_p_txts_vn {position:relative;padding:0px;line-height:1.7em;font-size:15px;font-weight:normal;text-shadow:#ccc 0px 0px 0px}
.pdt_p_txts_vn ul {overflow:hidden;width:801px;  }
.pdt_p_txts_vn li { float:left; display:inline-block; width:395px}
.pdt_p_txts_vn .answer {display:block;text-align: left;margin-top:2px;padding:10px 0px;line-height:1.4em; font-size:14px; color:#5f5f5f; letter-spacing:0.03em; border-top:1px solid #e5e5e5;font-weight:normal;font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.pdt_p_txts_vn .answer em {display:inline;color: #333; margin-right:20px;}
.pdt_p_txts_vn .question { display:inline-block;padding:5px 0 5px; font-size:17px;color:#374357; letter-spacing:-0.06em;font-family:'Malgun Gothic','맑은 고딕','Apple SD Gothic Neo'; font-weight:550;text-shadow:#ddd 1px 1px 0.1em;}
.pdt_p_txts_vn .question img {vertical-align:top; margin-top:4px}
.pdt_p_txts_vn img { display: inline-table; vertical-align: middle; text-align: left; margin:18px 0 2px}
.pdt_p_txts_vn .txt { color: #fe4444}
.pdt_p_txts_vn .txt2 { color: #000; font-size:13px; font-weight:700}
/*//구매전 배송정책*/

/*상품후기*/
.p_comment_vn {margin:0; width:801px}
.p_comment_noti_vn {display:block;text-align:left;}
.p_comment_noti_vn ul {display: inline-block;float:left;  padding:18px 20px 16px; margin:15px 0px 5px; text-align:left;border-top:1px solid #dedede;border-bottom:1px solid #dedede;}
.p_comment_noti_vn li { float:left; display:inline-block;color:#333;font-size:15px; line-height:1.4em; letter-spacing:-0.001em; font-weight:normal; font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif;  }
.p_comment_noti_vn li em {display: inline;color:#000;font-weight:600; }

.p_comment_lists_vn {display:block; overflow:hidden;width:801px; text-align:left;}
.pcomment_lst_vn {display:block; position:relative;padding:30px 0; border-bottom:1px solid #e9e9e9;}
.pcomment_lst_vn li { float:left; display:inline;line-height:1.7em; color:#333; font-size:16px}

.pdt_policy_tit_n2 { display: inline-block; float:right;  height:45px; line-height:45px; padding:0px 40px; margin:0px 0px 20px 0px; text-align:left;color:#333;font-size:16px; letter-spacing:0.03em; border:1px solid #555;font-weight:normal; font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif;} /*20190904 상품평쓰기버튼영역 변경*/
.pdt_policy_tit_n2:hover {background:#fff;color:#46bf9b;border:1px solid #57d0ac;}
.pdt_policy_tit_n2 em { color:#000;font-weight:600; }
/*//상품후기*/

/*한줄상품평*/
.pcomment_ones_vn {display:block; overflow:hidden;position:relative; width:801px}
.pcomment_ones_vn .pcomment_ones_box { position:relative;left:0px;padding:15px 0 15px 0; text-align:left; border-bottom:1px solid #e9e9e9;}
.pcomment_ones_vn .pcomment_ones_box li { float:left;display:block; margin:0 10px; }
.nickname_txt_vn {overflow:hidden; margin-left:10px; color:#959595;text-align:center;font-size:13px;text-overflow:ellipsis;white-space:nowrap;letter-spacing:-0.001em}
.pcomment_onestxt_vn {overflow:hidden; clear:both;display:block;margin:10px 0 0 10px;  width:740px; color:#444 ;font-size:15px; font-weight:normal; line-height:1.6em;font-family:NanumBarunGothic,'나눔바른고딕',NanumGothic,'나눔고딕','Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.ico_ones_del_vn {position:absolute; top:41px; right:10px;}
.pcomment_ones_vn .ico_nick_box {display: inline;position:relative;left:0px;display:inline}
.pcomment_ones_vn .ico_p {overflow:hidden;width:35px;height:35px;-webkit-border-radius:17px;-moz-border-radius:17px;border-radius:17px;}
.pcomment_ones_vn .ico_g {margin-top:-10px;}
/*//한줄상품평*/

.v_floating_wrap {left:50%;margin-left:550px; top:0px; position: absolute; background-position: right center; z-index: 9999;}
.v_floating_fixed {position:fixed;top:0px;}
.v_floating_sixed {left:550px;}
/*----------//20190829 상세페이지 플로팅옵션메뉴 클래스 신규----------*/

/*20190905 이벤트 sns 영역 추가*/
.event_snss_w { position:absolute; right:0px; margin-top:-11px;}
.event_snss li {display:inline-table;margin-right:10px}
.event_snss img {width:36px;vertical-align:top;}
/*//20190905 이벤트 sns 영역 추가*/

/*20190924 답변영역 UI 추가*/
.ico_reply_img { display:inline-block; margin:5px 10px 0px 0px; }
.textareas textarea {width:700px;height:60px;padding:20px;border:1px solid #d1d1d1;border-radius:3px;color:#666;font-size:12px;vertical-align:top;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.btn_rereply_w {position:absolute;right:0px;top:38px;} 
.btn_rereply {overflow:hidden; display:inline-block; height:56px; line-height:56px; width:64px;background:#b6b7be;border:1px solid #9ea0a4;border-radius:3px;color:#fff;font-size:14px;font-weight:normal; text-align:center }
.btn_rereply:hover {background:#46bf9b;border:1px solid #46bf9b;border-radius:3px;color:#fff;font-size:14px;font-weight:normal }

.comment-list li.re_write_bg {position:relative;margin-left:74px;border-bottom:1px dotted #ccc; }
.rereply_t {font-size:14px;line-height:1.4em}
.btnss_w {position:absolute;right:0;top:20px}
.btnss_w a{font-size:12px;color:#8d8d8d;display:inline-block;}
.reply_id {margin:2px 5px 2px 0;color:#1b72bc;background:#dfeaf4;padding:3px 5px;font-size:0.85em;font-weight:bold;}
.reply_bar {margin:2px 6px 2px 3px;color:#aaa;font-size:0.9em; font-weight:normal}
.reply_del { padding:30px 20px 50px; font-size:1.15em; font-weight:normal; color:#777; text-align:center}
/*//20190924 답변영역 UI 추가*/



/*** 20190806 마이페이지 카테고리 추가 ***/
/*마이페이지 좌측 메뉴*/
.mem_container {width: 1100px;padding: 120px 0 70px 0; margin: 0 auto;}
.mem_contents{position:relative;overflow:hidden;}
.mem_left {float:left;width:170px;background:none;color:#000;position:relative;overflow:hidden;border-left:0px solid #ddd}
.mem_right {margin-left:30px;float:right;width:900px;overflow:hidden;position:relative;background:none;color:#000;}
/*//마이페이지 좌측 메뉴*/
.snb_menu {position:relative;border:1px solid #c3c3c3}
.snb_tit {font-size:24px;font-weight:bold;text-align:center;letter-spacing:-1px;background:#fd555d;margin: -1px -1px 0 -1px;}
.snb_tit a {display:block;background:none;color:#fff;padding:50px 0;font-family: 'Noto Sans'}
.snb_tit a:hover {display:block;background:none;}
.snb_menu_box {position:relative;margin:15px 8px;padding:0 0 15px 10px;border-bottom:1px solid #e1e1e1}
.snb_menu_box.last {border-bottom:0px solid #eaeaea}
.snb_menu_box li {display:block;color:#666;font-size:12px;line-height:2.2em;letter-spacing:1px;font-weight:normal}
.snb_menu_box li.snb_menu_m1 {color:#222;font-size:15px;font-weight:bold;margin-bottom: -2px;font-family: 'Noto Sans'}
.snb_menu_box .on {color:#fe4f4f;font-weight:bold}
.snb_menu_box a:hover {color:#fe4f4f;text-decoration:underline;}

.mem_info_box {position: relative; padding:0px;overflow: hidden;background:#fdfdfd;border:5px solid #757e86;box-sizing: border-box;}
.mem_info {display:table;width:100%;}
.mem_info li {overflow: hidden;width:20%;position: relative;display: table-cell; height:114px;text-align: center;box-sizing: border-box;padding-top:16px;}
.mem_info li:after {float:right;height:80px;margin-top:-75px;vertical-align: top;border-right:1px solid #d5d8da;content:''}
.mem_info li.lst:after {border-right:0;}
.m_info_txt {font-size:14px;font-family: 'Noto Sans';color:#777;font-weight:700;margin:4px 0 8px 0}
.m_info_num em a {;position: relative;font-size:22px;font-family: tahoma;color:#fe4f4f;font-weight: bold;cursor: pointer}
.m_info_num em a span.line {display:block;position: absolute;top: 26px;left: 0;width: 100%;height: 3px;background-color: #fe4f4f;}
.m_info_num span {font-size:16px;font-weight: bold;font-family: 'Noto Sans';color:#222;}

.mem_top_wrap {position:relative;background:#fff;margin-top:20px;}
.mem_top_new {  position:relative;padding:20px 0px;overflow:hidden;}
.mem_title {position:relative;top:2px;font-size:26px;font-weight:600;color:#161616;letter-spacing: -1px; display: inline-block;  height: 31px;}
.mem_title_line {border-bottom: 2px solid #737373;width:100%;padding-bottom:13px;margin-bottom: -17px}

/*쿠폰영역*/
.addr_sch_wrap {display:block;position:relative;background:#fff;border:1px solid #d7d7d7;margin:0px 0 20px 0;}
.d_coupon_box {width:100%;position:relative;padding:20px 10px 7px 10px;}
.coupon_box_wrap {overflow:hidden;position:relative;padding:4px 175px 7px 5px;margin-top:0px}
.coupon_box_tit {display:inline-block;position:relative;left:10px;top:14px;vertical-align:top;color:#666}
.coupon_box_c {display:inline-block;width:96%;position:relative;top:-12px;left:70px;height:32px;padding:4px 4px 1px;background:#f3f3f3;border:1px solid #d0cec5;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;}
.coupon_box_word{display:inline-block;width:96%;position:relative;overflow:hidden;background:#f3f3f3;height:28px;top:0px;left:10px;border:none;color:#000;font-size:1.1em;}
.addr_btn_sch_wrap {display:inline-block;position:absolute;right:30px;top:1px;}
.coupon_box_btn {display:inline-block;text-align:center;background: #ff5151;color:#fff;font-size: 1em;margin:4px 0 0 0;width:80px;height:38px;line-height: 38px;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px}
.coupon_box_word[type=text]::-webkit-input-placeholder {color:#b3b3b3;}
/*//쿠폰영역*/

.mem_tbl { position:relative;width:100%;}
.mem_tbl th {background:#fff; font-weight:700;border-right: 1px solid #d0d0d0; border-bottom: 1px solid #d0d0d0; border-top: 2px solid #737373; color: #333; height: 40px;}
.mem_tbl th.order_amount { border-right: 0 none;}
.mem_tbl tr.last td { border-bottom:1px solid #d0d0d0;padding:20px 0;}
.mem_tbl tr td {border-bottom: 1px solid #dfe2e6;padding:20px 0;color: #555; font-size:13px;text-align:center;line-height: 1.5}
.mem_fcT1 {color:#444;font-weight:700}
.mem_fcT1_c {color:#ff464e}
.mem_fcT1_c2 {color:#6d72e5}

.mem_top_tbl_w {border:1px solid #cbcbcb;margin-bottom:30px;}
.mem_top_tbl {table-layout:fixed;width:100%;}
.mem_top_tbl th{color:#444343;font-size:13px;background:#f5f5f5;padding:10px 0;text-align:center;line-height:1.4;border-left:1px solid #dadada;border-right:1px solid #dadada}
.mem_top_tbl td{font-size:14px;padding:15px 0;text-align:center;border-right:0px solid #dadada;vertical-align:middle}
.mem_top_tbl td.tdp {padding:26px 0;}
.mem_top_tbl .b_line{border-bottom:1px solid #dadada;}
.mem_top_tbl tbody th:first-child {border-top:none;border-left:none !important}
.mem_top_tbl tbody td:first-child {border-top:none;border-left:none !important}
.mem_top_tbl td span{color:#6d72e5;font-size:14px;font-weight:bold}
.mem_top_tbl td span.fo {color:#ff5151;}
.mem_top_tbl td.num_t {text-align:right;padding-right:70px;}

.info_bottom {position:relative;margin-top:50px;font-weight:normal}
.info_bottom ul{padding:10px 20px}
.info_bottom li{color:#7b7b7b;padding-bottom:5px;font-size:11px;list-style:disc;line-height:1.4;text-indent:-5px}
.info_bottom li span{display:block}
.info_bo_tit {color:#7b7b7b;padding-bottom:5px;font-size:12px;font-weight:700}
.bul-exclamation{padding-left:28px !important;background:url('../../img/ico/bul_exclamation2.gif') no-repeat;line-height:23px;display:inline-block;vertical-align:middle}

.tab_chall .tabCont ul{padding-left:0px}
.tab_chall .tabCont ul li{overflow:hidden;width:300px;height:356px;border:0px solid #e8e8e8;float:left;position:relative;box-sizing: border-box;}
.tab_chall .tabCont ul li .last{margin-right:0px}
.tab_chall .tabCont ul li .img{position:absolute;left:0px;top:7px;width:290px;height:228px;overflow:hidden; border:0px solid #000;box-sizing: border-box;}
.tab_chall .tabCont ul li .img img {width:290px;}
.tab_chall .tabCont ul li .txt {padding:250px 5px 0 5px;font-size:12px;line-height:1.3;}
.tab_chall .tabCont ul li .txt .tit {overflow:hidden;font-size:1.25em;color:#333;font-weight:600;white-space:nowrap;text-overflow:ellipsis;font-family:"나눔고딕",NanumGothic,sans-serif}
.tab_chall .tabCont ul li .txt .tit_s {overflow:hidden; margin-top:7px;font-size:1.12em;color:#666; font-weight:normal;word-wrap:break-word;word-break:break-all;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;max-height:2.6em;text-overflow:ellipsis; line-height:1.3em;font-family:"나눔고딕",NanumGothic,sans-serif;}
.tab_chall .tabCont ul li .txt p{position:relative;display:block;color:#000;margin-bottom:5px;}
.tab_chall .tabCont ul li .txt .kprice {display:block;color:#ff4c4d; font-size:1.25em;margin-top:12px; font-weight:700; letter-spacing:-0.05em}
.tab_chall .tabCont ul li .txt .kprice img { width:17px; margin-right:7px; display:inline-block; vertical-align: middle}
.tab_chall .tabCont ul li .txt em .nodc{color:#999; margin-left:2px;font-size:13px; text-decoration:line-through;letter-spacing:-0.05em}

.chall_table_tit {display:block;font-size:12px; font-weight:800; color:#000; text-align:left; padding:0px 10px;}
.chall_table_img img { width:50px;}
.chall_table_pduct {display:block;text-align:left; padding-left:10px; color:#55;font-size:12px; }
.chall_start { display:inline-block;font-size:12px; background:#ed5258; padding:0px 11px; height:30px; line-height:30px;color:#fff;font-weight:600}
.chall_ing {display:block;font-size:15px;color:#000;font-weight:600; padding:4px 0px;} /*20191119 display 영역 수정*/
.chall_gift {color:#fe5155}
.chall_success {font-size:12px;color:#6d72e5;font-weight:600}
.chall_end2 {font-size:12px;color:#999;font-weight:600}

.mem_chall_btn {padding:8px 25px; background: #0bd4cd; border:1px solid #0bd4cd; color: #fff; font-size:14px;font-weight: bold;}
.mem_chall_btn:hover {padding:8px 25px; background: #fff;border:1px solid #555; color: #555; font-size:14px;font-weight: bold;}

.challenge_w2 {display:block;position:relative; margin-bottom:30px;}

.challenge_tit_box {display:block;position:relative; background:#dbe0e1;padding:15px 0px; margin-bottom:5px; width:898px;}
.challenge_tit_box .tit { display:inline-block;vertical-align:middle;background:none;font-weight:600;font-size:18px;color:#000;line-height:1.2em;text-align:left;}
.challenge_tit_box .tit span {display:inline-block;  background:#07beb8;color:#fff;font-size:14px;font-weight:normal; height:26px; line-height:24px; padding:0px 9px; margin-left:20px; border:1px solid #04b2ac;border-radius:60px;box-sizing: border-box;transition: all 1s;}
.challenge_tit_box .date { position:absolute; right:30px;display:inline-block;background:none;font-weight:600;font-size:18px;color:#000;line-height:1.2em;text-align:right;}
.challenge_tit_box .date span {display:inline-block; background:#07beb8;color:#fff;font-size:14px; font-weight:normal;height:26px; line-height:24px; padding:0px 9px; border:1px solid #04b2ac;border-radius:60px;box-sizing: border-box;transition: all 1s;}

/*챌린지관리 차트*/
.tab_c_chart .tabCont ul{padding-left:1px}
.tab_c_chart .tabCont ul li{width:126.8px;height:120px;border:1px solid #e8e8e8;float:left;margin-left:-1px;margin-top:-1px;position:relative}
.tab_c_chart .tabCont ul li .num { overflow:hidden; position:absolute; left:0px; margin-top:0px; background:#aaadb9; width:20px; height:18px; line-height:18px;text-align:center; color:#fff; font-weight:normal; font-size:0.95em;}
.tab_c_chart .tabCont ul li .img { overflow:hidden; margin-top:20px; width:126.8px; text-align:center;}
.tab_c_chart .tabCont ul li .img img {width:40px; margin-top:20px; opacity:0.7}
.tab_c_chart .tabCont ul li .img2 { overflow:hidden; margin-top:20px; width:126.8px; text-align:center}
.tab_c_chart .tabCont ul li .img2 img {width:88px}
.tab_c_chart .tabCont ul li .img3 { overflow:hidden; margin-top:20px; width:126.8px; text-align:center}
.tab_c_chart .tabCont ul li .img3 img {width:78px;}
.tab_c_chart .tabCont ul li .point1 { overflow:hidden;position:absolute; left:0px; bottom:0px; background:rgba(0,0,0,0.05);; width:126.8px; height:28px; line-height:27px; text-align:center; color:#fff}
.tab_c_chart .tabCont ul li .point1 .txt {overflow:hidden;font-size:16px;color:#666;font-weight:600;text-shadow:#000 0px 0px 0px; letter-spacing:0em;font-family:'Noto Sans',sans-serif}
.tab_c_chart .tabCont ul li .point1 .txt img { width:20px; margin:4px 3px 0px 0px;}

.tab_c_chart .tabCont ul li .point2 { overflow:hidden;position:absolute; left:0px; bottom:0px; background:rgba(0,0,0,0.5);; width:126.8px; height:28px; line-height:27px; text-align:center; color:#fff}
.tab_c_chart .tabCont ul li .point2 .txt {overflow:hidden;font-size:16px;color:#fbdf06;font-weight:600;text-shadow:#555 0px 2px 0px; letter-spacing:0em;font-family:'Noto Sans',sans-serif}
.tab_c_chart .tabCont ul li .point2 .txt img { width:20px; margin:4px 3px 0px 0px;}

.tab_c_chart .tabCont ul li .point3 { overflow:hidden;position:absolute; left:0px; bottom:0px; background:rgba(253,91,99,0.7); width:126.8px; height:28px; line-height:28px; text-align:center;}
.tab_c_chart .tabCont ul li .point3 .txt {overflow:hidden;font-size:14px;color:#fff;font-weight:600;letter-spacing:0em;font-family:'Noto Sans',sans-serif}
.tab_c_chart .tabCont ul li .point3 .txt img { width:20px; margin:4px 3px 0px 0px;}

.tab_c_chart .tabCont ul li .point4 { overflow:hidden;position:absolute; left:0px; bottom:0px; background:rgba(0,0,0,0.15); width:126.8px; height:28px; line-height:28px; text-align:center;}
.tab_c_chart .tabCont ul li .point4 .txt {overflow:hidden;font-size:14px;color:#777;font-weight:600;letter-spacing:0em;font-family:'Noto Sans',sans-serif}
.tab_c_chart .tabCont ul li .point4 .txt img { width:20px; margin:4px 3px 0px 0px;}

.tab_c_chart .tabCont ul li .point5 { overflow:hidden;position:absolute; left:0px; top:35px;background:rgba(255,255,255,0.4);  width:126.8px; height:28px; line-height:27px; text-align:center; color:#fff}
.tab_c_chart .tabCont ul li .point5 .txt {overflow:hidden;font-size:16px;color:#fd4f4f;font-weight:800;text-shadow:#eee 0px 2px 0px; letter-spacing:0em;font-family:'Noto Sans',sans-serif}
.tab_c_chart .tabCont ul li .point5 .txt img { width:20px; margin:4px 3px 0px 0px;}

.tab_c_chart .tabCont ul li .point6 { overflow:hidden;position:absolute; left:0px; top:35px;background:rgba(255,255,255,0.4);  width:126.8px; height:28px; line-height:27px; text-align:center; color:#fff}
.tab_c_chart .tabCont ul li .point6 .txt {overflow:hidden;font-size:16px;color:#000;font-weight:800;text-shadow:#eee 0px 2px 0px; letter-spacing:-0.05em;font-family:'Noto Sans',sans-serif}
.tab_c_chart .tabCont ul li .point6 .txt img { width:20px; margin:4px 3px 0px 0px;}
/*//챌린지관리 차트*/
.chall_sms_info {position:relative;margin:35px 0;font-weight: 600;font-size:16px;font-family:'Noto Sans',sans-serif}
.chall_sms_info_check {vertical-align:middle;margin-right:10px;margin-top:-3px}
.chall_sms_off {color:#999;}
.chall_sms_on {color:#0bd4cd;}

/*챌린지안내 문구*/
.chall_info_tit {position:relative; margin-top:30px; padding:20px 10px; font-size:1.4em;color:#444;font-weight:800; border-top:1px solid #d9d9d9;}
.chall_info {padding:3px 25px;display:block;position:relative;font-size:1.1em;color:#676767;line-height:1.7em}
.chall_info img {display:inline-block; vertical-align:middle;}
.chall_info_b {font-weight:700;color:#d86262}
.chall_info_b_c {font-weight:700;color:#000}
/*//챌린지안내 문구*/

/*상품평*/
.mem_comment_w {margin:0; width:100%}
.mem_comment_line { height:2px;width:100%; margin-top:-1px; background:#aaa}
.mem_comment {display:block; overflow:hidden;width:100%; text-align:left;}
.mem_comment_list {display:block; position:relative;padding:15px 0; }
.mem_comment_btn {position:absolute;right:5px; top:0px;z-index: 200}
.mem_comment_btn a {font-size:11px;color:#999;display:inline-block; font-weight:700;background:#f4f4f4;padding:6px 10px 5px;border-radius: 20px;}
.mem_comment_btn a:hover {text-decoration:underline}

.mem_tbl td.com_thmb {vertical-align:top;text-align:left;padding-left:10px;height:110px;overflow: hidden; width: 120px;}
.mem_tbl td.com_thmb_txt {text-align:left;}
.mem_tbl td.com_thmb img { height: 100%; width:120px}
.mem_comment_deal {color: #010101;  display: inline-block;  font-size: 18px;  font-weight: 700;  letter-spacing: -1px;  line-height: 22px;  margin-top: 0px;  max-height: 46px; max-width:700px;
    overflow: hidden;  padding: 1px 1px 0 15px;  vertical-align: middle;}
.mem_comment_deal_info {color: #7b8186;  display: block;  font-size: 14px; letter-spacing: -1px;  line-height: 22px;  margin-top: 0px;  max-height: 46px; max-width: 700px;
        overflow: hidden;  padding: 3px 1px 0 15px;  vertical-align: middle;}

.mem_tbl td.tdb_line {border-bottom:none;position:relative;}

/*//상품평*/

/*상품평 작성*/
.mem_my_write { position:relative;width:100%;border-top:0px solid #777;border-bottom:1px solid #d9d9d9;}
.mem_my_write th{height:42px;line-height:42px;padding-left:25px;font-size:15px;background:#f5f5f5;border-bottom:1px solid #d9d9d9;color:#666;text-align:lef;font-weight:normal}
.mem_my_write th:first-child{background-image:none}
.mem_my_write td{line-height:20px;padding:10px;border-top:1px solid #d9d9d9;color:#444;font-size:13px;font-weight:normal}
/*//상품평 작성*/

/*상품문의*/
.mem_qa_tit {font-size:14px; color:#222;font-weight:700;line-height: 1.5}
.mem_qa_answer_c {display:block;}
.mem_qa_answer_on {display:inline-block;text-align:center;background:#a9ace9; height:30px; line-height:30px;width:90px; font-size:13px; color:#fff;border-radius: 50px;}
.mem_qa_answer_off {display:inline-block;text-align:center;background:#aaa; height:30px; line-height:30px;width:90px; font-size:13px; color:#fff;border-radius: 50px;}

.mem_qa_reply {display:inline-block;background:#f4f4f4; width:100%; margin-top:-20px; padding:15px 0 10px;text-align:left}
.mem_qa_reply_b {display:block;padding:0px 20px;line-height:1.7em; color:#333;}
.mem_ico_reply img { float:left;vertical-align:top; margin:8px 3px 0 0 }
.mem_qa_re_txt {display: inline-block;width:100%; padding:13px 0px 10px; margin-left:27px; font-size:15px; line-height:1.7em; font-weight:400;color:#444; }
.mem_qa_reply_ps {display:inline-table; vertical-align:top; font-size:15px;  padding:0px 5px;height:24px; line-height:26px; color:#444; text-align:center; font-weight:700 ;border-bottom:1px solid #444; }
.mem_select {width:120px;height:32px;padding-left:11px;line-height:32px;background:#f4f4f4;border:1px solid #d2d2d2;color:#6b6a74;font-size:14px;margin:8px 0 0 2px;}

.mem_comm_txt {text-align:left; height:34px; line-height:34px;font-size:14px; color:#777; font-weight:400;}
.mem_comm_write {float:left;margin:10px 0;padding:10px 0px;background:#fff none repeat scroll 0 0;color:#333; font-size:1.1em;border:1px solid #c0c0c0;text-indent:10px;vertical-align:middle;}
.mem_comm_secret { display: inline-block;height:36px; line-height:36px;margin-bottom:0px}
.mem_comm_secret label{color:#606060;font-size:14px;vertical-align:top;}
.mem_comm_secret .checkbox { height:20px; width:20px;vertical-align:middle; position:relative; top:-1px;}
.mem_comm_btn { display:block; text-align: center;vertical-align:middle;background:#fff;margin:10px 0;padding:10px 0px;}
.mem_comm_btn ul {display:inline-table;  }
.mem_comm_btn li { display:inline-table; vertical-align:middle;height:120px; z-index:100}
.mem_comm_btn a { display:inline-block; margin:40px 5px;background:#565656; border:1px solid #5565656; height:50px; width:230px; line-height:50px; font-size:16px;color:#fff; text-align:center;font-weight:500;font-family: 'Noto Sans',sans-serif }
.mem_comm_btn a.on {border:1px solid #fe4f4f;background: #fe4f4f;height:50px; width:230px; line-height:50px; color:#fff;font-weight: 500;font-family: 'Noto Sans',sans-serif }
.mem_comm_btn a:hover { display:inline-block; margin:40px 5px;background:#fff; border:1px solid #565656; height:50px; width:230px; line-height:50px; font-size:16px;color:#565656; text-align:center;font-weight:500}
.mem_comm_btn a.on:hover {border:1px solid #fe4f4f;background: #fff;height:50px; width:230px; line-height:50px; color:#fe4f4f;font-weight:500}
/*//상품문의*/

/*1:1 문의*/
.mem_1to1_btn {padding:8px 25px; background: #a9ace9; border:1px solid #a9ace9; color: #fff; font-size:14px;font-weight: bold;}
.mem_1to1_btn:hover {padding:8px 25px; background: #fff;border:1px solid #555; color: #555; font-size:14px;font-weight: bold;}
.mem_tbl td.com_thmb2 {position:relative;vertical-align:top;text-align:left;padding-left:10px;padding:15px 10px;overflow: hidden; width: 65px;}
.mem_tbl td.com_thmb2 img { height: 65px; width:65px}
.mem_tbl td.com_thmb_txt2{text-align:left;width:100%;overflow:hidden;}
.mem_tbl td.com_thmb_txt2 em {width: 100%;overflow:hidden;display:inline-block;text-overflow:ellipsis;white-space:nowrap;padding:0 5px;font-size: 15px;vertical-align: middle;}
.mem_tbl td.com_thmb2 div.com_img_ico {position:absolute;right:15px;bottom:15px;background:rgba(0,0,0,0.6);border-radius:0px;width:25px;height:20px;line-height: 20px;text-align: center;z-index: 1000}
.mem_tbl td.com_thmb2 div.com_img_ico em{color:#fff;font-size: 11px;}

.mem_nick_box {position:relative;top:0px;left:0px}
.mem_nick {overflow:hidden;width:100%;text-overflow:ellipsis;white-space:nowrap;font-size: 12px;color:#666}

.mem_btn_list_w {position:absolute; right:0px; top:14px}
.mem_btn_list {margin-top:10px;padding:11px 40px;background:#fff;color:#000;font-size:16px;border:1px solid #777;font-weight:normal}
.mem_btn_list:hover {background:#000;color:#fff;border:1px solid #000;}

.mem_btn_regist_w {position:absolute;right:15px;top:65px;}
.mem_btn_regist_w2 {position:absolute;right:37px;top:100px;}
.mem_btn_regist {overflow:hidden;padding:29px 30px;background:#ff4c4d;border:1px solid #ff4c4d;border-radius:3px;color:#fff;font-size:14px;font-weight:normal;}
.mem_btn_regist2 {display: block;overflow:hidden;width: 53px; height: 47px;background:#ff4c4d;border:1px solid #ff4c4d;border-radius:3px;color:#fff;font-size:14px;font-weight:normal;line-height: 48px;text-align:center}
.mem_btn_regist:hover {background:#b6b7be;border:1px solid #b6b7be;border-radius:3px;color:#fff;font-size:14px;font-weight:normal }
.mem_btn_regist2:hover {background:#b6b7be;border:1px solid #b6b7be;border-radius:3px;color:#fff;font-size:14px;font-weight:normal }
.comment-write .mem_txtarea {width: 765px;height: 68px;}
.comment-write .mem_txtarea2 {width: 775px;height: 108px;}

.mem_comms_stars_n {position:relative;height:18px;font-size:16px;color:#666}
.mem_comms_nicks_n {display: inline-table;padding:0px;height:12px;color:#555;font-weight:500; }
.mem_comms_stars_n .mem_stars_n {font-size:13px;color:#9b9b9b;padding:0 0 0 10px;}

.mem_coms_p_new img { height: 180px; width: 100%;   border: 1px solid #f1f1f1;}

.mem_btn_re_n{color:#676767;font-size:12px;display:inline-block;padding-right:15px;background:url('../../img/ico/ico_mius.gif') no-repeat right center;margin-bottom:15px}
.mem_btn_re_n.open{background-image:url('../../img/ico/ico_plus.gif')}
.mem_btn_re_n.open strong{color:#676767}

/*대댓글*/
.re-write_n {background:#f9f9f9;border:1px solid #ececec;padding:15px 0 15px 20px;display:none}
.re-write_n>fieldset{position:relative;}
.re-write_n>fieldset .secret{height:22px; padding:10px 0}
.re-write_n>fieldset .secret label{font-size:12px;}
.re-write_n>fieldset .secret .chk{vertical-align:middle;}
.re-write_n>fieldset textarea{width:770px;height:38px;*margin:10px 75px;padding:10px;border:1px solid #d1d1d1;border-radius:3px;color:#666;font-size:12px;vertical-align:top;}
.re-write_n>fieldset .btn-regist2{position:absolute;right:20px;top:44px;}
.btn-regist2_btn {display:block;width:55px;height: 55px;background:#b6b7be;border:1px solid #b6b7be;border-radius:2px;font-size:1.1em;font-weight:400;line-height:56px;color:#fff;text-align:center;}
/*//1:1 문의*/

/*찜한상품*/
.chk_type, .chk_type_off { top: 10px;}
.chk_type, .chk_type_off  { left: 20px; position: absolute;  top: 0;}
.chk_type { border: 1px solid #383838; cursor: pointer; display: block; height: 18px;  position: relative;  width: 18px;}
.chk_type_off { border: 1px solid #d0d0d0; cursor: pointer; display: block; height: 18px;  position: relative;  width: 18px;}
label {  vertical-align: -1px;}
.chk_type input[type="checkbox"] { left: -9999px; position: absolute;}
.chk_type_off input[type="checkbox"] { left: -9999px; position: absolute;}
label input[type="checkbox"], label input[type="radio"] {  margin-top: -1px;}
input[type="checkbox"], input[type="radio"] {  height: 13px;  vertical-align: text-top; width: 13px;}
.chk_type .clicked_deal {background:#383838 url("../../img/ico/checkbox.png") no-repeat scroll 1px 3px;
    display: inline-block; height: 18px; left: 0; overflow: hidden; position: absolute; top: 0; width: 18px; z-index: 2;}
.tbl_btn_box {text-align:left}
.mem_btn_select { background: rgba(0, 0, 0, 0) none repeat scroll 0 0;border: 1px solid #383838;border-radius: 3px; color: #383838;
    display: inline-block; font-size: 12px; font-weight: bold; height: 20px; line-height: 20px; text-align: center; vertical-align: top; width: 100px;}
.mem_btn_select:hover { border: 1px solid #383838;background:#383838; color: #fff; font-size: 12px;}

.prod_box {position: relative;}
.prod_thumb { height: 110px; left: 0px; overflow: hidden; position: relative; top: 0; width: 120px;}
.prod_thumb img { height: 100%; width:100%}
.prod_txt {position: absolute;top:20px;left:135px;overflow: hidden;text-align:left}
.prod_name{color: #010101; inline-block; font-size: 16px; letter-spacing: -0.8px; line-height: 20px;}
.prod_price{color: #ff4c4d; inline-block; font-size: 14px; letter-spacing: -0.8px; line-height: 20px;font-family: 'Noto Sans',sans-serif}
.prod_off{color: #afafaf;}
.price_s {font-size: 13px; }

.btn_select_del {background: rgba(0, 0, 0, 0) none repeat scroll 0 0;border: 1px solid #383838;border-radius:3px; color: #383838;  display: inline-block; font-size: 14px; font-weight: bold; width: 18px;height: 18px; line-height: 18px; text-align: center;vertical-align: top; margin-top:6px;font-family: 'Noto Sans',sans-serif}
/*//찜한상품*/
/*정보관리*/
.mem_top_tbl td.num_l {text-align:left;padding-left:20px;}
.mem_ipt{width:70%;height:35px;padding-left:11px;line-height:35px;background:#f9f9f9;border:1px solid #d6d6d6;color:#7e7e7e;font-size:13px}
.mem_ipt2{width:70%;height:35px;padding-left:11px;line-height:35px;background:#f0f0f0;border:1px solid #d8d8d8;color:#7e7e7e;font-size:13px}

.mem_delivery_btn {padding:8px 25px; background: #e54b3f; border:1px solid #e54b3f; color: #fff; font-size:14px;font-weight: bold;}
.mem_delivery_btn:hover {padding:8px 25px; background: #fff;border:1px solid #555; color: #555; font-size:14px;font-weight: bold;}

a.mem_btn_cmn {position: relative;top:0px; display: inline-block;width:68px; height: 35px; line-height: 35px;text-align: center;background: #f9f9f9; border:1px solid #d6d6d6; }
a.mem_btn_cmn span{color: #6b6b6b; font-size:12px}
.mem_default_ch {position: relative;left:5px;z-index: 999;}
.mem_default_ch label { display: inline-block;  letter-spacing: -1px; vertical-align: middle;color: #555; font-size:13px}
.mem_input_txt {color:#555;line-height: 35px;font-size:13px}

.mem_select_box {position: relative; display: inline-block; }
.mem_select2 {width:120px;height:35px;padding-left:11px;line-height:35px;background:#f9f9f9;border:1px solid #d6d6d6;color:#7e7e7e;font-size:14px;margin:0px 0 0 2px;}

.mem_p_btn_w a {display:inline-block; margin:2px 0px; text-align:center}
.mem_pop_btn_s {display:block;background:#fefefe;color:#555;font-weight:bold;border:1px solid #a9a9a9;font-size:11px;width:50px;height:24px;line-height:26px;border-radius: 50px}
.mem_pop_btn_s:hover {background:#f6f6f6;text-decoration:underline}

/*회원탈퇴*/
.memb_out_b { display:block; margin:30px 5px;}
.memberout_tit { display:inline-block;padding:0px 0 6px;margin:0px 0px 15px;background:none;border-bottom:1px solid #999;font-size:14px;color:#232323;font-weight:600;line-height:1.2em;text-align:left;}
.joinout_txt{display:block;padding:3px 10px 3px 3px;color:#555;font-size:13px; line-height:1.4em; font-weight:normal;}
.joinout_txt em { font-weight:800;color:#000}
.bullet {float:left;text-align:center; position:relative;top:7px;padding-right:3px}
.bullet img { width:2.5px;}
/*//회원탈퇴*/
/*//정보관리*/
/*** //20190806 마이페이지 카테고리 추가 ***/

/*20190923 마이페이지 주문상세보기외 추가*/
.mem_order_checkmn_wrap_new{background:#fff; position:relative; text-align: center; padding:0px 0 2px 0px; font-size:17px;
color:#666;  font-weight:600 ;margin-top: -10px}
.order_num_view_2 { text-align: left;padding:0px 0 7px 0;font-size: 15px;}

.mem_tbl td.order_thmb {height: 110px;overflow: hidden;width: 120px;vertical-align: top;}
.mem_tbl td.order_thmb img {height: 100%; width: 120px;}
.mem_tbl tr td.memtd {text-align:left;}
.mem_tbl tr td.order_info2 {border-right: 1px solid #eaeaec;}


.mem_order_deal_price .order_h_area, .mem_order_deal_dis .order_h_area, .mem_order_deal_delivery .order_h_area, .mem_order_deal_payment .order_h_area
	{background-color: #f6f6f6;border-bottom: 1px solid #dddddd;font-size:14px;text-align:center;padding: 13px 0 9px 0px;font-weight:800; letter-spacing: -1px;}

.mem_order_deal_price {float:left;overflow:hidden;width: 220px;border-right: 1px solid #dddddd; }
.mem_order_deal_dis {float:left;overflow:hidden;width: 220px;border-right: 1px solid #dddddd; }
.mem_order_deal_delivery {float:left;overflow:hidden;width: 200px;border-right: 1px solid #dddddd; }

.mem_order_plus, .mem_order_minus, .mem_order_equal {display: inline-block;text-align:center; width:24px;height:24px;line-height:21px;overflow: hidden;color:#fff;font-size:20px;font-weight: bold;font-family: tahoma; }
.mem_order_plus, .mem_order_minus {background:#565656;}
.mem_order_minus {position:absolute;left:208px;top:62px;font-size:30px;}
.mem_order_plus {position:absolute;left:429px;top:62px;}
.mem_order_equal {background:#fe4f4f;position:absolute;left:630px;top:62px;}

.mem_my_write_2 { border-top:2px solid #777;}
/*//20190923 마이페이지 주문상세보기외 추가*/

/*20191011 제휴문의 개인정보수집 안내*/
.cooprat {display:block;position:relative;width:880px;background:#fff;border:1px solid #dfdfdf;padding:15px 20px 5px;font-size:13px;line-height:1.7em;}
.cooprat li {color:#666; line-height:1.4em; margin-bottom:10px;}
.cooprat .tit {display:block;font-size:14px;color:#444;margin-bottom:15px;font-weight:bold}
.cooprat_t em {display:block; padding:1px 0px;}
/*//20191011 제휴문의 개인정보수집 안내*/

/*20191014 개인정보 관련 추가*/
.tbl_mem_noti {width:100%;background:#fff;border-left:1px solid #d3d3d3; border-top:1px solid #d3d3d3; border-bottom:1px solid #d3d3d3;margin-top:10px;}
.tbl_mem_noti th {height:30px;background:#f5f5f5;border-bottom:1px solid #d3d3d3;border-right:1px solid #d3d3d3;font-size:1.1em;color:#333;line-height:30px;font-weight:normal;vertical-align:middle;text-align:center}
.tbl_mem_noti td {background:#fff;padding:8px 30px;border-bottom:1px solid #d3d3d3;border-right:1px solid #d3d3d3;color:#666;line-height:1.5;font-size:1em;font-weight:normal;vertical-align:middle;}
.tbl_a {color:#1d77db;text-decoration: underline;}
.tbl_mem_noti th.mem_info_noti_th {height:15px;background:#f5f5f5;border-bottom:1px solid #d3d3d3;border-right:1px solid #d3d3d3;font-size:1.1em;color:#333;line-height:15px;font-weight:normal;vertical-align:middle;text-align:center}

.t_box {line-height: 1.5;font-size: 14px;}
.t_box_po {color:#fe4f4f;text-decoration: underline;font-weight: 600}

.mem_btn_cancel_fc {vertical-align: top;line-height:1.5;padding-top: 5px;display:inline-block;font-weight:600;font-size:18px;width:210px;height:48px;border:1px solid #8b8b8b; background:#8b8b8b; color:#fff}
.mem_btn_cancel_fc:hover{background:#fff; border:1px solid #000; color:#000;height:48px;}
.mem_btn_fc {display:block;font-size: 11px;}
/*//20191014 개인정보 관련 추가*/

/*************************************************/
/************20191022 index외 UI 변경*************/
/*************************************************/

/*최상단바 UI*/
.inner_n {position:relative;display:block;width:100%;height:34px;border-top:0px solid #dfdfdf; border-bottom:1px solid #e9e9e9;z-index:103}
.top_n_gnb {overflow:hidden;width:200px;position:absolute;top:10px;z-index:150;}
.top_n_gnb li a:after {float:right;height:12px; padding-left:14px; margin:2px 14px 0px 0px;border-right:1px solid #aaa;content:'';}
.top_n_gnb li a{float:left;color:#777;font-size:14px;letter-spacing:-0.05em}
.top_n_gnb li.top_n_gnb_on a{float:left;color:#fe4f4f;font-size:14px;font-weight:600;letter-spacing:-0.05em}
.top_n_gnb>li>a.active,
.top_n_gnb>li:hover>a{color:#fe4f4f;}
.top_n_gnb a.lst:after {border-right:0; background:none}
/*//최상단바 UI*/

/*최상단 검색 UI*/
.schs_n_w {position:relative;margin:-69px auto 0px;text-align:center;width:440px;height:38px;border:1px solid #fe4f4f;z-index:103}
.schs_n {overflow:hidden;display:block;background:#fff;padding:0 5px;}
.schs_n_word {position:absolute;left:12px;width:80%;height:38px;line-height:38px;color:#777;font-size:13px;border:none;font-family:hv,Arial,NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.schs_n_word[type=text]::-webkit-input-placeholder {color:#555;}
.schs_n_word[type=text]:focus {border-bottom:0px solid #f96767;color:#f96767;outline: medium none;}
.ico_n_schs {position:absolute;right:3px;top:13px;display:block;width:15px;height:14px;padding:5px 0px 5px 0px}
.btn_schs_n {position:absolute;right:0px;top:1px}
.btn_schs_n img {border:none;width:20px;height:18px}
.btn_schs {display:block;padding:8px 9px 0 0;background:none;text-align:center}
/*//최상단 검색 UI*/

/*최상단 검색 자동완성*/
.sch_n_auto_w {position:relative;margin-top:-1px;text-align:left;z-index:102}
.sch_n_auto {width:440px;margin:0px auto;background:#fff;border:1px solid #fe4f4f}
.sch_n_auto li {overflow:hidden;font-size:1em;line-height:100%;color:#333;}
.sch_n_auto li a {display:block;overflow:hidden;height:100%;padding:10px;text-overflow:ellipsis;white-space:nowrap;}
.sch_n_auto li:hover>a {background:#f3f3f3}
.sch_n_auto li a.fi {padding-top:16px}
.sch_n_auto li a.la {padding-bottom:16px}
.sch_n_auto li:hover>a.fi {border-top-left-radius:0px;}
.sch_n_auto li:hover>a.la{border-bottom-left-radius:0px;}
/*//최상단 검색 자동완성*/

.logos_n_wrap {width:100%;height:100px;background:#fff;border-bottom:1px solid #f1f1f1;}
.logos_n_w {position:relative;margin:0 auto;width:1100px;height:83px;}
.gnb_s_wrap2 {position:absolute;width:100%;background:#fff;height:50px;border-bottom:1px solid #f1f1f1;}

/*최상단 로고*/
.logos_n_box {width:100%;height:100px; }
.logos {position:absolute;left:0px;top:15px;overflow:hidden}
.logos img { margin-top:0px}
/*//최상단 로고*/

/*최상단 다이어트 칼럼*/
.diet_column_w {position:absolute;right:0px;top:24px;width:230px; padding:5px;}
.diet_column_w a:hover {color:#f96464}
.diet_column_tit {display:block;color:#f96464;font-size:13px;margin-top:8.5px;font-weight:700}
.diet_column_txt {overflow:hidden;display:block;margin:5px 5px 0px 0px;color:#aaa;font-size:12.5px;text-overflow:ellipsis;text-overflow:-o-ellipsis-lastline;display:inline-block;display:-webkit-box;-webkit-line-clamp:1;-webkit-box-orient:vertical;word-wrap:break-word;word-break:break-all;white-space:normal; max-height:1.35em;line-height:1.2em; letter-spacing:-0.05em}
.btn_d_slide {position:absolute;right:6px;top:1px}
.btn_d_slide a img {border:none;}

.diet_c_txt_box {overflow:hidden;display:inline-block;position:absolute;left:60px;top:4px;vertical-align:top}
.diet_c_img img {width:46px;height:46px;border-radius:50%;border:1px solid #f1f1f1;text-align:center;}
/*//최상단 다이어트 칼럼*/

/*찜아이콘 UI 변경*/
.prod_unit_img {position:relative}
.prod_unit_img .ly_ov_items {position: absolute;bottom:202px;left:0;right:0;max-height: 0;z-index: 25;-webkit-transition: all .5s cubic-bezier(0, 1, 0.5, 1);transition: all .5s cubic-bezier(0, 1, 0.5, 1);overflow: hidden;}
.prod_unit_img:hover .ly_ov_items {max-height:92px;overflow: visible;}

.prod_unit_img2 {position:relative}
.prod_unit_img2 .ly_ov_items {position: absolute;bottom:157px;left:0;right:0;max-height: 0;z-index: 25;-webkit-transition: all .5s cubic-bezier(0, 1, 0.5, 1);transition: all .5s cubic-bezier(0, 1, 0.5, 1);overflow: hidden;}
.prod_unit_img2:hover .ly_ov_items {max-height:92px;overflow: visible;}

.ly_ov_items .btn_keep_item {text-align: center;padding-bottom: 9px;}
.btn_type_check {display: inline-block;width:38px;height:38px;background: url(../../img/main/sp_home.png) no-repeat;}
.btn_type_check.act_zzim {background-position: 0px 0;}
.btn_type_check.act_zzim:hover {background-position: -43px 0;}
.btn_type_check.act_zzim.on, .btn_type_check.act_zzim:active {background-position: -86px 0;}
.btn_type_check.act_carry {background-position: -0px -43px;}
.btn_type_check.act_carry:hover {background-position: -43px -43px;}
.btn_type_check.act_carry.on, .btn_type_check.act_carry:active {background-position: -86px -43px;}
/*//찜아이콘 UI 변경*/

/*20191119 이벤트 및 이슈아이콘 추가 및 변경*/
.ico_issue1 {position:absolute;left:10px;top:10px;z-index:1000}
.ico_issue1 img {width:46px}
.ico_issue2 {position:absolute;right:10px;top:10px;z-index:1000}
.ico_issue2 img {width:46px}
.ico_issue3 {position:absolute;left:10px;top:205px;z-index:1000}
.ico_issue3 img {width:46px}
.ico_issue4 {position:absolute;right:10px;top:205px;z-index:1000}
.ico_issue4 img {width:46px}
/*//20191119 이벤트 및 이슈아이콘 추가 및 변경*/

/*리뷰영역 UI 변경*/
.reviw_n_number {display:inline-block;vertical-align:middle; font-size:1.2em;color:#ff4c4d;font-weight:600;letter-spacing:-0.05em;font-family:'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif }
.reviw_n_tit {display:inline-block;vertical-align:middle;font-size:1em;color:#909090;font-weight:normal;letter-spacing:-0.05em; }
.reviw_categs_w {position:absolute;right:22px;bottom:29px}
/*//리뷰영역 UI 변경*/

/*카테고리메뉴 및 정렬순서*/
.categorys_box {position:relative; z-index:300}
.categorys_tit {position:absolute;left:0px; margin-top:8px;font-size:23px;color:#4d4d4d;font-weight:600;letter-spacing:-0.05em;}
.categorys {overflow:hidden; position:absolute; left:110px;}
.categorys li {float:left; padding:0 16px;height:42px;}
.categorys li a{float:left;overflow:hidden;width:100%;height:100%;line-height:42px;text-indent:0px;color:#555;font-size:16px}
.categorys li a:hover {display:block;height:40px;background:#fff;color:#fa4d4d;font-weight:600;background:url('../../img/ico/ico_dot.png') no-repeat 50% 0px}
.categorys li a.on {display:block;height:40px;background:#fff;color:#fa4d4d;font-weight:600;background:url('../../img/ico/ico_dot.png') no-repeat 50% 0px}
.categorys_sort {display:block;margin:0px 13px 30px 0px;padding:58px 0px 10px;text-align:left;color:#4d4d4d;font-size:22px;font-weight:600;letter-spacing:-0.05em;}
/*카테고리메뉴 및 정렬순서*/

 /*20191119a 카테고리 타이틀 및 텍스트 클래스 추가*/
.cate_li_n_tit {overflow:hidden;display:block;width:304px;color:#232323;padding-bottom:6px;font-size:17px;font-weight:600;text-overflow:ellipsis;white-space:nowrap;letter-spacing:0px}
.cate_li_n_txt {overflow:hidden;display:block;margin-top:10px;color:#888;font-size:14px;letter-spacing:0px;line-height:1.4em;text-overflow:ellipsis;text-overflow:-o-ellipsis-lastline;display:inline-block;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;word-wrap:break-word;word-break:break-all;white-space:normal;height:2.7em;}
 /*//20191119a 카테고리 타이틀 및 텍스트 클래스 추가*/
/*카테고리메뉴 및 정렬순서*/

/*카테고리 찜아이콘 및 배송종류별*/
.categs_list_box {position:relative;display:block;width:352px;}
.categs_txt_box {position:relative;display:block;background:none;padding:18px 16px;height:124px;font-weight:normal;text-align:left}
.k_ico_keep {position:absolute;right:10px;top:368px;} /*20191119a 카테고리 찜아이콘 위치변경*/
.ico_delivs_box { display:block;margin-top:15px;}
.ico_dsd {padding:2px 4px 3px;background:#aaacaf;color:#fff;font-size:13px;letter-spacing:-0.02em}

/*---20191119a 리셋대전, 무료배송, 주간핫딜 수정 및 추가---*/
.ico_reset {display:inline-block;padding:0px 4px;height:18px;line-height:18px;background:#b562bd;color:#fff;border:0px solid #2f3032;font-size:13px;letter-spacing:-0.02em}
.ico_free {display:inline-block;padding:0px 4px;height:18px;line-height:18px;background:#f09052;color:#fff;border:0px solid #2f3032;font-size:13px;letter-spacing:-0.02em}
.ico_hotdeal {display:inline-block;padding:0px 4px;height:18px;line-height:18px;background:#ea2423;color:#fff;border:0px solid #2f3032;font-size:13px;letter-spacing:-0.02em}
/*---///20191119a 리셋대전, 무료배송, 주간핫딜 수정 및 추가---*/
/*//카테고리 찜아이콘 및 배송종류별*/

/*---로그인---*/
.cont_n_w {position:relative;width:820px; height:390px;margin:-40px auto 0px;;border-top:1px solid #ccc;border-bottom:1px solid #ccc;}
.cont_n_w .logins_n_box {margin-top:0px;text-align: center;}
.cont_n_w .logins_n_box li {float:left; margin:0px 10px;}
.logins_t_line {display:block;width:1px;height:390px;margin-left:40px; background:#eee;}

.logins_t_box {position:relative;display:inline-block;width:360px;padding:25px 10px 0px 10px}
.logins_t_box2 {position:relative;display:inline-block;width:360px;padding:25px 0px 0px 10px;}
.logins_t_tit {display:block;padding:10px 0px 20px;font-size:1.5em;color:#000;text-align:center;letter-spacing:0em;font-weight:600}
.logins_input2[type=text]::-webkit-input-placeholder {color:#ddd;}
.logins_input2[type=password]::-webkit-input-placeholder {color:#ddd}
.logins_input2[type=tel]::-webkit-input-placeholder {color:#ddd}
.logins_input2[type=text]::-moz-placeholder {color:#ddd}
.logins_input2[type=password]::-moz-placeholder {color:#ddd}
.logins_input2[type=tel]::-moz-placeholder {color:#ddd}
.logins_input2 {height:45px;line-height:45px;background:#fff;color:#aaa;border:1px solid #ddd;font-size:1em;padding:0 12px;vertical-align:middle}
.btn_logins_sns {margin:10px 0px;padding:14px 10px;border:1px solid #ef0202;background:#ef0202;border-radius:2px;color:#fff;text-align:center;font-size:14px;font-weight:500;}
.btn_logins_10 {margin:10px 0px 0px;padding:14px 10px;border:1px solid #222;background:#fff;border-radius:2px;color:#222;text-align:center;font-size:14px;font-weight:500;}
.btn_logins_sns:hover, .btn_logins_10:hover {border:1px solid #ef0202;background:#fff;border-radius:2px;color:#ef0202;}
.btn_loginstxt {padding:15px;font-size:14px;text-decoration:underline;color:#555;line-height:1.5em;font-weight:500;text-align:center;display:inline-block;}
.btn_loginstxt:hover {color:#ef0202;}

/*SNS 로그인*/
.logins_sns_w {position:relative;display:block;width:700px;padding:30px 0px 20px;margin:0 auto 40px;}
.logins_sns_tit {display:block;padding:0px 20px 20px;font-size:1.4em;color:#000;line-height:1.4em;text-align:center;font-weight:600;}
.logins_sns_w li {float:left;width:49.5%;display:inline-block;vertical-align:middle }
.logins_sns_naver {margin:5px 10px;height:45px;line-height:45px;border:1px solid #aaa;background:#fff;border-radius:2px;color:#222;text-align:left;font-size:14px;font-weight:500;}
.logins_sns_katok {margin:5px 10px;height:45px;line-height:45px;border:1px solid #aaa;background:#fff;border-radius:2px;color:#222;text-align:left;font-size:14px;font-weight:500;}
.logins_sns_naver:hover, .logins_sns_katok:hover {border:1px solid #ef0202;background:#fff;border-radius:2px;color:#ef0202;}
.ico_snss_img img { padding:12px 30px 0px}
.snss_txt {display:inline-block;padding-left:56px;height:45px;border-left:1px solid #ddd;}
/*//SNS 로그인*/

/*로그인 하단 텍스트*/
.logins_btm_txt {position:relative;display:block;margin-top:50px;padding:20px 0px;font-size:0.9em;color:#666;line-height:1.5em;text-align:center;font-weight:normal;}
.logins_btm_txt li {text-align:center;line-height:1.8em;}
.logins_btm_txt img {margin-right:5px;}
.logins_btm_txt a {display:inline-block;color:#44a6e6;text-decoration:underline}
/*//로그인 하단 텍스트*/

/*로그인내 다신샵 회원가입 혜택*/
.logs_bfits_tit {display:block;background:#17b0b6;width:260px;border:1px solid #1aafad; border-radius:30px;height:30px;line-height:30px;padding:0px 10px;margin:10px auto 25px;font-size:1.3em;color:#fff;text-align:center;letter-spacing:0.1em;font-weight:600}
.logs_benefits_w {position:relative;display:block;width:400px;margin-left:-10px;}
.logs_benefits_w li {float:left;width:156px;}
.logs_benefits_w .li156 {float:left;width:160px;}
.logs_benefits_w .li180 {float:left;width:180px;}
.logs_benefit1 {display:block;position:relative;padding:5px 0px 20px;font-size:1.4em;color:#222;text-align:left;font-weight:600}
.ico_100_prd {position:absolute;right:7px;top:4px}
.logs_benefit2 {display:block;position:relative;font-size:1em;color:#b5b5b5;letter-spacing:-0.01em; margin-top:17px;}
.ico_logins_app {position:absolute;left:30px;top:-7px}
.logs_bfits_img {float:left;display:block;}
.logs_bfits_t_w {overflow:hidden;display:block;padding-top:16px;text-align:left}
.logs_bfits_t_w li {display:block;margin-bottom:7px}
.logs_bfits_t1 {overflow:hidden;display:block;color:#333;font-size:13px; font-weight:700;white-space:nowrap;text-overflow:ellipsis;}
.logs_bfits_t2 {display:block;color:#333;font-size:13px; line-height:1.9em;} 
/*---//로그인---*/
/*-----//20191022 index외 UI 변경-----*/

/*20191107 가성비 세트 UI 변경*/
#container_n {width:100%;min-width:1100px;height:272px;background:#fee480;margin:70px 0px 140px;} 
#container_n .contents2 {width:1100px;margin:0px auto;}
.main_list_tit_n {position:relative;margin:34px 0px 52px;width:100%;text-align:left;color:#782c07;font-size:25px;font-weight:700;letter-spacing:-0.03em;} 
.m_set_n_area {display:table;padding:0px;}
.m_set_n_area li {float:left;min-height:272px;margin-right:57px;}
.m_set_n_area li.last {float:left;margin-right:0px}
.m_set_n_txt {position:absolute;top:0px; height:100%; text-align:center; }
.m_set_n_t {display: inline-table;width:226px;height:100%;}
.m_set_n {display:table-cell;vertical-align:middle;overflow:hidden;width:226px;padding:195px 0 5px;vertical-align: middle;}
.m_set_n_price {display:inline-block;color:#333;font-weight:bold;font-size:19px;letter-spacing:0.02em;}
.m_set_n_price em {color:#555;font-weight:normal;font-size:17px;}
/*//20191107 가성비 세트 UI 변경*/

/*20191113 상품문의 상세 및 댓글리스트*/
.p_qa_n_w {background:#f3f3f3;border:1px solid #e6e7e8;padding:15px 20px 20px;position:relative;margin-top:12px}
.p_qa_n_w textarea{width:546px;height:63px;padding:10px;border:1px solid #d1d1d1;border-radius:3px;color:#666;font-size:12px;vertical-align:top;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.p_qa_n2_w {background:#f3f3f3;border:1px solid #e6e7e8;padding:15px 20px 20px;position:relative;margin-top:12px}
.p_qa_n2_w textarea{width:546px;height:98px;padding:10px;border:1px solid #d1d1d1;border-radius:3px;color:#666;font-size:12px;vertical-align:top;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.p_qa_n_picture {position:relative;top:4px;margin-left:1px;vertical-align:top;color:#a0a0a0;font-size:0.95em;font-family:"나눔고딕",NanumGothic,"돋움",Dotum,sans-serif}
.p_qa_n_picture img {display:inline-block;vertical-align:top; padding-bottom:2px}
.p_qa_n_txt {display:inline-block;padding:15px 20px 10px 0px; font-size:15px; line-height:1.8em; font-weight:normal; color:#444;}
.p_qa_n_txt img {display:block;margin-left:0px;max-width:80%;}
.p_qa_btns{position:absolute;right:0;top:20px}
.p_qa_btns a{font-size:12px;color:#8d8d8d;display:inline-block}

.p_qa_rewrite {position:relative;display:block;width:580px;}
.p_qa_rewrite textarea{width:480px;height:38px;*margin:10px 75px;padding:10px;border:1px solid #d1d1d1;border-radius:3px;color:#666;font-size:12px;vertical-align:top;font-family:NanumGothic,'나눔고딕',ng,'Malgun Gothic','맑은 고딕','돋움',Dotum,'Apple SD Gothic Neo',sans-serif}
.p_qa_rewrite .secret{height:22px; padding:8px 0}
.p_qa_rewrite .secret label{ display:inline-block;vertical-align:top;font-size:12px;}
.p_qa_rewrite .secret .chk{vertical-align:middle;}
.p_qa_rw_txt {display:inline-block;padding:15px 20px 10px 74px; font-size:14px; line-height:1.7em; font-weight:normal; color:#333;}

.qa_btn_regist_w {position:absolute;right:0px;top:56px;}
.qa_btn_regist {overflow:hidden;padding:21px 20px;background:#b6b7be;border:1px solid #9ea0a4;border-radius:3px;color:#fff;font-size:14px;font-weight:normal }
.qa_btn_regist:hover {background:#46bf9b;border:1px solid #46bf9b;border-radius:3px;color:#fff;font-size:14px;font-weight:normal }
/*//20191113 상품문의 상세 및 댓글리스트*/
</style>
</head>
<body>

<jsp:include page="../common/menubar.jsp"/>	
<div id="container" style="overflow: auto; height: 800px;" ><!-- container -->
	<div class="order_top_wrap">
		<div class="order_top">
			<div class="order_title1">장바구니</div>
		</div>
	
	
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
							<input type="checkbox" id="chkall" data-flg="Y">
							<!--체크박스선택시-->
								<span class="order_clicked_deal">
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
													<span class="order_clicked_deal">
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
												<input type="checkbox" checked="checked" id="chko7891780" data-flg="Y" data-bundledeliv="0" data-reservd="N">
												<!--체크박스선택시-->
													<span class="order_clicked_deal">
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
			<span class="cart_price">주문금액 <em class="fctah order_fcT1"><span id="grouporderprice" data-price="63800">63,800</span></em>원<em class="cart_plus2">+</em>배송비 <em class="fctah"><span id="groupdeliveryfee" data-price="0">0</span></em>원</span>
		</p>
</div>
</td>
</tr>
</tbody>
</table>
		
		
</div>










</div>
</body>
<footer>
	<jsp:include page ="../common/footer.jsp"/>
</footer>
</html>
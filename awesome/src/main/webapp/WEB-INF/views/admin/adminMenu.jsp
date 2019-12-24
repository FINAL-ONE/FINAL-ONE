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


  <link href="https://www.cssscript.com/wp-includes/css/sticky.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="js/speed-dial-menu-master/style.css">


<style>



   
</style>
</head>
<body>



<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="plus" viewBox="0 0 24 24">
      <path
        d="M5 13h6v6c0 0.552 0.448 1 1 1s1-0.448 1-1v-6h6c0.552 0 1-0.448 1-1s-0.448-1-1-1h-6v-6c0-0.552-0.448-1-1-1s-1 0.448-1 1v6h-6c-0.552 0-1 0.448-1 1s0.448 1 1 1z" />
    </symbol>
  </svg>
  <div class="speed-dial">
    <button class="speed-dial__button--root flex-center">
      <svg class="icon icon__plus">
        <use xlink:href="#plus"></use>
      </svg>
    </button>
    <div class="speed-dial__action" data-direction="bottom">
       
     <div class="speed-dial__item flex-center" style="transition-delay: 150ms;">
        <button class="speed-dial__button--small flex-center">
          <a href="AdminorderList.do">
          	<img src="resources/images/admin_orderList.png" style="width : 25px; height : 25px">
		  	<span>주문 목록 </span>
		  </a>
        </button>
      </div>
       
      <div class="speed-dial__item flex-center" style="transition-delay: 150ms;">
        <button class="speed-dial__button--small flex-center">
          <a href="sellafterlistViewAdmin.do">
          	<img src="resources/images/admin_afterList.png" style="width : 25px; height : 25px">
		  	<span>후기 조회 </span>
		  </a>
        </button>
      </div>
       
     <div class="speed-dial__item flex-center" style="transition-delay: 150ms;">
        <button class="speed-dial__button--small flex-center">
          <a href="memberLookup.do">
          	<img src="resources/images/admin_member.png" style="width : 25px; height : 25px">
		  	<span>회원 조회 </span>
		  </a>
        </button>
      </div>
      
    <div class="speed-dial__item flex-center" style="transition-delay: 150ms;">
        <button class="speed-dial__button--small flex-center">
          <a href="goodsList.do">
          	<img src="resources/images/admin_goodsmanag.png" style="width : 25px; height : 25px">
		  	<span>상품 관리 </span>
		  </a>
        </button>
      </div> 
    
    <div class="speed-dial__item flex-center" style="transition-delay: 150ms;">
        <button class="speed-dial__button--small flex-center">
          <a href="sell_goodsList.do">
          	<img src="resources/images/admin_sell_goods.png" style="width : 25px; height : 25px">
		  	<span>판매 상품 조회 </span>
		  </a>
        </button>
      </div> 
    
    <div class="speed-dial__item flex-center" style="transition-delay: 150ms;">
        <button class="speed-dial__button--small flex-center">
          <a href="goodsWriterView.do">
          		<img src="resources/images/admin_goodsPlus.png" style="width : 25px; height : 25px">
		  	<span>상품 등록 </span>
		  </a>
        </button>
      </div>
      <div class="speed-dial__item flex-center" style="transition-delay: 200ms;">
        <button class="speed-dial__button--small flex-center">
           <a href="adminMain.do">
          	<img src="resources/images/admin_home.png" style="width : 25px; height : 25px">
		  	<span>관리자 홈</span>
		  </a>
        </button>
      </div>

    </div>
  </div>
  <script>
try {
  fetch(new Request("https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js", { method: 'HEAD', mode: 'no-cors' })).then(function(response) {
    return true;
  }).catch(function(e) {
    var carbonScript = document.createElement("script");
    carbonScript.src = "//cdn.carbonads.com/carbon.js?serve=CE7DC2JW&placement=wwwcssscriptcom";
    carbonScript.id = "_carbonads_js";
    document.getElementById("carbon-block").appendChild(carbonScript);
  });
} catch (error) {
  console.log(error);
}
</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-46156385-1', 'cssscript.com');
  ga('send', 'pageview');

</script>








</body>




</html>
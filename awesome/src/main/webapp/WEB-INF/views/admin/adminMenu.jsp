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

<!-- 관리자 사이드 메뉴 아이콘  -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
body {font-family: "Lato", sans-serif;}

.admin_sidebar {
  height: 106%;
  width: 160px;
  position: absolute;
  z-index: 1;
  top: 20;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 16px;
}

.admin_sidebar a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
}

.admin_sidebar a:hover {
  color: #f1f1f1;
}

.admin_main {
  margin-left: 160px; /* Same as the width of the sidenav */
  padding: 0px 10px;
}

@media screen and (max-height: 450px) {
  .admin_sidebar {padding-top: 15px;}
  .admin_sidebar a {font-size: 18px;}
}

</style>
</head>
<body>
	<div class="admin_sidebar">
	  <a href="#home"><i class="fa fa-fw fa-home"></i>
	  	<c:url var ="myinfo" value="home.do"/>
	  	<span onclick ="location.href='${myinfo }'">Home </span>
	  </a>
  
  <a href="#services"><i class="fa fa-fw fa-wrench"></i> Services</a>
  
  
  <a href="#clients"><i class="fa fa-fw fa-user"></i> Clients</a>
  
  
  <a href="#contact"><i class="fa fa-fw fa-envelope"></i> Contact</a>
</div>


<%-- 	<!-- Vertical navbar -->
	<div class="vertical-nav bg-dark" id="sidebar">
  		<div class="py-4 px-3 mb-4 bg-dark">
      		<div class="media-body">
        		<h4 class="font-weight-white text-muted mb-0">관리자 메뉴</h4>
        		<p class="font-weight-grey text-muted mb-0">awesome 관리</p>
      		</div>
  		</div>

  		<p class="text-white font-weight-bold text-uppercase px-3 small pb-4 mb-0">Main</p>

  		<ul class="nav flex-column bg-dark mb-0">
    		<li class="nav-item">
      			<a href="#" class="nav-link text-light font-italic bg-dark">
                	<i class="fa fa-th-large mr-3 text-primary fa-fw"></i>
               		<c:url var ="myinfo" value="home.do"/>
           			 <span onclick ="location.href='${myinfo }'">Home </span>
            	</a>
    		</li>
    		<li class="nav-item">
      			<a href="#" class="nav-link text-light font-italic bg-dark">
                	<i class="fa fa-address-card mr-3 text-primary fa-fw"></i>
                	<c:url var ="memberLook" value="memberLookup.do"/>
           			 <span onclick ="location.href='${memberLook }'">회원관리 </span>
            	</a>
    		</li>
    		<li class="nav-item">
      			<a href="#" class="nav-link text-light font-italic bg-dark">
                	<i class="fa fa-cubes mr-3 text-primary fa-fw"></i>
                	<c:url var ="boardList" value="boardListView.do?category=1"/>
           			 <span onclick ="location.href='${boardList }'">공지사항 </span>
            	</a>
    		</li>
    		<li class="nav-item">
      			<a href="#" class="nav-link text-light font-italic bg-dark">
                	<i class="fa fa-shopping-bag mr-3 text-primary fa-fw"></i>
                	<c:url var ="shoplist" value="shopGoodsListView.do?mid=1"/>
           			 <span onclick ="location.href='${shoplist }'">shop </span>
            	</a>
    		</li>
  		</ul>
		
  		<p class="text-gray font-weight-bold text-uppercase px-3 small py-4 mb-0">goods</p>

  			<ul class="nav flex-column bg-dark mb-0">
    			<li class="nav-item">
      				<a href="#" class="nav-link text-light font-italic bg-dark">
                	<i class="fa fa-plus-square mr-3 text-primary fa-fw"></i>
                		<c:url var ="goodsWriter" value="goodsWriterView.do"/>
           			 	<span onclick ="location.href='${goodsWriter }'">상품등록 </span>
            		</a>
    			</li>
    			<li class="nav-item">
      				<a href="#" class="nav-link text-light font-italic bg-dark">
                	<i class="fa fa-search mr-3 text-primary fa-fw"></i>
               			<c:url var ="sell_goodsList" value="sell_goodsList.do"/>
           			 	<span onclick ="location.href='${sell_goodsList }'">판매상품조회 </span>
            		</a>
    			</li>
    			<li class="nav-item">
      				<a href="#" class="nav-link text-light font-italic bg-dark">
                	<i class="fa fa-tasks mr-3 text-primary fa-fw"></i>
           				<c:url var ="goodsList" value="goodsList.do"/>
   			 			<span onclick ="location.href='${goodsList }'">상품관리 </span>
            		</a>
    			</li>
    			<li class="nav-item">
      				<a href="#" class="nav-link text-light font-italic bg-dark">
                	<i class="fa fa-comments mr-3 text-primary fa-fw"></i>
                		<c:url var ="sellafterlistView" value="sellafterlistViewAdmin.do"/>
   			 			<span onclick ="location.href='${sellafterlistView }'">후기조회 </span>
            		</a>
    			</li>
   				<li class="nav-item">
      				<a href="#" class="nav-link text-light font-italic bg-dark">
                	<i class="fa fa-truck mr-3 text-primary fa-fw"></i>
               			<c:url var ="orderView" value="orderView.do"/>
   			 			<span onclick ="location.href='${orderView }'">주문목록 조회 </span>
            		</a>
    			</li>
  			</ul>
	</div>
	<!-- End vertical navbar -->

	<!-- Page content holder -->
	<div class="page-content p-5" id="content">
  		<!-- Toggle button -->
  		<button id="sidebarCollapse" type="button" class="btn btn-dark bg-dark rounded-pill shadow-sm px-4 mb-4"><i class="fa fa-bars mr-2"></i><small class="text-uppercase font-weight-bold">Toggle</small></button>
	
	</div>

	
	
	<!-- 사이드메뉴바 js  -->
		<!-- End content -->
		<script>
		try {
		  fetch(new Request("https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js", { method: 'HEAD', mode: 'no-cors' })).then(function(response) {
		    return true;
		  }).catch(function(e) {
		    var carbonScript = document.createElement("script");
		    carbonScript.src = "//cdn.carbonads.com/carbon.js?serve=CK7DKKQU&placement=wwwjqueryscriptnet";
		    carbonScript.id = "_carbonads_js";
		    document.getElementById("carbon-block").appendChild(carbonScript);
		  });
		} catch (error) {
		  console.log(error);
		}
		</script>
		<script type="text/javascript">
		
		  var _gaq = _gaq || [];
		  _gaq.push(['_setAccount', 'UA-36251023-1']);
		  _gaq.push(['_setDomainName', 'jqueryscript.net']);
		  _gaq.push(['_trackPageview']);
		
		  (function() {
		    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		  })();
		
		</script>
			
		
		
		
		
		 --%>
		
	
	
	
	
	

</body>




</html>
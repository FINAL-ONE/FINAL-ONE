<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>

.outer{
	width : 1300px;
 	margin-left: auto;
   	margin-right:auto;
}
.contentArea{
	width : 90%;
	/* background : gray; */
 	margin-left: auto;
   	margin-right:auto;
    /* margin-top:50px; */
}
/* 롤링배너 */
.rolling-banner{
	width : 1200px;
	height : 300px;
	margin-left: 10px;
	margin-right:auto;
    margin-top:20px;
    margin-bottom: 20px;
}

/* banner */
.rbanner {position: relative; width: 1455px; height: 300px; margin:0 auto; padding:0; overflow: hidden; cursor : pointer;}
.rbanner ul {position: absolute; margin: 0px; padding:0; list-style: none; }
.rbanner ul li {float: left; width: 1455px; height: 300px; margin:0; padding:0;}
	
	
.mini-banner{
	width : 350px;
	height : 300px;
	display : inline-block;
	margin-left: 31px;
	cursor : pointer;
	
}
.goods-list{
	width : 270px;
	height : 300px;
	/* background : yellow; */
	display : inline-block;
 	margin-left: 17px;
    margin-right:auto;
    margin-top:20px;
    cursor : pointer;
    
}
.goods-img{
	width : 200px;
	height : 200px;
	/* background : green; */
 	margin-left:auto;
    margin-right:auto;
    margin-top:20px;
    cursor : pointer;
}
.goods-list:hover{
	border : 1px solid red;
}
.goods-img:hover{
	cursor : pointer;
	-webkit-transform : scale(1.1,1.1);
}
.good-info{
	height : 50px;
}


</style>
</head>
<body>

	<jsp:include page ="../common/menubar.jsp"/>
	<div id="container" style="overflow: auto; overflow-x : hidden;  height: auto;" ><!-- container -->
	
	
	<div class = "outer">
		<div class = "contentArea">
			<div class = "rolling-banner">
				<div class="rbanner">	
					<ul>
						<li><img src="resources/images/mainbanner_1.png" width="1200" height="300px"></li>
						<li><img src="resources/images/mainbanner_2.png" width="1200" height="300px"></li>
						<li><img src="resources/images/mainbanner_3.png" width="1200" height="300px"></li>
					</ul>
				</div>
			</div>
			<div class = "mini-banner">
				<img src="resources/images/minibanner_1.png" width="350" height="250px">
			</div>
			<div class = "mini-banner">
				<img src="resources/images/minibanner_2.png" width="350" height="250px">
			</div>
			<div class = "mini-banner">
				<img src="resources/images/minibanner_2.png" width="350" height="250px">
			</div>
			<c:forEach var="a" items="${list}">
				<div class = "goods-list" align ="center">
						<c:url var="adetail" value="adetail.do">
							<c:param name="sellNum" value="${a.sellNum }"/>
						</c:url>
						<a href="${adetail}" style="text-decoration:none">
							<div class = "goods-img">
								<img src="resources/auploadFiles/${a.filePath}" width ="200px" height ="200px">
							</div>
							<br>
								<span>${a.goodsTitle}</span><br>
							<div class= "good-info">
								<span>${a.goodsContent}</span><br>
							</div>
						</a>
				</div>
			</c:forEach>
			
			
			
		</div>
		
	</div>
	
	<!-- 롤링 배너  -->
	<script>
		$(document).ready(function() {
			var $banner = $(".rbanner").find("ul");
	
			var $bannerWidth = $banner.children().outerWidth();//이미지의 폭
			var $bannerHeight = $banner.children().outerHeight(); // 높이
			var $length = $banner.children().length;//이미지의 갯수
			var rollingId;
	
			//정해진 초마다 함수 실행
			rollingId = setInterval(function() { rollingStart(); }, 3000);//다음 이미지로 롤링 애니메이션 할 시간차
	    
			function rollingStart() {
				$banner.css("width", $bannerWidth * $length + "px");
				$banner.css("height", $bannerHeight + "px");
				//alert(bannerHeight);
				//배너의 좌측 위치를 옮겨 준다.
				$banner.animate({left: - $bannerWidth + "px"}, 1500, function() { //숫자는 롤링 진행되는 시간이다.
					//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
					$(this).append("<li>" + $(this).find("li:first").html() + "</li>");
					//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
					$(this).find("li:first").remove();
					//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
					$(this).css("left", 0);
					//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
				});
			}
		}); 
	</script>
	
	
	
	
	
	
	
	</div>
</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</html>
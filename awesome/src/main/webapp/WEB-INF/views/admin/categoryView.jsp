<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="js/Modal.js-master/build/css/modal.css" rel="stylesheet">

<style>
	.outer{
		width : 100%;
		height : 100%;
	}
	.goodsTable {
	  border-collapse: collapse;
	  border-spacing: 0;
	  width: 90%;
	  border: 1px solid #ddd;
	  /* text-align :center; */
	}
	th, td {
	
	  /* text-align: left; */
	  padding: 13px;
	  
	}
	
	tr:nth-child(even) {
	  background-color: #f2f2f2;
	}
	
	/* 모달 css */
	  *, *:before, *:after {
	    box-sizing: border-box; }
	    body { font-family: 'Roboto'; }
	    .modal_container {text-align: center; }
	    
	.tablestatus{
		min-width: 100px;
	}
	
	.tableLeft{
		float: left;
	} 
	
	#checkboxTestTbl{
		/* margin: 0px; */
		margin-right: 0px;
	
	}
	#checkboxTestTbl2{
		/* margin: 0px; */ 
	}

	.ScrollButton {
	  position: fixed;   /* 버튼의 위치 고정 */
	  right: 10px;       /* x 위치 입력 */
	  cursor: pointer;   /* 호버링 했을 때 커서 모양 변경 */
	  z-index: 10;       /* 다른 태그에 가려지지 않게 우선순위 변경 */
	  display: none;     /* 스크롤 위치에 상관없이 보이게 하려면 생략 */
	}
	/* 두 태그에 각각 y 위치 입력 */
	#TopButton {
	  bottom: 108px;        
	}
	#BottomButton {
	  bottom: 75px;
	}
	
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>   
	<%-- <jsp:include page ="../admin/adminMenu.jsp"/> --%>
 	<div class = "outer">
		<div id="container" style= "overflow: auto;"><!-- container -->

			<c:if test="${!empty loginUser }">
		   		<div align ="center">
		   			<button onclick="location.href='goodsWriterView.do'">상품 등록하기</button>
		   		</div>
			</c:if>
			<br>
		<form id = "goodsInsertForm" action="aStatusUpdate.do" method="post">
			<div class="tableLeft" style= "width: 150px;">
				<table id ="checkboxTestTbl2" class = "goodsTable" align="center" border="1" cellspacing="0" style="clear:right;">
					<tr bgcolor ="#99ccff" style="width:100%;">
						<th>카테고리</th>
					</tr>
					<c:forEach var="a" items="${gClist}">
						<tr>
							<input id=cateCd  	type = "hidden" name="cateCd" 		value = "${a.cateCd}">
							<input id=cateNm  	type = "hidden" name="cateNm"	value = "${a.cateNm}">
						</tr>
					</c:forEach>
				</table> 
			</div>
			<div class="tableLeft" style= "width: auto;">
				<table id ="checkboxTestTbl2" class = "goodsTable" align="center" border="1" cellspacing="0" style="clear:right;">
					<tr bgcolor ="#99ccff" >
						<th>대</th>
					</tr>
					<c:forEach var="a" items="${gLlist}">
						<tr>
							<input id=cateCd  	type = "hidden" name="cateCd" 	value = "${a.cateCd}">
							<input id=cateNm  	type = "hidden" name="cateNm" 	value = "${a.cateNm}">
						</tr>
					</c:forEach>
				</table> 
			</div>
			<div class="tableLeft" style= "width: auto;">
				<table id ="checkboxTestTbl2" class = "goodsTable" align="center" border="1" cellspacing="0" style="clear:right;">
					<tr bgcolor ="#99ccff" >
						<th>중</th>
					</tr>
					<c:forEach var="a" items="${gMlist}">
						<tr>
							<input id=cateCd  	type = "hidden" name="cateCd" 	value = "${a.cateCd}">
							<input id=cateNm  	type = "hidden" name="cateNm" 	value = "${a.cateNm}">
						</tr>
					</c:forEach>
				</table> 
			</div>
			<div class="tableLeft" style= "width: auto;">
				<table id ="checkboxTestTbl2" class = "goodsTable" align="center" border="1" cellspacing="0" style="clear:right;">
					<tr bgcolor ="#99ccff" >
						<th>소</th>
					</tr>
					<c:forEach var="a" items="${Slist}">
						<tr>
							<input id=gId  		type = "hidden" name="gId" 		value = "${a.gId}">
							<input id=cateNm  	type = "hidden" name="cateNm" 	 value = "${a.cateNm}">
						</tr>
					</c:forEach>
				</table> 
			</div>
			
			
			
			
			
			
			
			
			
			
			</form>
			
		<!-- 체크박스 전체선택 -->	
		  <script>
		        $(document).ready(function(){
		            var tbl = $("#checkboxTestTbl");
		            
		            // 테이블 헤더에 있는 checkbox 클릭시
		            $(":checkbox:first", tbl).click(function(){
		                // 클릭한 체크박스가 체크상태인지 체크해제상태인지 판단
		                if( $(this).is(":checked") ){
		                    $(":checkbox", tbl).attr("checked", "checked");
		                }
		                else{
		                    $(":checkbox", tbl).removeAttr("checked");
		                }
		 
		                // 모든 체크박스에 change 이벤트 발생시키기               
		                $(":checkbox", tbl).trigger("change");
		            });
		             
		            // 헤더에 있는 체크박스외 다른 체크박스 클릭시
		            $(":checkbox:not(:first)", tbl).click(function(){
		                var allCnt = $(":checkbox:not(:first)", tbl).length;
		                var checkedCnt = $(":checkbox:not(:first)", tbl).filter(":checked").length;
		                 
		                // 전체 체크박스 갯수와 현재 체크된 체크박스 갯수를 비교해서 헤더에 있는 체크박스 체크할지 말지 판단
		                if( allCnt==checkedCnt ){
		                    $(":checkbox:first", tbl).attr("checked", "checked");
		                }
		                else{
		                    $(":checkbox:first", tbl).removeAttr("checked");
		                }
		            }).change(function(){
		                if( $(this).is(":checked") ){
		                    // 체크박스의 부모 > 부모 니까 tr 이 되고 tr 에 selected 라는 class 를 추가한다.
		                    $(this).parent().parent().addClass("selected");
		                }
		                else{
		                    $(this).parent().parent().removeClass("selected");
		                }
		            });
		        });
		        
		        
			    // 품절버튼 클릭시
        	/* 	function soldout () {
	        		if(confirm('품절처리하시겠습니까?')){
	        			$("#goodsInsertForm").submit();
	        			alert("품절되었습니다.");
	        		} else {
	        			alert("취소되었습니다.");
	        		}
		        }  */
			    	
			    	</script>
		    
				<div class="modal_container">
				  <div class="css-script-ads">
				    	<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- CSSScript Demo Page -->
					<ins class="adsbygoogle"
					     style="display:inline-block;width:728px;height:90px"
					     data-ad-client="ca-pub-2783044520727903"
					     data-ad-slot="3025259193"></ins>
						<script>
							(adsbygoogle = window.adsbygoogle || []).push({});
						</script>
					</div>
				</div>
				<script src="js/Modal.js-master/modal.js"></script>
				
		<script>
			function soldout(){
				Modal.confirm({
					title: '상태 변경 여부',
					message: '상태 변경 처리하시겠습니까?',
					onConfirm: function() {
						$("#goodsInsertForm").submit();
					    //alert('완료되었습니다');
			  		},
					  	onCancel: function() {
					    //alert('취소되었습니다.');
			  		},
				});
				return;
			}
		</script>
				  
		<!-- 모달창 script -->
		<script>
			  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
			
			  ga('create', 'UA-46156385-1', 'cssscript.com');
			  ga('send', 'pageview');
		
		</script>

			<p align="center">
				<c:url var ="adminMain" value="adminMain.do"/>
				<a href="${adminMain}">관리자페이지 이동</a>&nbsp;
				<c:url var ="sell_goodsList" value="sell_goodsList.do"/>
				<a href="${sell_goodsList}">목록전체보기</a>
			</p>
	
		</div>
	</div> 
	
	
	<script type="text/javascript">
		$(function(){
			$("#checkboxTestTbl td").mouseenter(function(){
			//$(".tableList").mouseenter(function(){
				/* $(this).parent().css({"background":"#fa4a4a","cursor":"pointer"}); */
				$(this).parent().css({"background":"#FFF7D5","cursor":"pointer"});
				//$(".tableList").css({"background":"#FFF7D5","cursor":"pointer"});
				
			}).mouseout(function(){ 
				//$(".tableList").css({"background":"white"});
				$(this).parent().css({"background":"white"});
			}).click(function(){	
				var gId = $(this).parent().children("#gId").val();
				var sellNum = $(this).parent().children("#sellNum").val();
				//var goodsTitle = $(this).parent().children("#goodsTitle").val();
				//var goodsPrice = $(this).parent().children("#goodsPrice").val();
				//var count = $(this).parent().children("#count").val();
				//var goodsContent = $(this).parent().children("#goodsContent").val();
				//var status = $(this).parent().children("#status").val();

				location.href="sell_goodsDetailView.do?sellNum="+sellNum;
			});
			
//--------------------------------------------------------------------------------------------------

			$("#checkboxTestTbl2 td").mouseenter(function(){
				$(this).parent().css({"background":"#fa4a4a","cursor":"pointer"});
			}).mouseout(function(){ ;
				$(this).parent().css({"background":"white"});
			}).click(function(){	
				//soldout();
				var sellNum = $(this).parent().children("#sellNum2").val();
				var status = $(this).parent().children("#status2").val();
				var gId = $(this).parent().children("#gId").val();

//alert("sellNum : " + sellNum + " / " + "status : " + status);
				
 				Modal.confirm({
					title: '상태 변경 여부',
					message: '상태 변경 처리하시겠습니까?',
					onConfirm: function() {
						//$("#goodsInsertForm").submit();
						location.href="aStatusUpdate.do?sellNum="+sellNum+"&status="+status+"&gId="+gId;
						
					    //alert('완료되었습니다');
			  		},
					  	onCancel: function() {
					    //alert('취소되었습니다.');
			  		},
				}); 
				
				return;
				
			});				
			
			
		}); 
   </script>
		
		
<script>
	jQuery(document).ready(function() { 
	
	    var tableHeight = jQuery("#checkboxTestTbl td").height(); 
	
	    //alert(tableHeight); 
	    $("#checkboxTestTbl2 td").height(tableHeight);
	}); 

</script>
		
	<a id="TopButton" class="ScrollButton"><img src="resources/images/top.PNG"></a>
	<a id="BottomButton" class="ScrollButton"><img src="resources/images/boottom.PNG"></a>
	<a id="footer"></a>
	<!-- 위로 아래로 버튼 클릭시 이동 -->		
	<script>
	$(function() {
	    $(window).scroll(function() {
	        if ($(this).scrollTop() > 600) {
	            $('.ScrollButton').fadeIn();
	        } else {
	            $('.ScrollButton').fadeOut();
	        }
	    });
	        
	    $("#TopButton").click(function() {
	        $('html').animate({scrollTop : 0}, 600);
	    });
	 
	    $("#BottomButton").click(function() {
	        $('html').animate({scrollTop : ($('#footer').offset().top)}, 600);
	    });
	});

	</script>
		
		
</body>
<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</html>
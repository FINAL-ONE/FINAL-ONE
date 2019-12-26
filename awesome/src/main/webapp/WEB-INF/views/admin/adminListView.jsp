<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.3.1/lumen/bootstrap.min.css"> -->
<style>
	.container { margin: 150px auto; }
	
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
	#surveyListTable{
	  border-collapse: collapse;
	  border-spacing: 0;
	  width: 1400px;
	  border: 1px solid #ddd;
	  text-align :center;
	}
	
	#surveyListTable tr:nth-child(even) {
	  /* background-color: #f2f2f2; */
	}
	
	
	
	/* 모달창 css */
	/* The Modal (background) */
	.modal {
	  display: none; /* Hidden by default */
	  position: fixed; /* Stay in place */
	  z-index: 1; /* Sit on top */
	  padding-top: 100px; /* Location of the box */
	  left: 0;
	  top: 0;
	  width: 100%; /* Full width */
	  height: 100%; /* Full height */
	  overflow: auto; /* Enable scroll if needed */
	  background-color: rgb(0,0,0); /* Fallback color */
	  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	}
	
	/* Modal Content */
	.modal-content {
	  background-color: #fefefe;
	  /* margin: auto; */
	  margin-top : 100px;
	  margin-left : 30%;
	  padding: 40px;
	  border: 1px solid #888;
	  width: 40%;
	
	}
	
	/* The Close Button */
	.close {
	  color: #aaaaaa;
	  float: right;
	  font-size: 28px;
	  font-weight: bold;
	}
	
	.close:hover,
	.close:focus {
	  color: #000;
	  text-decoration: none;
	  cursor: pointer;
	}
	
	/*포인트 수정 버튼 css  */
	.myBtn{
		width :80px;
		height : 30px;
		font-size : 13px;
		border-radius: 4px;
		background-color: #4CAF50;
		border: none;
		color: #FFFFFF;
		text-align: center;
		padding: 6px;
		transition: all 0.5s;
		cursor: pointer;
		margin: 3px;
	}
	
	.myBtn span {
	  cursor: pointer;
	  display: inline-block;
	  position: relative;
	  transition: 0.5s;
	}
	
	.myBtn span:after {
	  content: '\00bb';
	  position: absolute;
	  opacity: 0;
	  top: 0;
	  right: -20px;
	  transition: 0.5s;
	}
	
	.myBtn:hover span {
	  padding-right: 25px;
	}
	
	.myBtn:hover span:after {
	  opacity: 1;
	  right: 0;
	}
	.guide{
		display:none;
		font-size:12px;
		top:12px;
		right:10px;
	}
	span.ok{color:green;}
	span.error{color:red;}
	
	
	.aOrder{
		cursor: pointer;
		/* color: black; */
		color: white;
	}
	.dOrder{
		cursor: pointer;
		/* color: black; */
		color: white;
	}
	.aOrder:hover{
		/* color: white; */
		color: black;
	}
	.dOrder:hover{
		/* color: white; */
		color: black;
	}	
	
	.pagingArea button {
		  border: 1px solid #dcdcdc;
		  outline: none;
		  padding: 6px 12px;
		  cursor: pointer;
		  background: white;
		  font-size: 13px;
	      color: #828282;
	}
	
</style>
</head>
<body>

	<jsp:include page ="../common/menubar.jsp"/>
	<%-- <jsp:include page ="../admin/adminMenu.jsp"/> --%>
	
	<br><br>
	<div>
	<h2 align="center"> 상품 판매량 조회 </h2>
		<table align="center" width="100%" border="1" cellspaction="1" id="surveyListTable"
			class="table table-bordered table-striped table-hover rowfy">
			<thead>
				<tr bgcolor ="#fa4a4a" style = "color : white; height:53px;" class="noExl">
				<th style="display:none;">숨킨 상품번호</th>
				
					<th>
						<div style="display:flex; width: 100%">
							<div align="center" style="padding-top: 5%; padding-left: 10%; width: 80%" >판매수량</div>
							<div>
								<div>
									<!-- <button onclick="sortTD ( 0 )" >▲</button> -->
									<div onclick="sortTD ( 0 )" class="aOrder">▲</div>
								</div>
								<div> 
									<!-- <button onclick="reverseTD ( 0 )">▼</button> -->
									<div  onclick="reverseTD ( 0 )" class="dOrder">▼</div>
								</div>
							</div>
						</div>
					</th> 
					<th>
						<div style="display:flex; width: 100%">
							<div align="center" style="padding-top: 5%; padding-left: 10%; width: 80%" >상품번호</div>
							<div>
								<div>
									<!-- <button onclick="sortTD ( 1 )" >▲</button> -->
									<div onclick="sortTD ( 1 )" class="aOrder">▲</div>
								</div>
								<div>
									<!-- <button onclick="reverseTD ( 1 )">▼</button> -->
									<div  onclick="reverseTD ( 1 )" class="dOrder">▼</div>
								</div>
							</div>
						</div>
					</th>	
					<th>
						<div style="display:flex; width: 100%">
							<div align="center" style="padding-top: 3%; padding-left: 10%; width: 80%" >상품이름</div>
							<div>
								<div>
									<!-- <button onclick="sortTD ( 2 )" >▲</button> -->
									<div onclick="sortTD ( 2 )" class="aOrder">▲</div>
								</div>
								<div>
									<!-- <button onclick="reverseTD ( 2 )">▼</button> -->
									<div  onclick="reverseTD ( 2 )" class="dOrder">▼</div>
								</div>
							</div>
						</div>
					</th>					
					<th>
						<div style="display:flex; width: 100%">
							<div align="center" style="padding-top: 5%; padding-left: 10%; width: 80%" >상품가격</div>
							<div>
								<div>
									<!-- <button onclick="sortTD ( 3 )" >▲</button> -->
									<div onclick="sortTD ( 3 )" class="aOrder">▲</div>
								</div>
								<div>
									<!-- <button onclick="reverseTD ( 3 )">▼</button> -->
									<div  onclick="reverseTD ( 3 )" class="dOrder">▼</div>
								</div>
							</div>
						</div>
					</th>					
					
					<th>
						<div style="display:flex; width: 100%">
							<div align="center" style="padding-top: 5%; padding-left: 10%; width: 80%" >상품상태</div>
							<div>
								<div>
									<!-- <button onclick="sortTD ( 4 )" >▲</button> -->
									<div onclick="sortTD ( 4 )" class="aOrder">▲</div>
								</div>
								<div>
									<!-- <button onclick="reverseTD ( 4 )">▼</button> -->
									<div  onclick="reverseTD ( 4 )" class="dOrder">▼</div>
								</div>
							</div>
						</div>
					</th>					
					<th>
						<div style="display:flex; width: 100%">
							<div align="center" style="padding-top: 5%; padding-left: 10%; width: 80%" >매진구분</div>
							<div>
								<div>
									<!-- <button onclick="sortTD ( 5 )" >▲</button> -->
									<div onclick="sortTD ( 5 )" class="aOrder">▲</div>
								</div>
								<div>
									<!-- <button onclick="reverseTD ( 5 )">▼</button> -->
									<div  onclick="reverseTD ( 5 )" class="dOrder">▼</div>
								</div>
							</div>
						</div>
					</th>					
				</tr>
			</thead>
				<c:forEach var="n" items="${glist}">
					<tr>
						<input id="gId" 	type = "hidden" value = "${n.gId}">
						<input id="cateCd"  type = "hidden" value = "${n.cateCd}">
						<input id="cateNm"  type = "hidden" value = "${n.cateNm}">
						<input id="lclCd"  	type = "hidden" value = "${n.lclCd}">
						<input id="mclCd"  	type = "hidden" value = "${n.mclCd}">
						<input id="sclCd"  	type = "hidden" value = "${n.sclCd}">
						
						<input id="goodsName"  	type = "hidden" value = "${n.goodsName}">
						<input id="goodsPrice"  type = "hidden" value = "${n.goodsPrice}">
						<input id="count"  		type = "hidden" value = "${n.count}">
						<input id="goodsStatus"	type = "hidden" value = "${n.goodsStatus}">
						<input id="soldout"  	type = "hidden" value = "${n.soldout}">
						
						
						<td align="center" width="10%"><fmt:formatNumber value="${n.count}" groupingUsed="true" /></td>
						<td align="center" width="10%">${n.gId}</td>
						<td width="20%" align="left">
								&nbsp;${n.goodsName}
						</td>
						<td align="center" width="10%"><fmt:formatNumber value="${n.goodsPrice}" groupingUsed="true" /></td>
						<td align="center" width="10%">${n.goodsStatus }</td>
						<td align="center" width="10%">${n.soldout }</td>
					</tr>
				</c:forEach>
				
			<tbody>
			
			</tbody>
		</table>
	</div>
	<br>
		<!-- 페이징 부분 -->
		 <div class="pagingArea" align="center">
	         <!-- 맨 처음으로(<<) -->
	         <button onclick="location.href='adminSalesVolume.do?page=1'"> << </button>
    
     					<!-- 이전 페이지로(<) -->
		        <c:if test="${pi.currentPage <= 1 }">
		            <button disabled> < </button>
		        </c:if>
		         <c:if test="${pi.currentPage > 1 }">
		         
		            <button onclick="location.href='adminSalesVolume.do?page=${pi.currentPage -1}'"> < </button>
		        </c:if>
     
			<!-- 10개의 페이지 목록 -->
	         <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
	           <c:if test="${pi.currentPage == p }">
	               <button style="background:#ec434a;color:white" disabled >${p}</button>
	           </c:if>
	            <c:if test="${pi.currentPage != p }">
	               <button onclick="location.href='adminSalesVolume.do?page=${p}'">${p}</button>
	            </c:if>
	       </c:forEach>
	       
	         <c:if test="${pi.currentPage >= pi.maxPage }">
            	<button disabled> > </button>
          	</c:if>
	          <c:if test="${pi.currentPage < pi.maxPage }">
	            <button onclick="location.href='adminSalesVolume.do?page=${pi.currentPage + 1}'"> > </button>
	          </c:if>
		     
		     <!-- 맨 끝으로(>>) -->
 					<button onclick="location.href='adminSalesVolume.do?page=${pi.maxPage}'"> >> </button>
  
		</div> <!-- 페이징 부분 -->

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
	
	
	
	
	
	
	
	
<!-- ====================================================================================================================================== -->

<script type="text/javascript">
	
	// 출처 : http://tonks.tistory.com/79 
	// 에러가 나온다면, 여기에 댓글을 남겨주세요. 
	
	
	/* sortingNumber() : 숫자인 실수만으로 되어있을 때, 적용될 함수 */ 
	
	function sortingNumber( a , b ){  
	
	        if ( typeof a == "number" && typeof b == "number" ) return a - b; 
	
	        // 천단위 쉼표와 공백문자만 삭제하기.  
	        var a = ( a + "" ).replace( /[,\s\xA0]+/g , "" ); 
	        var b = ( b + "" ).replace( /[,\s\xA0]+/g , "" ); 
	
	        var numA = parseFloat( a ) + ""; 
	        var numB = parseFloat( b ) + ""; 
	
	        if ( numA == "NaN" || numB == "NaN" || a != numA || b != numB ) return false; 
	
	        return parseFloat( a ) - parseFloat( b ); 
	} 
	
	
	/* changeForSorting() : 문자열 바꾸기. */ 
	
	function changeForSorting( first , second ){  
	
	        // 문자열의 복사본 만들기. 
	        var a = first.toString().replace( /[\s\xA0]+/g , " " ); 
	        var b = second.toString().replace( /[\s\xA0]+/g , " " ); 
	
	        var change = { first : a, second : b }; 
	
	        if ( a.search( /\d/ ) < 0 || b.search( /\d/ ) < 0 || a.length == 0 || b.length == 0 ) return change; 
	
	        var regExp = /(\d),(\d)/g; // 천단위 쉼표를 찾기 위한 정규식. 
	
	        a = a.replace( regExp , "$1" + "$2" ); 
	        b = b.replace( regExp , "$1" + "$2" ); 
	
	        var unit = 0; 
	        var aNb = a + " " + b; 
	        var numbers = aNb.match( /\d+/g ); // 문자열에 들어있는 숫자 찾기 
	
	        for ( var x = 0; x < numbers.length; x++ ){ 
	
	                var length = numbers[ x ].length; 
	                if ( unit < length ) unit = length; 
	        } 
	
	        var addZero = function( string ){ // 숫자들의 단위 맞추기 
	
	                var match = string.match( /^0+/ ); 
	
	                if ( string.length == unit ) return ( match == null ) ? string : match + string; 
	
	                var zero = "0"; 
	
	                for ( var x = string.length; x < unit; x++ ) string = zero + string; 
	
	                return ( match == null ) ? string : match + string; 
	        }; 
	
	        change.first = a.replace( /\d+/g, addZero ); 
	        change.second = b.replace( /\d+/g, addZero ); 
	
	        return change; 
	} 
	
	
	/* byLocale() */ 
	
	function byLocale(){ 
	
	        var compare = function( a , b ){ 
	
	                var sorting = sortingNumber( a , b ); 
	
	                if ( typeof sorting == "number" ) return sorting; 
	
	                var change = changeForSorting( a , b ); 
	
	                var a = change.first; 
	                var b = change.second; 
	
	                return a.localeCompare( b ); 
	        }; 
	
	        var ascendingOrder = function( a , b ){  return compare( a , b );  }; 
	        var descendingOrder = function( a , b ){  return compare( b , a );  }; 
	
	        return { ascending : ascendingOrder, descending : descendingOrder }; 
	} 
	
	
	/* replacement() */ 
	 
	function replacement( parent ){  
	        var tagName = parent.tagName.toLowerCase(); 
	        if ( tagName == "table" ) parent = parent.tBodies[ 0 ]; 
	        tagName = parent.tagName.toLowerCase(); 
	        if ( tagName == "tbody" ) var children = parent.rows; 
	        else var children = parent.getElementsByTagName( "li" ); 
	
	        var replace = { 
	                order : byLocale(), 
	                index : false, 
	                array : function(){ 
	                        var array = [ ]; 
	                        for ( var x = 0; x < children.length; x++ ) array[ x ] = children[ x ]; 
	                        return array; 
	                }(), 
	                checkIndex : function( index ){ 
	                        if ( index ) this.index = parseInt( index, 10 ); 
	                        var tagName = parent.tagName.toLowerCase(); 
	                        if ( tagName == "tbody" && ! index ) this.index = 0; 
	                }, 
	                getText : function( child ){ 
	                        if ( this.index ) child = child.cells[ this.index ]; 
	                        return getTextByClone( child ); 
	                }, 
	                setChildren : function(){ 
	                        var array = this.array; 
	                        while ( parent.hasChildNodes() ) parent.removeChild( parent.firstChild ); 
	                        for ( var x = 0; x < array.length; x++ ) parent.appendChild( array[ x ] ); 
	                }, 
	                ascending : function( index ){ // 오름차순 
	                        this.checkIndex( index ); 
	                        var _self = this; 
	                        var order = this.order; 
	                        var ascending = function( a, b ){ 
	                                var a = _self.getText( a ); 
	                                var b = _self.getText( b ); 
	                                return order.ascending( a, b ); 
	                        }; 
	                        this.array.sort( ascending ); 
	                        this.setChildren(); 
	                }, 
	                descending : function( index ){ // 내림차순
	                        this.checkIndex( index ); 
	                        var _self = this; 
	                        var order = this.order; 
	                        var descending = function( a, b ){ 
	                                var a = _self.getText( a ); 
	                                var b = _self.getText( b ); 
	                                return order.descending( a, b ); 
	                        }; 
	                        this.array.sort( descending ); 
	                        this.setChildren(); 
	                } 
	        }; 
	        return replace; 
	} 
	
	function getTextByClone( tag ){  
	        var clone = tag.cloneNode( true ); // 태그의 복사본 만들기. 
	        var br = clone.getElementsByTagName( "br" ); 
	        while ( br[0] ){ 
	                var blank = document.createTextNode( " " ); 
	                clone.insertBefore( blank , br[0] ); 
	                clone.removeChild( br[0] ); 
	        } 
	        var isBlock = function( tag ){ 
	                var display = ""; 
	                if ( window.getComputedStyle ) display = window.getComputedStyle ( tag, "" )[ "display" ]; 
	                else display = tag.currentStyle[ "display" ]; 
	                return ( display == "block" ) ? true : false; 
	        }; 
	        var children = clone.getElementsByTagName( "*" ); 
	        for ( var x = 0; x < children.length; x++){ 
	                var child = children[ x ]; 
	                if ( ! ("value" in child) && isBlock(child) ) child.innerHTML = child.innerHTML + " "; 
	        } 
	        var textContent = ( "textContent" in clone ) ? clone.textContent : clone.innerText; 
	        return textContent; 
	} 
</script>

	<script type="text/javascript">
		var myTable = document.getElementById( "surveyListTable" ); 
		var replace = replacement( myTable ); 
		function sortTD( index ){    replace.ascending( index );    } 
		function reverseTD( index ){    replace.descending( index );    } 
	</script>

<!-- ====================================================================================================================================== -->
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>

</html>
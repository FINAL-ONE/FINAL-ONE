<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ page session="false" %>
    	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<title>Insert title here</title>
</head>
<style>
.pagingArea button {
	  border: 1px solid #dcdcdc;
	  outline: none;
	  padding: 6px 12px;
	  cursor: pointer;
	  background: white;
	  font-size: 13px;
      color: #828282;
}

.centerDiv{
	  width:880px;
      margin-left:auto;
      margin-right:auto;
      height: auto;
      padding-left: 40px;
      
}

#orderTable{
	border:none;
	border-top: 1px solid black;
}
.centerDiv #tr td{	
	text-align: center;
	font-weight: 600;
	height: 50px;
	font-size: 14px;
	border-top : none;
    border-left: 0 none;
/*     border-right: 1px solid #d0d0d0; */
    border-bottom: 1px solid #d0d0d0;
  
}

#orderTable td{
	height: 70px;
	border-bottom:  1px solid #d0d0d0;
	font-size: 14px;
	text-align : center;
}


.countBox{
height:170px;
border :5px solid gray;
}


#tb{
height : 170px;
width : 880px;
}

#tb tr td{
font-size : 40px;
font-family:  'Do Hyeon', sans-serif;
text-align: center;
}


#tb tbody tr td{
color : red;
font-size: 30px;
font-weight:bold;
font-family:  'Do Hyeon', sans-serif;
height:0px;
}

a {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	display: block;
	max-width: 150px;
	text-decoration: none;
	border-radius: 4px;
	padding: 10px 20px;
}


a.button {
	color: gray;
	box-shadow: gray 0 0px 0px 2px inset;
}

a.button:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: #fa4a4a 0 80px 0px 2px inset;
}

</style>
<body>

	<jsp:include page="../common/menubar.jsp" />

<div class = "centerDiv"> 
		<div>
		<h1>주문/배송 조회</h1>
	
		<input type="text" id="date1" value="${os.date1 }"><input type="text" id="date2" value="${os.date2 }"><button id=search onclick="search()">검색</button><button onclick="location.href='orderview.do'">전체목록조회하기</button><br>
	
		<br>

			<table align="center" cellspacing="0" width="880px" id="orderTable">
				<tr id="th">
					<td style="width: 150px">주문일자<br>[주문번호]</td>
					<td style="width: 400px" align="center">이미지</td>
					<td style="width: 400px" align="center">상품정보</td>
					<td style="width: 100px">수량</td>
					<td style="width: 100px">주문금액</td>
					<td style="width: 150px">진행상태</td>
				</tr>
				<c:forEach var="t" items="${list }">
					<c:forEach var="r" items="${rowCount }">
							<c:if test="${t.orderNum eq r.orderNum }">
								${r.orderNum }
								${r.rowCount }
							</c:if>
						</c:forEach>
					</c:forEach>
				
				
				
				
				<c:set var="orderNum" value="0" scope="application"/>
				
				<c:forEach var="o" items="${list}">	
					<tr>
					<c:if test ="${applicationScope.orderNum ne o.orderNum}"  > 
							<td rowspan="${o.rowCount }">${o.orderDate }<br>
								<c:url var="odetail" value="orderDetail.do">
									<c:param name="orderNum" value="${o.orderNum}"/>
								</c:url>
								<a href="${odetail }">[${o.orderNum}]</a>
							</td>
					</c:if>
	
					<c:if test="${applicationScope.orderNum eq o.orderNum}">
					
					</c:if>
					<c:set var="orderNum" value="${o.orderNum }" scope="application"/>
						<td>이미지추가</td>
						<td>${o.gName}</td>
						<td>${o.orderCount }</td>
						<td>${o.gPrice * o.orderCount }</td>
						<c:if test = "${o.orderStatus eq 'B'}">
						<td>
						배송전
						</td>
						</c:if>
						<c:if test = "${o.orderStatus eq 'I'}">
						<td>배송중</td>
						</c:if>
						<c:if test = "${o.orderStatus eq 'C'}">
						<td>배송완료</td>
						</c:if>
						<c:if test = "${o.orderStatus eq 'X'}">
						<td>주문취소</td>
						</c:if>

					</tr>
				</c:forEach>
				


			</table>
					<!-- 페이징처리 하쟈-->
			 <br>
      <div class="pagingArea" align="center">
         <!-- 맨 처음으로(<<) -->

         <button onclick="minPageSearch()"> << </button>
         
         <!-- 이전 페이지로(<) -->
        <c:if test="${pi.currentPage <= 1 }">
            <button disabled> < </button>
        </c:if>
         <c:if test="${pi.currentPage > 1 }">
         
            <button onclick="beforePageSearch()"> < </button>
        </c:if>
         
         <!-- 10개의 페이지 목록 -->
         <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
           <c:if test="${pi.currentPage == p }">
               <button style="background:#ec434a;color:white" disabled >${p}</button>
           </c:if>
            <c:if test="${pi.currentPage != p }">
               <button onclick="selectPageSearch()">${p}</button>
            </c:if>
       </c:forEach>
	 				
         <c:if test="${pi.currentPage >= pi.maxPage }">
            <button disabled> > </button>
          </c:if>
          <c:if test="${pi.currentPage < pi.maxPage }">
                      <button onclick="nextPageSearch()"> > </button>
          </c:if>
         
         <!-- 맨 끝으로(>>) -->
         <button onclick="maxPageSearch()"> >> </button>
            </div>
			
			<div>
				  
			</div>
			<br><br>
		</div>
		</div>
		<c:set var="to" value="${os.date1 }"/>
</body>

<script>

var to  ='${os.date1}';
var from ='${os.date2}';

$(function() {
	   $( "#date1" ).datepicker({
 	dateFormat: "yy-mm-dd"
 		
		 	});
		});
	
	$(function() {
	    $( "#date2" ).datepicker({
	    	dateFormat: "yy-mm-dd"
	    });
	});
	
	function search(){
		
		var date1 = $("#date1").datepicker({dateFormat : "yy/mm/dd"}).val();
		var date2 = $("#date2").datepicker({dateFormat : "yy/mm/dd"}).val();

		location.href="orderSearch.do?date1="+date1+"&date2="+date2;
		
	}
	
	function nextPageSearch(){
	 	location.href="orderSearch.do?page=${pi.currentPage + 1}&date1="+to+"&date2="+from; 
	}
	function maxPageSearch(){
		location.href="orderSearch.do?page=${pi.maxPage}&date1="+to+"&date2="+from;
	}
	function selectPageSearch(){
		location.href="orderSearch.do?page=${p}&date1="+to+"&date2="+from;
	}
	function beforePageSearch(){
		location.href="orderSearch.do?page=${pi.currentPage -1}&date1="+to+"&date2="+from;
	}
	function minPageSearch(){
		location.href="orderSearch.do?page=1&date1="+to+"&date2="+from;
	}
</script>
</html>
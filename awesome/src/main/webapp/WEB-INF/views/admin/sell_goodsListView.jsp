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
	width : 100%;
	height : 100%;
}
.goodsTable {
  border-collapse: collapse;
  border-spacing: 0;
  width: 90%;
  border: 1px solid #ddd;
  text-align :center;
}
th, td {
  text-align: left;
  padding: 16px;
  
}

tr:nth-child(even) {
  background-color: #f2f2f2;
  cursor : pointer;
}
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>   
	<%-- <jsp:include page ="../admin/adminMenu.jsp"/> --%>
 	<div class = "outer">
		<div id="container" style= "height: 800px; overflow: auto;"><!-- container -->

			<c:if test="${!empty loginUser }">
		   		<div align ="center">
		   			<button onclick="location.href='goodsWriterView.do'">상품 등록하기</button>
		   		</div>
			</c:if>
			<br>
			<button type="button" class="save-Btn" id="savaBtn">저장하기</button>
			<button type="button" class="del-Btn" id="deleteBtn">삭제하기</button>
			
			<table id ="checkboxTestTbl" class = "goodsTable"align="center" width = "75%" border="1" cellspacing="0" style="clear:right;" id ="td">
					<colgroup>
			            <col width="40px;"/>
			            <col width="200px;"/>
			            <col width="100px;"/>
			            <col width="100px;"/>
			            <col width="100px;"/>
			            <col width="100px;"/>
			            <col width="100px;"/>
			            <col width="100px;"/>
			        </colgroup>

					
					<tr bgcolor ="#99ccff">
						<th><input type="checkbox" name="user_CheckBox"></th>
						<th>상품번호</th>
						<th>이미지</th>
						<th>상품명</th>
						<th>상품설명</th>
						<th>올린날짜</th>
						<th>수정날짜</th>
						<th>상태</th>
					</tr>
					
					<c:forEach var="a" items="${list}">
						<tr>
							<td><input type="checkbox" name="user_CheckBox"></td>
							<td width ="200px">${a.gId}</td>
							<td width ="250px">
								<img src="resources/auploadFiles/${a.filePath}" width ="100px" height ="100px">
							</td>
							<td width ="450px">
								<c:if test="${!empty loginUser}">
									<!-- 이따가 작성 -->
									${a.goodsTitle}			
									<%-- <c:url var="adetail" value="adetail.do">
										<c:param name="gId" value="${a.gId }"/>
									</c:url>
									<a href="${adetail}">${a.goodsTitle}</a> --%>
								</c:if>
								<c:if test="${empty loginUser}">
									${a.goodsTitle}
								</c:if>
							</td>
							<td width ="550px">${a.goodsContent}</td>
							<td width ="400px">${a.sellDate}</td>
							<td width ="400px">${a.modifyDate}</td>
							<td width ="300px">${a.status}</td>
						</tr>
					</c:forEach>
				</table> 
			
			
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
		        
		        
		        $("#savaBtn").click(function(){
		        	alert('저장');
			    });
			    
		        $("#deleteBtn").click(function(){
			    	alert('삭제');
			    });
		    </script>
		    


			<p align="center">
				<c:url var ="adminMain" value="adminMain.do"/>
				<a href="${adminMain}">관리자페이지 이동</a>&nbsp;
				<c:url var ="sell_goodsList" value="sell_goodsList.do"/>
				<a href="${sell_goodsList}">목록전체보기</a>
			</p>
	
		</div>
	</div> 
	
		
		
</body>
<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</html>
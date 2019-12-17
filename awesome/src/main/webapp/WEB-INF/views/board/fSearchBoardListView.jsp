<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <link href="${contextPath}/resources/fontawesome-free/css/all.css" rel="stylesheet">
	<title>Awesome 자유게시판</title>
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

.searchArea{
	padding-top: 12px;
	height: 38px;
}

.searchBtn{
	height: 42px;
	width: 60px;
	background:#6d6d6e; 
	border-radius:3px; 
	outline:none;
	border:none;
	color:white; 
	vertical-align: top;
	font-size: 12px;
	padding-bottom: 4px;
}

.searchBtn:hover{
	cursor:pointer;
}

.previewBoard{
	border: 1px solid black; 
	height: 200px; 
	wdith: 100%;
	
}

.previewBoard2{
	  width:880px;
  	  border: 1px solid pink; 
      margin-left:auto;
      margin-right:auto;
      height: 100%;
      padding-left: 40px;
      
}

.advertisement{
	border: 1px solid blue; 
	height: 200px;
	width: 620px;  
	display: inline-block;
	margin-right: 10px;
}

.noticeList{
	border: 1px solid red; 
	height: 200px;
	width: 240px; 
	display: inline-block;
}

.centerDiv{
	  width:880px;
  	  border: 1px solid pink; 
      margin-left:auto;
      margin-right:auto;
      height: auto;
      padding-left: 40px;
      

}

.centerDiv tr {


}


.centerDiv #th td{	
	text-align: center;
	font-weight: 600;
	height: 50px;
	font-size: 14px;
	background: #fbfbfb;
	border-top: 1px solid black;
    border-left: 0 none;
/*     border-right: 1px solid #d0d0d0; */
    border-bottom: 1px solid #d0d0d0;
}


#boardTable{
	border:none;
	border-bottom: 1px solid black;
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

#boardTable tr td{
	height: 50px;
	border-bottom:  1px solid #d0d0d0;
	font-size: 14px;
}


.fa-paperclip:before {
    content: "\f0c6";
    color: gray;
    margin-left: 5px;
}

.fa-image:before {
    content: "\f03e";
    color: gray;
    font-size: 18px;
    position: relative;
    bottom: -2px;
}



.searchResult{
     border-radius: 8px;
    overflow: hidden;
    border: 1px solid #cfcfcf;
    font-size: 20px;
    color: #383838;
    height: 100px;
    padding-top: 15px;
    padding-bottom: 15px;
    padding-left: 25px;
    padding-right: 25px;
    margin-bottom: 10px;
}

.new {
	font-size: 10px;
	font-weight: bold;
	background: #ffca0b;
	border-radius: 4px;
	padding: 2px;
	margin-left:7px;
}


</style>

<body>

<jsp:include page="../common/menubar.jsp"/>	
<div id="container" style="overflow: auto; height: auto;" ><!-- container -->


<div class= "previewBoard" >
	<div class= "previewBoard2"> 
		<div class= "advertisement"></div>
		<div class= "noticeList"> </div> 
	</div> 
</div >


<div class = "centerDiv"> 

		<c:if test = "${category eq 1 }">
		<h2 style="font-size: 26px;">공지사항</h2> 
		</c:if>
	
		<c:if test = "${category eq 2 }">
		<h2 style="font-size: 26px;"> 자유게시판 </h2> 
		</c:if>
	
		<c:if test = "${category eq 3 }">
		<h2 style="font-size: 26px;"> 팁&노하우 </h2> 
		</c:if>
		
		<c:if test = "${category eq 4 }">
		<h2 style="font-size: 26px;"> 비포&애프터 </h2> 
		</c:if>
	
		<c:if test = "${category eq 5 }">
			<h2 style="font-size: 26px;"> 자극사진 </h2> 
		</c:if>
		
		<c:if test="${category eq 10 }">
			<h2 style="font-size: 26px;"> 전체 </h2> 
		</c:if>
	


	<div class= "searchResult"> 
	
		<div style="margin-bottom:13px; margin-top: 7px; text-align:center"> 
				<b>
					<span style= "color:#ec434a">
						<c:if test = "${sc.type eq 'all'}" > " 전체 "</c:if>
						<c:if test = "${sc.type eq 'bTitle'}" > " 제목 "</c:if>
						<c:if test = "${sc.type eq 'bContent'}" > " 내용 "</c:if>
						<c:if test = "${sc.type eq 'bWriter'}" > " 작성자 " </c:if>
					</span>(으)로
					 <span style= "color:#ec434a">" ${sc.searchWord} "</span> 을(를) 
				
					<c:if test= "${pi.listCount != 0}">
						검색한 결과입니다.
					</c:if>	
					<c:if test = "${pi.listCount == 0}">
						 검색한 결과가 없습니다.
					</c:if>
				</b>
		</div>
	
		<div >
			<div style="margin-left:auto; margin-right:auto; width: 573px;" >
				<form id ="searchForm" action = "searchBoardList.do" method="post">
					<select  name = "type" style= "height:42px; width: 130px; font-size: 16px; padding-left: 8px"> 
						<option value="all" > 전체</option>
					 	<option value="bTitle" >제목</option>
				        <option value= "bWriter" >작성자</option>
				        <option value="bContent" >내용</option>
					</select>
					<input type="hidden" name="category" value="${category}">
					<input style= "font-size: 18px; position: relative; top: -1.5px; width: 350px; height:35px; margin:0px; padding-left:10px" name ="searchWord"> 
				
			
					<button onclick = "searchList();" type="button" class = "searchBtn">검색 </button>
				</form>
			</div>
		</div>
	</div>
		<br>
		
		<table  align="center" cellspacing="0" width="880px" id="boardTable"> 
			<tr id= "th">
				<td style= "width: 100px">게시판</td>
				<td style= "width: 400px">제목</td>
				<td style= "width: 100px">작성자</td>
				<td>조회수</td> 
				<td>공감</td> 
				<td style= "width: 130px; border-right: none;">작성일</td> 
			</tr>
			
			
			
		<c:forEach var="b" items="${flist}">
			<c:if test = "${b.bLevel == 4}">
				<tr align="center" class = "superTr"> 
					<td style="color:#e11c24;"><input type="hidden" value = "${b.bId}"> [필독]</td>
			</c:if>
			<c:if test = "${b.bLevel != 4}">
				<tr align="center" class = "normalTr"> 
				
				<c:if test = "${b.category eq 1 }">
				<td><input type="hidden" value = "${b.bId}"> [공지사항]</td>
			</c:if>
	
			<c:if test = "${b.category eq 2 }">
				<td><input type="hidden" value = "${b.bId}"> [자유게시판]</td>		
			</c:if>
			
			<c:if test = "${b.category eq 3 }">
				<td><input type="hidden" value = "${b.bId}"> [팁&노하우]</td>		
			</c:if>
			
			<c:if test = "${b.category eq 4 }">
				<td><input type="hidden" value = "${b.bId}"> [비포&애프터]</td>		
			</c:if>
			
			<c:if test = "${b.category eq 5 }">
				<td><input type="hidden" value = "${b.bId}"> [자극사진]</td>		
			</c:if>
				
			</c:if>
			
			
				<td id="bTitle${b.bId}" align="left" style=" padding-left: 10px;" > ${b.bTitle}&nbsp;
			     <script> 
				     function checkImgTag(str){ 
				    	 var content = str;
				    	 
				     	if(content.match(/<img/)){
				     		return true   
				     	}else{
				     		return false 
				     	}
				     }
				     if(checkImgTag('${b.bContent}') == true){
				    	 $("#bTitle"+${b.bId}).html( "${b.bTitle}&nbsp;<i class='fas fa-image'></i>" );
				     }
				     
					</script> 
				<c:if test = "${b.bType == 4}">
						<span><i class="fas fa-paperclip"></i></span>					
			   	</c:if>
				 	<span style="color:#e11c24;font-weight:bold;margin-left:8px;">${b.reply}</span>
				 	
							
			 	<jsp:useBean id="today" class="java.util.Date" /> 
	 			<fmt:formatDate var= "today2" value="${today}" pattern="yyyy-MM-dd" />
				<fmt:parseDate var="bDate" value="${b.createDate}" pattern="yyyy-MM-dd" />
				<fmt:formatDate var= "bDate2" value="${bDate}" pattern="yyyy-MM-dd" />
	

				<c:if test="${today2 <= bDate2}">
						<span class="new"> NEW </span>
				</c:if>
				 	
				 	
				 	
				
				
				</td>
				
				
				<td> ${b.userNickname}</td>
				<td>${b.bCount }</td>
				<c:if test="${b.bGood > 0 }">
				<td ><span style="color:#e11c24;font-weight:bold;">${b.bGood}</span></td>
				</c:if>
				<c:if test="${b.bGood == 0 }">
				<td>${b.bGood}</td>
				</c:if>
				<td> ${b.createDate }</td>
			</tr> 
		</c:forEach>
		</table>
		
		
			
		
		
   <!-- 페이징 처리 시작 -->
   <br>
      <div class="pagingArea" align="center">
      <button type= "button" style=" visibility:hidden; border:none; background: none; height: 30px; color:white;padding-bottom:14px; position:relative; float:left;">글쓰기</button>
         <!-- 맨 처음으로(<<) -->
       	<c:url var="blistNextNumber" value="searchBoardList.do">
					<c:param name="page" value="1"/>
					<c:param name="type" value= "${sc.type}" />
					<c:param name="searchWord" value= "${sc.searchWord}" />
				</c:url>
               <button onclick="location.href='${blistNextNumber}&category=${category}'"><< </button>
         
         <!-- 이전 페이지로(<) -->
        <c:if test="${pi.currentPage <= 1 }">
            <button disabled> < </button>
        </c:if>
         <c:if test="${pi.currentPage > 1 }">
        	 <c:url var="blistBack" value="searchBoardList.do">
				<c:param name="page" value="${pi.currentPage -1}"/>
				<c:param name="type" value= "${sc.type}" />
				<c:param name="searchWord" value= "${sc.searchWord}" />
			</c:url>
            <button onclick="location.href='${blistBack}&category=${category}'"> < </button>
        </c:if>
         
         <!-- 10개의 페이지 목록 -->
         <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
           <c:if test="${pi.currentPage == p }">
               <button style="background:#ec434a;color:white" disabled >${p}</button>
           </c:if>
            <c:if test="${pi.currentPage != p }">
            	<c:url var="blistNextNumber" value="searchBoardList.do">
					<c:param name="page" value="${p}"/>
					<c:param name="type" value= "${sc.type}" />
					<c:param name="searchWord" value= "${sc.searchWord}" />
				</c:url>
               <button onclick="location.href='${blistNextNumber}&category=${category}'">${p}</button>
            </c:if>
       </c:forEach>
	 				
         <c:if test="${pi.currentPage >= pi.maxPage }">
            <button disabled> > </button>
          </c:if>
          <c:if test="${pi.currentPage < pi.maxPage }">
          		<c:url var="blistNext" value="searchBoardList.do">
					<c:param name="page" value="${pi.currentPage + 1}"/>
					<c:param name="type" value= "${sc.type}" />
					<c:param name="searchWord" value= "${sc.searchWord}" />
				</c:url>
               <button onclick="location.href='${blistNext}&category=${category}'">></button>
          </c:if>
         
         <!-- 맨 끝으로(>>) -->
         <c:url var="blistEnd" value="searchBoardList.do">
			<c:param name="page" value="${pi.maxPage}"/>
			<c:param name="type" value= "${sc.type}" />
			<c:param name="searchWord" value= "${sc.searchWord}" />
		</c:url>
			
			<c:if test = "${pi.listCount == 0}">
					<button onclick="location.href='${blistEnd}&category=${category}'"disabled>>></button>
			</c:if>
           <c:if test = "${pi.listCount != 0}">
					<button onclick="location.href='${blistEnd}&category=${category}'">>></button>
			</c:if>
         
      
      	<button style="border:none; background: #585858; height: 30px; color:white;padding-bottom:14px; position:relative; float:right;" onclick = "location.href='fBoardInsertForm.do'">글쓰기</button>
      </div>
			
	<br>		

</div>
<br> 


<!-- 디테일 뷰 폼 태그  -->
  <form id= "formTag" action="fBoardDetailView.do" method="post">
    	<input id= "bId" type= hidden value="" name = bId >
    	<input id= "page" type= hidden value = "${pi.currentPage}" name= page> 
  </form>




<script>

$(function(){
    $(".normalTr td").mouseenter(function(){
       $(this).parent().children().css({"background":"#FFF7D5","cursor":"pointer"}).click(function(){
   	     	var bId = $(this).parent().children().find('input').val(); // 게시글의  글번호 
   	      	$("#bId").val(bId);
          	$("#formTag").submit(); 
       });
  
    }).mouseout(function(){
       $(this).parent().children().css({"background":"white"});
    })
 }); 


function searchList(){
	 $("#searchForm").submit();
}





</script>



</div>
</body>
<footer>
	<jsp:include page ="../common/footer.jsp"/>
</footer>
</html>
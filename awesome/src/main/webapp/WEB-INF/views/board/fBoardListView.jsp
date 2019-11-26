<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	height: 26px;
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
	pointer:cursor;
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
      height: 1000px;
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
    border-right: 1px solid #d0d0d0;
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




</style>

<body>

<jsp:include page="../common/menubar.jsp"/>	
<div id="container" style="overflow: auto; height: 1200px;" ><!-- container -->


<div class= "previewBoard" >
	<div class= "previewBoard2"> 
		<div class= "advertisement"> 광고 (이미지슬라이더) </div>
		<div class= "noticeList">  공지사항(미리보기) </div> 
	</div> 
</div >

<div class = "centerDiv"> 
	<div> 
		<h2 style="font-size: 26px;"> 자유게시판 </h2> 
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
			<tr align="center" class = "normalTr"> 
				<td>[자유게시판]</td>
				<td align="left" style=" padding-left: 10px;" > ${b.bTitle }</td>
				<td> ${b.mId}</td>
				<td>${b.bCount }</td>
				<td>공감0</td>
				<td> ${b.createDate }</td>
			</tr> 
		</c:forEach>
		
	
		
		</table>
		
		
			
		
		
   <!-- 페이징 처리 시작 -->
   <br>
      <div class="pagingArea" align="center">
      <button type= "button" style="border:none; background: none; height: 30px; color:white;padding-bottom:14px; position:relative; float:left;">글쓰기</button>
         <!-- 맨 처음으로(<<) -->
         <button onclick="location.href='fBoardListView.do?page=1'"> << </button>
         
         <!-- 이전 페이지로(<) -->
        <c:if test="${pi.currentPage <= 1 }">
            <button disabled> < </button>
        </c:if>
         <c:if test="${pi.currentPage > 1 }">
         
            <button onclick="location.href='fBoardListView.do?page=${pi.currentPage -1}'"> < </button>
        </c:if>
         
         <!-- 10개의 페이지 목록 -->
         <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
           <c:if test="${pi.currentPage == p }">
               <button style="background:#ec434a;color:white" disabled >${p}</button>
           </c:if>
            <c:if test="${pi.currentPage != p }">
               <button onclick="location.href='fBoardListView.do?page=${p}'">${p}</button>
            </c:if>
       </c:forEach>
	 				
         <c:if test="${pi.currentPage >= pi.maxPage }">
            <button disabled> > </button>
          </c:if>
          <c:if test="${pi.currentPage < pi.maxPage }">
            <button onclick="location.href='fBoardListView.do?page=${pi.currentPage + 1}'"> > </button>
          </c:if>
         
         <!-- 맨 끝으로(>>) -->
         <button onclick="location.href='fBoardListView.do?page=${pi.maxPage}'"> >> </button>
      
      	<button style="border:none; background: #585858; height: 30px; color:white;padding-bottom:14px; position:relative; float:right;" onclick = "location.href='fBoardInsertForm.do'">글쓰기</button>
      </div>
			
	<br>		
	<div class ="searchArea" align ="center" style="background:#f6f6f6;"> 

	<select style= "height:26px">
		<option> 전체</option>
		<option> 제목</option>
		<option> 작성자</option>
		<option> 내용</option>
	</select>

	<input style= " position: relative; top: -1.5px; height:22px; margin:0px; padding:0px"> 
	
	<button class = "searchBtn">검색 </button>
	
	</div>		
			
			
	</div>
</div>
<br> 








<script>

$(function(){
    $(".normalTr td").mouseenter(function(){
       $(this).parent().children().css({"background":"#FFF7D5","cursor":"pointer"});
    }).mouseout(function(){
       $(this).parent().children().css({"background":"white"});
    })
 }); 



/*  $(function(){
    $(".normalTr td").mouseenter(function(){
    	
   	   $(this).parent().children().css({"cursor":"pointer").click(function(){ 
           var bid = $(this).parent().children().eq(0).text(); // 게시글의  글번호 
           $("#bid").val(bid);            
           $("#formTag").submit(); 
       });
    }).mouseout(function(){
    	$(this).parent().css({"background":"white"});
    });
 });  */
</script>



</div>
</body>
<footer>
	<jsp:include page ="../common/footer.jsp"/>
</footer>
</html>
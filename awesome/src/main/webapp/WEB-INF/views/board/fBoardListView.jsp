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

.fa-image:before {
    content: "\f03e";
    color: gray;
    font-size: 18px;
    position: relative;
    bottom: -2px;
    margin-left: 6px;
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
	cursor:pointer;
}

.previewBoard{
	height: 200px; 
	wdith: 100%;
	border: none;	
	margin-top: 11px;
}

.previewBoard2{
	  width:880px;
  	  border: none; 
      margin-left:auto;
      margin-right:auto;
      height: 100%;
      padding-left: 40px;
      
}

.advertisement{
	border: 1px solid #dbdbdb; 
	height: 200px;
	width: 625px;  
	display: inline-block;
	margin-right: 5px;
	position:relative;
	background-image:url("resources/images/advertise4.jpeg");
}


.advertisement:hover{
	cursor:pointer;
}

.noticeList{
	height: 200px;
	width: 247px; 
	display: inline-block;
	position: absolute;
	border: 1px solid #dbdbdb;
}



.noticeListDiv{
	margin-bottom: 5px;
	width: 200px;
    text-overflow:ellipsis;
	white-space:nowrap; 
	overflow: hidden;
	color: #787878;
	font-size: 13px;
	margin-bottom: 10px;
}

.noticeListDiv:hover{
	cursor:pointer;

}


.fa-bell:before {
    content: "\f0f3";
    color:#787878;
}


.fa-plus-square:before {
    content: "\f0fe";
    position: relative;
    left: 120px;
    top: 1px;
    color: lightgray;
    font-size: 20px;
}


.fa-plus-square:hover{
 	cursor:pointer;
}




/**/








.centerDiv{
	  width:880px;
  	  border: none; 
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


.fa-paperclip:before {
    content: "\f0c6";
    color: gray;
    margin-left: 5px;
}


#boardTable tr td{
	height: 50px;
	border-bottom:  1px solid #d0d0d0;
	font-size: 14px;
}

.superTr{
	background: #FFEBEE
}


.superTr:hover{
	font-weight: bold;
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

<!-- 광고 및 미리보기  -->
<div class= "previewBoard" >
	<div class= "previewBoard2"> 
		<div class= "advertisement"></div>
		<div class= "noticeList">
		
			<c:if test= "${category != 1}">
			 	<div style="font-size: 15px; font-weight: bold; margin-left: 15px; margin-top: 15px;">공지사항&nbsp;&nbsp;&nbsp;&nbsp;<i class="far fa-plus-square" onclick="goNoticeList();"></i></div>
			 	<div style="height: 140px; margin-top: 15px; padding-left: 18px;">
				<c:forEach var="n" items="${noticeList}">	
		    				<div class="noticeListDiv" onclick ="goBoardDetailView(${n.bId});"><i class="fas fa-bell"></i>&nbsp;${n.bTitle} </div>
				</c:forEach>
				</div>
			</c:if>
			<c:if test= "${category eq 1}">
			 	<div style="font-size: 15px; font-weight: bold; margin-left: 15px; margin-top: 15px; ">인기 게시글<i class="far fa-plus-square" style="left:120px;" onclick="goAllList();" ></i></div>
			 	<div style="height: 140px; margin-top: 15px; padding-left: 18px;">
				<c:forEach var="b" items="${bestList}">	
		    				<div class="noticeListDiv" onclick ="goBoardDetailView2(${b.bId} , ${b.category});"><i class="fas fa-bell"></i>&nbsp;${b.bTitle} </div>
				</c:forEach>
				</div>
			</c:if>
		
		</div> 
	</div> 
</div >
<!-- 광고 및 미리보기  -->
<div clAss = "centerDiv"> 
	<div> 
	
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
					<td style="color:#e11c24;">
						<input type="hidden" value = "${b.bId}"> 
						<input id="category${b.bId}" type="hidden" value= "${b.category}">
						[필독]
					</td>
			</c:if>
			<c:if test = "${b.bLevel != 4}">
				<tr align="center" class = "normalTr"> 
				
				<c:if test = "${b.category eq 1 }">
				<td><input type="hidden" value = "${b.bId}"><input id="category${b.bId}" type="hidden" value= "${b.category}"> [공지사항]</td>
			</c:if>
	
			<c:if test = "${b.category eq 2 }">
				<td><input type="hidden" value = "${b.bId}"><input id="category${b.bId}" type="hidden" value= "${b.category}"> [자유게시판]</td>		
			</c:if>
			
			<c:if test = "${b.category eq 3 }">
				<td><input type="hidden" value = "${b.bId}"><input id="category${b.bId}" type="hidden" value= "${b.category}"> [팁&노하우]</td>		
			</c:if>
			
			<c:if test = "${b.category eq 4 }">
				<td><input type="hidden" value = "${b.bId}"><input id="category${b.bId}" type="hidden" value= "${b.category}"> [비포&애프터]</td>		
			</c:if>
			
			<c:if test = "${b.category eq 5 }">
				<td><input type="hidden" value = "${b.bId}"><input id="category${b.bId}"  type="hidden" value= "${b.category}"> [자극사진]</td>		
			</c:if>
				
			</c:if>
				<td id="bTitle${b.bId}" align="left" style=" padding-left: 10px;"> ${b.bTitle }&nbsp;
			     <script> 
				     function checkImgTag(str){ 
				    	 var content = str;
				    	 
				     	if(content.match(/<img/)){
				     		return true   
				     	}else{
				     		return false 
				     	}
				     }
				     if(checkImgTag(' ${b.bContent}') == true){
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
     	<c:if test = "${category eq 1 }">
	      <c:if test="${loginUser.manager eq 'Y'}">
	      <button type= "button" style="visibility:hidden; border:none; background: none; height: 30px; color:white;padding-bottom:14px; position:relative; float:left;">글쓰기</button>
	      </c:if>
	    </c:if>  
	    
	      <c:if test = "${category ne 1 }">
      	<button type= "button" style="visibility:hidden; border:none; background: none; height: 30px; color:white;padding-bottom:14px; position:relative; float:left;">글쓰기</button>
      </c:if>
	    
         <!-- 맨 처음으로(<<) -->
         <button onclick="location.href='boardListView.do?page=1&category=${category}'"> << </button>
         
         <!-- 이전 페이지로(<) -->
        <c:if test="${pi.currentPage <= 1 }">
            <button disabled> < </button>
        </c:if>
         <c:if test="${pi.currentPage > 1 }">
         
            <button onclick="location.href='boardListView.do?page=${pi.currentPage -1}&category=${category}'"> < </button>
        </c:if>
         
         <!-- 10개의 페이지 목록 -->
         <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
           <c:if test="${pi.currentPage == p }">
               <button style="background:#ec434a;color:white" disabled >${p}</button>
           </c:if>
            <c:if test="${pi.currentPage != p }">
               <button onclick="location.href='boardListView.do?page=${p}&category=${category}'">${p}</button>
            </c:if>
       </c:forEach>
         <c:if test="${pi.currentPage >= pi.maxPage }">
            <button disabled> > </button>
          </c:if>
          <c:if test="${pi.currentPage < pi.maxPage }">
            <button onclick="location.href='boardListView.do?page=${pi.currentPage + 1}&category=${category}'"> > </button>
          </c:if>
         
         <!-- 맨 끝으로(>>) -->
         <button onclick="location.href='boardListView.do?page=${pi.maxPage}&category=${category}'"> >> </button>
     
      <c:if test = "${category eq 1 }">
      	<c:if test="${loginUser.manager eq 'Y'}">
      	<button style="border:none; background: #585858; height: 30px; color:white;padding-bottom:14px; position:relative; float:right;" onclick = "location.href='fBoardInsertForm.do?category=${category}'">글쓰기</button>
      	</c:if>
      </c:if>
      
      <c:if test = "${category ne 1 }">
      	<button style="border:none; background: #585858; height: 30px; color:white;padding-bottom:14px; position:relative; float:right;" onclick = "location.href='fBoardInsertForm.do?category=${category}'">글쓰기</button>
      </c:if>
      </div>
      
      
      
      
      
			
	<br>		
	<div class ="searchArea" align ="center" style="background:#f6f6f6;"> 
	<form id ="searchForm" action = "searchBoardList.do" method="post">
	<input type = "hidden" name="category" value= "${category}"> 
	<select name = "type" style= "height:26px">
		<option value="all" > 전체</option>
	 	<option value="bTitle" >제목</option>
        <option value= "bWriter" >작성자</option>
        <option value="bContent" >내용</option>
	</select>
	<input style= " position: relative; top: -1.5px; height:22px; margin:0px; padding:0px; padding-left:5px;" name ="searchWord"> 
	<button onclick = "searchList();" type="button" class = "searchBtn">검색 </button>
	</form>
	</div>		
			
			
	</div>
</div>
<br> 


<!-- 디테일 뷰 폼 태그  -->
  <form id= "formTag" action="fBoardDetailView.do" method="post">
    	<input id= "bId" type= hidden value="" name = bId >
    	<input id= "page" type= hidden value = "${pi.currentPage}" name= page> 
    	<input id="category" type="hidden" value="" name="category">
  </form>




<script>


// 광고 및 미리보기 
function goBoardDetailView(bId){
	location.href='fBoardDetailView.do?page=1&category=1&bId='+bId;
	
}
function goBoardDetailView2(bId, category){
	location.href='fBoardDetailView.do?page=1&category='+ category+ '&bId='+bId;
	
}


function goNoticeList(){
	location.href='boardListView.do?category=1'
}


function goAllList(){
	location.href='boardListView.do?category=10'
}
//광고 및 미리보기 

$(function(){
    $(".normalTr td").mouseenter(function(){
       $(this).parent().children().css({"background":"#FFF7D5","cursor":"pointer"}).click(function(){
   	     	var bId = $(this).parent().children().find('input').val(); // 게시글의  글번호 
   	     	var category = $("#category"+bId).val();
   	      	$("#bId").val(bId);
   	     	$("#category").val(category);
          	$("#formTag").submit(); 
       });
  
    }).mouseout(function(){
       $(this).parent().children().css({"background":"white"});
    })
    
    
     $(".superTr td").mouseenter(function(){
       $(this).parent().children().css({"cursor":"pointer"}).click(function(){
   	     	var bId = $(this).parent().children().find('input').val(); // 게시글의  글번호 
   	 		var category = $("#category"+bId).val();
	      	$("#bId").val(bId);
	      	$("#category").val(category);
          	$("#formTag").submit(); 
       });
  
    }).mouseout(function(){
       $(this).parent().children().css({"background":"#FFEBEE"});
    })
    
    
    
 }); 


function searchList(){
	 $("#searchForm").submit();
}




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
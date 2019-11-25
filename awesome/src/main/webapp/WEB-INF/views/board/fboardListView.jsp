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
      height: 800px;
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
			<tr align="center"> 
				<td> Before & After</td>
				<td align="left" style=" padding-left: 10px;" > 얄리얄리얄라성1</td>
				<td> 열정다이어터</td>
				<td> 1</td>
				<td> 0</td>
				<td> 2019.09.24</td>
			</tr> 
			<tr align="center"> 
				<td> 1</td>
				<td align="left" style=" padding-left: 10px;" > 1</td>
				<td> 돼지 냠냠</td>
				<td> 1</td>
				<td> 0</td>
				<td> 2019.09.24</td>
			</tr> 
		</table>	
	</div>
</div>



</div>
</body>
<footer>
	<jsp:include page ="../common/footer.jsp"/>
</footer>
</html>
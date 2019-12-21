	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"  import="java.util.*, java.text.*"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<%@ page import ="com.kh.awesome.board.model.vo.Board" %>
    <%
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy.MM.dd.");
	 String today = formatter.format(new java.util.Date());
	 
	 String display0 = "inline-block"; 
	 String display1 = "none"; 
	 String dataValue = "0";
 
	Board prevBoard	= (Board)request.getAttribute("prevBoard");
	Board nextBoard  = (Board)request.getAttribute("nextBoard");
		 
	%>
	
	
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
		<title>Awesome 자유게시판</title>
		<!-- include libraries(jQuery, bootstrap) -->
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
	
	<!-- include summernote css/js-->
	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
	
	<link href="${contextPath}/resources/fontawesome-free/css/all.css" rel="stylesheet">
		
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
	

	.best{
	    padding: 3px;
	    background: #f53f29;
	    color: white;
	    font-weight: bold;
	    border-radius: 5px;
	    margin-left: 3px;
	    margin-right: 5px;
	    position: relative;
	    bottom: 1px;
	    font-size: 11px;
	}


	
	   #outer{
	       	
	       width: 100%;
	       position: relative;
	       border:1px solid black;
	       padding: 10px;
	   }
	#boardTbody tr td {
	      border:1px solid white;
	   
	   }
	
	   #content {
	   	  margin-top: 5px;
	      height:230px;
	   }
	   
	   .titleDiv1{
		border:none;
		border-bottom: 1px solid darkgray;
		position: relative;	
		width:1230px;
		height:100px;
		margin-left:auto;
		margin-right:auto;
		align: center;
	 	}	
	
	.titleDiv2{
		position: relative;
		width: 290px;	
		font-size: 45px;
		margin-left:auto;
		margin-right:auto;
	}
	
	.replyWriterArea textArea{
		resize: none;
	    width: 550px;
	    outline: none;
	    background: #fff;
	    padding: 5px;
	    font-size: 13px;
	    margin-left: 24px;
	    margin-top: 10px;
	    border: 1px solid #c8c8c8;
	    border-radius: 6px;
	}
	
	.replyWriterSpan{
		margin-right: 10px;
	    font-weight: bold;
	    color: #383838;
	}
	
	.replyDate{
	    font-size: 12px; 
 	   color: #9b9b9b;
	    margin-right: 10px;
	}
	
	
	.replyListText{
		 border: none;
		 width: 700px;
		 resize:none;
		 height: 63px;
		 postion: absolute;
		 outline: none;
		 
	}
	
	.reReplyText{	
		resize:none;
		padding: 0px; 
		borderspacing:0px;
		width: 550px;
		border: 1px solid black; 
		outline:none;
	}
	
	
	#tableDiv{
		  border: none;
	      position: relative;	
	      width: 1300px;
	      padding:10px;
	      margin: auto;
	}
	
	
	#tableDiv table{
	      border-top: 2px solid black; 
	      border-bottom: 2px solid black; 
	      border-spacing:0px;
	   }
	   th{
	      height: 50px;
	      font-size: 20px;
	     
	   }
	   
	#boardTbody tr td{
	      height: 50px;
	   }
	   
	
	
	#boardTbody tr td{
	    border-bottom: 1px solid lightgray;
	    padding-left: 25px;
	     padding-right: 25px;
	   }
	   
	#tableDiv td span{
		cursor:pointer;
		}
	
	   thead{
	      background: #EAEAEA;
	      
	   }
	   
	 .balloon {
        position: relative;
	    background: white;
	    width: 250px;
	    margin: 0 auto 10px;
	    border: 1px solid gray;
	    /* right: 544px; */
	    /* top: 630px; */
	    left: 260px;
	    top: 40px;
	    font-size: 14px;
	    padding: 10px;
	    text-align: left;
	    display: none;
	    z-index: 5;
	}
	 .balloon:after {
	    content: '';
	    position: absolute;
	    border-top: 5px solid transparent;
	    border-right: 7px solid transparent;
	    border-left: 7px solid transparent;
	    border-bottom: 12px solid white ;
	    top: -17px;
	    left: 170px;
	}
	
	 .balloon:before {
	    content: '';
	    position: absolute;
	    border-top: 8px solid transparent;
	    border-right: 9px solid transparent;
	    border-left: 10px solid transparent;
	    border-bottom: 14px solid gray;
	    top: -22px;
	    left: 167px;
	}  
	
	.balloonClose{
	
	   margin: 0px; 
	   pdding: 1px;
	   position: absolute;
	   bottom: 10px; 
	   right: 10px;
	   cursor:pointer;
	}
	
	.clipDiv:hover{
		cursror:pointer;
	
	}
	
	
	.attachmentP{
	   position: relative;
	   margin: auto;
	   padding: auto;
	   padding-bottom:5px;
	   word-break: break-all;;
			
	}
	
	
	.attachmentP:hover{
	cursor:pointer;
	text-decoration: underline;
	}
	
	.clipDiv{
		position: relative;
		width: 110px;
		float: right;
	}
	
	
	
	.clipDiv:hover{
		cursor:pointer;
	}
	
	#listBtn{ 
	   position: relative;
	   border:none;
	   outline: none;
	   background-color: #383838; 
	   color: white;
	   font-size: 16px;
	   height: 45px;
	   width: 100px;
	   z-index:1;
	   border-radius: 4px;
	}
	
	#insertBtn{
	  position: relative;
		border:none;
	   outline: none;
	   background-color: #f53f29; 
	   color: white;
	   font-size: 16px;
	   height: 45px;
	   width: 100px;
	   z-index:1;
	     border-radius: 4px;
	}
	
	#addReplyBtn{
		outline:none;
	   border:none;
	   background-color:#F0CA61;
	   color: white;
	   font-size: 16px;
	   height: 40px;
	   width: 70px;
	   position: absolute;
	   right:0px;
	}
	
	.topBtn{
	   border:none;
	   outline: none;
	   background-color: #f53f29;
	   color: white;
	   font-size: 16px;
	   height: 40px;
	   width: 70px;
	   z-index:1;
	   font-weight: bold;
	}
	
	
	#reWriteBtn{
		 border:none;
	   outline: none;
	   background-color: black; 
	   color: white;
	   font-size: 16px;
	   height: 40px;
	   width: 70px;
	   position: absolute;
	   right: 35px;
	   bottom: 35px;
	   z-index:1;
	}
	
	#deleteBtn{
	    border:none;
	   outline: none;
	   background-color: black; 
	   color: white;
	   font-size: 16px;
	   height: 40px;
	   width: 70px;
	   position: absolute;
	   right: 120px;
	   bottom: 35px;
	   z-index:1;
	}
	
	#deleteBtn:hover{
	   background-color: darkgray; 
	   color: white;
	   
	}
	
	
	
	
	#reWriteBtn:hover{
	
	   background-color: #f53f29; 
	   color: white;
	}
	
	
	
	#preNextBoard:hover{
		cusrsor:pointer; 
		color: darkgray;
	}
	
	.attachmentCount{
		color:#f53f29; 
		font-size:15px
	}
	
	.replyArea{
		  border: none;
	      position: relative;
	      width: 685px;
	      padding:auto;
	      margin-left: auto;
	      margin-right: auto;
		  align:center;
	
	}
	
	#replySelectArea{
		  border: none;
	      position: relative;
	      width: 1230px;
	      padding:auto;
	      margin: auto;
		  align:left;
		  
	
	}
	
	
	#replySelectTable{
		  border-top: 1px solid gray;
	      position: relative;
	      width: 800px;
		  left: 1px;
	}
	
	
	#replySelectTable tr {
		border: none;
		height: 30px;
	}
	#replySelectTable tr td{
		border: none; 
	}
	
	
	#replySelectTable tr td{
		word-break:break-all; 
		wrap:hard;
		border: none;
		padding: 2px;
		margin: 0px; 
	}
	
	.replyWriterArea{
		border: none;
		position: relative;
		width:830px;
		padding: 1px;
		
	}
	
	
	.replyWriterArea div{
		border: none;
		position: relative;
		width: 830px;	
		
	
	}
	
	
	.replyWriterArea table{
		text-align: center;
		font-size:16px;
		font-weight: bold;
	}
	
	#boardImg1{
		position: relative;	
		width:100%;
		height:300px;
		margin-left:auto;
		margin-right:auto;
		align: center;
		text-align: center;
		background: black;
	}
	
	
	.delete{
	 border: 1px solid lightgray;
	   background: white;
	   color: lightblack;
	   padding: 5px;
	
	}
	
	
	.delete:hover{
		
	cursor:pointer;
		color: lightgray;
	}
	
	
	
	.answerAdd{
	   position: relative;
	   left:3px;
	   bottom: 5px;
	   border: 1px solid lightgray;
	   background: white;
	   color: lightblack;
	   padding: 5px;
	}
	
	.answerAdd:hover{
	 cursor:pointer;
		color: lightgray;
	}
	
	
	.answerDelete:hover{
	 cursor:pointer;
	}
	
	
	
	
	
	.answer{
	 border: 1px solid lightgray;
	   background: white;
	   color: lightblack;
	   padding: 5px;
	}
	
	.answer:hover{
		
	cursor:pointer;
		color: lightgray;
	}
	
	.change{
		border: 1px solid lightgray;
	   background: white;
	   color: lightblack;
	   padding: 5px;
	}
	
	
	.change:hover{
	
	cursor:pointer;
		color: lightgray;
	
	}
	
	.good{
		position: relative;
		float: right;
		hegiht: 20px; 
		margin-left:10px;
		padding:2px;
		bottom: 3px;
	}
	
	
	.good:hover{
		cursor:pointer;	
	}
	
	
	.fix{
		position: relative;
		float: right;
		top: -5px;
		padding: 5px;
		font-weight: bold;
	}
	
	
	.fix:hover{
		cursor:pointer;	
	}
	
	.refresh:hover{
	
		color:  gray;	
		cursor:pointer;
	}
	
	.answerText{
	    position: relative; 
		width: 600px; 
		height: 50px;
		outline:none;
		top: 5px;
	}
	
	.answerTrWrite textArea:focus{
		border: 2px solid #2478FF;
	}
	
	.answerTrWrite{
	    display:none;
	    height:110px;
	    padding-top:4px;
	}
	
	.answerTr{
	    height:90px;
	    padding-top:4px;
	}
	
	
	
	.answerIcon{
		position: relative; 
		left: 24px; 
		top: -43px;
	}
	
	.answerInfo{
		width: 200px;
		font-weight: bold;
		position: relative; 
		left: 46px;
		margin-bottom: 2px;
		Top: 5px;
	}
	
	
	#container{
		height: 100%;
	
	
	}
	
	
	
	textArea{
		resize:none;
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
      padding-left: 18px;
      
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
		  border:none;
	 /*  border: 1px solid pink;  */
	      margin-left:auto;
	      margin-right:auto;
	      height: auto;
	      padding-left: 40px;
	      
	
	}
	

	
	.bDelete:hover{
		cursor:pointer;
	}
	
	.bModify:hover{
		cursor:pointer;
	}
	
	
	/*new 스타일 */
	
	 #heart{
	 	margin-left:auto;
	 	margin-right: auto; 
	 	    width: 54px;
	 
	 } 
	 
	 #heart:hover{
	 	cursor:pointer;
	 }
	
	
	#previewTable{
		border-top: 1px solid #cecece; 
		border-bottom:1px solid #cecece; 
		width: 840px;
	
	}
	
	
	#previewTable tr{
		height: 50px;
		
	
	}
	
	#rtb{
		width: 685px;  
		margin-left:auto;
		margin-right: auto;
	
	}
	
	#rtb tbody tr{
		border-top: 1px solid #cecece; 
		border-bottom:1px solid #cecece;
	}
	
	#rtb thead tr{
		border: none;
	}
	
	#rtb thead{
		background: white;
	}
	#rtb thead tr td{
		height: 30px;
		font: 13px;	
	}
	#rtb tbody tr td div {
		width:685px; 
		height:auto;
		word-break:break-all;
	}
	
	.rContent{
		width:685px; 
		height: auto;
		overflow:hidden;
		word-wrap:break-all;;
		
	}
	
	

	
	#rCount{
		color:#fa111a;
	}
	
	.answerBtn2{
		position: relative;
	    bottom: 25px;
	    width: 60px;
	    margin-left: 5px;
	    height: 60px;
	    background-color: #F0CA61;
	    outline: none;
	    border: none;
	    border-radius: 6px;
	    color: white;
	}
	
	.answerBtn:hover{
		cursor:pointer;
	}
	
	
	.replyWriterDiv{
		width: 685px; 
		margin-top: 10px;
		margin-bottom: 5px;
	}
	
	
	
	.contentDiv{
		width: 685px;
		margin-bottom: 10px;
	
	}
	
	.contentDiv2{
		width: 635px;
		margin-bottom: 10px;
	
	}
	
	
	.answerDiv{
		width: 685px;
		margin-bottom: 10px;
		font-size: 13px;
		color:#676767;
	}
	
	
	.replyModify{
		position:relative;
		float: right;
		margin-right: 8px;
	}
	
	.replyModify:hover{
		cursor:pointer; 
	}
	
	
	
	.replyDelete{
		position:relative;
		float: right;
	}
	
	.replyDelete:hover{
		cursor:pointer;	
	}
	
	.replyGood{
		font-size: 13px;
	    position: relative;
	    float: right;
	    width: 55px;
	    text-align: center;
	    height: 22px;
	    padding-top: 2px;
      border: 1px solid  #cecece;
	    color:  #9b9b9b;
	 
	}
	
	.replyGood2{
		font-size: 13px;
	    position: relative;
	    float: right;
	    width: 55px;
	    text-align: center;
	    height: 22px;
	    padding-top: 2px;
      border: 1px solid  #fa111a;
	    color:  #fa111a;		
	}
	.replyGood2:hover{
	cursor:pointer;
	}
	
	
	.replyGood:hover{
		cursor:pointer;
	}
	
	.fa-thumbs-up{
		font-size: 13px;
		
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

 .conmmunityNav:after {
	left: -5px !important;
    top: -35px !important;
}
	
	</style>
	
	<body>
	<input id="loginUserMid" value="${loginUser.mid}" type="hidden"> 
	<input id="loginUserAdmin" value="${loginUser.manager}" type="hidden" >
	<input id="loginUserNickname" value="${loginUser.userNickname }" type="hidden">
	
	<jsp:include page="../common/menubar.jsp"/>	
	<div id="container" style="overflow: auto; height: auto;"><!-- container -->
	   
	   

<!-- 광고 및 미리보기  -->
<div class= "previewBoard" >
	<div class= "previewBoard2"> 
		<div class= "advertisement"></div>
		<div class= "noticeList">
		
			<c:if test= "${board.category != 1}">
			 	<div style="font-size: 15px; font-weight: bold; margin-left: 15px; margin-top: 15px;">공지사항&nbsp;&nbsp;&nbsp;&nbsp;<i class="far fa-plus-square" onclick="goNoticeList();"></i></div>
			 	<div style="height: 140px; margin-top: 15px; padding-left: 18px;">
				<c:forEach var="n" items="${noticeList}">	
		    				<div class="noticeListDiv" onclick ="goBoardDetailView(${n.bId});"><i class="fas fa-bell"></i>&nbsp;${n.bTitle} </div>
				</c:forEach>
				</div>
			</c:if>
			<c:if test= "${board.category eq 1}">
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
	
	<div class = "centerDiv">
		
		
		<c:if test = "${board.category eq 1 }">
		<h2 style="font-size: 26px; font-weight:bold">공지사항</h2> 
		</c:if>
	
		<c:if test = "${board.category eq 2 }">
		<h2 style="font-size: 26px; font-weight:bold"> 자유게시판 </h2> 
		</c:if>
		
	
		<c:if test = "${board.category eq 3 }">
		<h2 style="font-size: 26px; font-weight:bold"> 팁&노하우 </h2> 
		</c:if>
		
		<c:if test = "${board.category eq 4 }">
		<h2 style="font-size: 26px; font-weight:bold"> 비포&애프터 </h2> 
		</c:if>
	
		<c:if test = "${board.category eq 5 }">
		<h2 style="font-size: 26px; font-weight:bold"> 자극사진 </h2> 
		</c:if>
		
		<c:if test="${board.category eq 10 }">
		<h2 style="font-size: 26px; font-weight:bold"> 전체 </h2> 
		</c:if>
		
		 
		<hr style="border: 1px solid black; margin-bottom: 5px;" >
			<table align="center" width="840px" >
				<tr style="padding:none;">
					<td style="font-size: 25px;padding:0px; padding-bottom: 10px;height:60px;border-bottom: 1px; font-weight: 100px; font-family:none">
						${board.bTitle} 
						
						<c:if test= "${ loginUser.manager == 'Y' || loginUser.mid == board.mId}">
							<div style="font-size: 13px; position:relative; float:right; height:40px; padding-top: 20px; padding-right: 10px;"><span class="bModify" style="color: #8d8d8d;">수정</span>&nbsp;|&nbsp;<span class="bDelete" style="color: #8d8d8d;">삭제</span> </div>			
						</c:if>
					
					</td>
				</tr>
			
			<tbody id= "boardTbody">
				<tr>
					<td style="font-size: 16px; padding: 0px; border-top:1px solid #cecece; border-bottom:1px solid #cecece;">
						<span style="position:relative; float:left;color: #a1a0a0;"> 
							&nbsp;<i class="fas fa-user"></i>&nbsp;<span style="color: #383838;">&nbsp;${board.userNickname}</span>
						</span>
						<span style="position:relative; float:right; color: #a1a0a0; margin-right: 10px;" >	
							<i class="far fa-clock"></i>&nbsp;&nbsp;${board.createDate}&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
							<i class="far fa-eye"></i>&nbsp; <span style="color:#ff2626;">${board.bCount}</span>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
							<i class="far fa-comment"></i>&nbsp;&nbsp;<span style="color:#ff2626;" class="rcount">${board.reply}</span> 
						</span>
					</td>
				</tr>
				<tr>
				<td style="padding:0px;padding-top: 15px; padding-bottom: 10px; margin-bottom: 30px; border-bottom: none;">
				<c:if test = "${!empty attachments}">
	
						<div class= "clipDiv">
	                 			<span id= "clip" style="font-size:13px"><i class="fas fa-paperclip"></i>
	                 			&nbsp;첨부파일(<font class= attachmentCount>${fn:length(attachments)}</font>)</span>
	              		</div>
	              		<div class="balloon">
							<c:forEach var = "attachment" items= "${attachments}">
								<c:if test = "${attachment.changeName != ''}">
								
							<p class="attachmentP">
								<a href="${contextPath }/resources/buploadFiles/${attachment.changeName}" download="${attachment.originName}">
									${attachment.originName }
							   </a>
							</p>
									<%-- <p class="attachmentP" onclick='downloadAttach(${attachment.fId});'>${attachment.originName}</p> --%>
								</c:if>
							</c:forEach>
							 <div class= "balloonClose">닫기</div>
						 </div>
				</c:if>
				
				<br>
				${board.bContent}</td>
				
			 <%-- <% if(b.getBtype().equals("2")){ %>
	                  	 
	                  		<div class= "clipDiv">
	                 			<span id= "clip" ><i class="fas fa-paperclip"></i>
	                 			&nbsp;<b style="font-size:14px">첨부파일(<font class= attachmentCount><%=attachments.size()%></font>)</b></span>
	              			</div>
							<div class="balloon">
							<%for( i = 0;  i<attachments.size(); i++){ %>
	                          			<%Attachment f = attachments.get(i);%>
	                           		<%if(f.getbId() == b.getbId()){%> 
			                        	<p class="attachmentP" onclick='downloadAttach(<%=f.getfId()%>);'><%=f.getOriginName()%></p> 
	                            	 	<%}%>                     
	                           <%}%> 
	                        <br>
	                        <div class= "balloonClose">닫기</div>
	                       </div>
	              			<br>
					 <%} %> --%>
				
				
				</tr>
			</table>
				<br>
				<br><br>
				<c:forEach var="bGood" items="${bGoodList}" >
				<c:if test= "${bGood.mId eq loginUser.mid}"> 
				 		<% 
							display0 = "none"; 
						 	display1 = "inline-block"; 
						 	dataValue = "1";
						 %>
				</c:if>
				</c:forEach>
				 <div id = "heart" data-value= "<%=dataValue%>">
					<span id="heart0" style="font-size: 30px; color: #ff2626; display:<%=display0%>"><i class="far fa-heart"></i></span> 
					<span id= "heart1" style="font-size: 30px; color:#ff2626; display:<%=display1%> "><i class="fas fa-heart"></i></span> 
					<span id="bGoodCount" style="font-size: 26px; margin-left:5px;" >${board.bGood}</span>
				</div>	 
			
				<br><br><br>
				<div style="margin-left:auto; width:210px"> 
					<button id = insertBtn onclick="location.href='fBoardInsertForm.do?category=${board.category}'"> <i class="fas fa-pencil-alt">&nbsp;</i>글쓰기 </button>&nbsp;
					<button id = listBtn onclick="location.href='fBoardListView.do?page=${currentPage}'" style="display:inline-block"><i class="fas fa-list"></i> &nbsp;목록</button>
				</div>
				<br><br>
				<div class="replyArea" >
					<br>
					<div class="replyWriterArea">
						<div style="border:none;margin-bottom:8px;"><i class="fas fa-chevron-circle-right" style="font-size: 27px; color: #fa4a4a;">&nbsp;</i><span style="font-weight:bold;font-size:18px; position:relative;top:-4px">댓글 쓰기</span>&nbsp;&nbsp;&nbsp;<span onclick = "refreshClick();" class = "refresh"><i class="fa fa-refresh" aria-hidden="true" style="font-size:20px; "></i></span></div>
						<div style="width:685px; height: 120px; border: 1px solid #ececec;background:#f9f9f9;display:inline-block;">
							
							<div style="position:relative; float: left; display:inline-block;width: 580px; height: 100px;" ><textArea id= "rContent"rows="4" cols="10" id="replyContent" placeholder="댓글을 입력해주세요" style="font-weight:normal;"></textArea></div>
							<div style=" position:relative; float: right;display:inline-block;width: 103px; height: 100px;" > <button id="addReplyBtn" type="button"  style="position:relative; top: 12px; width: 80px; height: 80px; border-radius: 6px;" >입력</button></div>
							
						<span style="color:darkgray; position:relative; left:468px; top: -5px;">글자 수 &nbsp;<span id="counter">0</span>&nbsp;/&nbsp;150&nbsp; </span> 
						
						</div>
					 </div>
				</div>	<!-- replyArea 끝 -->
				
				
			<br><br>
				
	
				<table id="rtb">
				<thead>
					<tr>
						<td colspan="3">댓글 <span id="rCount" class="rcount" >${board.reply}</span> </td>
					</tr>
				</thead>
				<tbody>
					
				</tbody>
			</table>
			<br><br>  
			
			
			<div class='pagingArea' align='center'></div>
			<br>
			
			
			
			
			<table id="previewTable"> 
				<form id= "formTag" action="fBoardDetailView.do" method="post">
		    		<input id= "bId" type= hidden value="" name = bId >
		    		<input id= "page" type= hidden value = "${currentPage}" name= page> 
		    		<input id="category" type="hidden" value = "${board.category}" name =category>
	 			 </form> 
	 			 
				<%if(nextBoard != null) {%>
					<tr class="previewTr" style="border-bottom: 1px solid #e9e9e9;"> 
						<input type = "hidden" name= "bId" value="${nextBoard.bId}"/> 
						<td style="width: 90px;" >&nbsp;&nbsp;다음글&nbsp;&nbsp;<i class="fas fa-caret-up"></i></td>
						<td  style="width: 568px;" >${nextBoard.bTitle }</td> 
						<td style="color:#9e9e9e;">${nextBoard.createDate} &nbsp;&nbsp;|&nbsp;&nbsp; 조회수: ${nextBoard.bCount} </td>
					</tr>
				<%}%>
				
				<%if(prevBoard != null){%>
					<tr class="previewTr" > 
						<input type = "hidden" name= "bId" value="${prevBoard.bId}"/> 
						<td style="width: 90px;" >&nbsp;&nbsp;이전글&nbsp;&nbsp;<i class="fas fa-caret-down"></i></td>
						<td style="width: 568px;" > ${prevBoard.bTitle }</td> 
						<td style="color:#9e9e9e;">${prevBoard.createDate} &nbsp;&nbsp;|&nbsp;&nbsp; 조회수: ${prevBoard.bCount}</td>
					</tr>
				<%}%>
			</table>
			<br><br>
		
			
			
			
		
			
			
			
			
			
			
			</div>	<!--centerDiv 끝 -->
		</div>
		
		
		
		 <button id= "myBtn" class="myBtn success" style="display: none;"> 수정 </button> 
		<div id="myModal" class="modal">
			  <!-- Modal content -->
			  <div class="modal-content">
				  <span class="close">&times;</span>
				 <span style="font-size: 18px;font-weight:bold" > 댓글 수정</span>
		    	
			    	<div id= modifyWriter style="margin-top:10px; padding-top:20px; padding-left:33px; font-weight:bold; background:#f9f9f9;"> </div>
			    	<div style=" background:#f9f9f9; padding-top:10px; padding-left:33px;"> 
				    	<textarea id= "modifyContent"  style="width:80%; height:60px; "value = ""> </textarea>
				    	<input id="modifyRid"   type="hidden" value="" name = "rId">
				    	<input id="modifyPage"   type="hidden" value="" name = "page">
				    	<button class="myBtn success answerBtn2" type="button" onclick= "replyModify2();">수정</button>&nbsp;
			    	</div>
			  </div>
	 	 </div>
		
		
			
	
		
		
		
		
		
		
		
		
		
	</body>
	
	<footer>
		<jsp:include page ="../common/footer.jsp"/>
	</footer>
	
	
	
	
<script>


//광고 및 미리보기 
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
		
	
		
	 	
		$("#heart").click(function(){
			if( $( "#heart" ).data( "value" ) == "0"){
				$( "#heart" ).data( "value", "1");
				$( "#heart0" ).css("display", "none");
				$( "#heart1" ).css("display", "inline-block");
				var count = $("#bGoodCount").text()
				var countAdd = parseInt(count) +1
				$("#bGoodCount").text(countAdd);
				
			}else{
				$( "#heart" ).data( "value", "0");
				$( "#heart0" ).css("display","inline-block");
				$( "#heart1" ).css("display","none");
			
				var count = $("#bGoodCount").text()
				var countSub = parseInt(count)-1
				$("#bGoodCount").text(countSub);
			}
			var bId = ${board.bId}; 
			var mId = ${loginUser.mid};
			
			$.ajax({
				url:"addBoardGoodCount.do", 
				data: {bId: bId, mId: mId},
				success:function(data){
					if(data == "add") {
						alert("이 게시글에 공감하셨습니다.")
					}else{
						alert("이 게시글에 공감을 취소하셨습니다.")
					}
				}, 
				error : function(request, status, errorData){
					alert("error code: " + request.status + "\n"
						+"message: " + request.responseText
						+"error: " + errorData);
				}
				
			});
		 });
		
	
		$(".bModify").click(function(){
			if (confirm("이 게시 글을 수정하시겠습니까?") == true){    //확인
				location.href = 'fBoardUpdateView.do?bId=' + ${board.bId} + '&page=' + ${currentPage};
			}else{   //취소
		
			    return;
			}
		});
		
		
		
		
		$(".bDelete").click(function(){
			if (confirm("이 게시 글을 삭제 하시겠습니까?") == true){    //확인
				location.href = 'deleteBoard.do?bId=${board.bId}&category=${board.category}';
			}else{   //취소
		
			    return;
			}
		});
		
		
	    $(".balloonClose").click(function(){
	        $(".balloon").css("display","none");
	    }); 
	
	    $(".clipDiv").click(function(){
	        
	        var balloon = $(this).parent().find(".balloon");   
	        if(balloon.css("display")== "none"){
	           balloon.css({"display":"block"})   
	        }else{
	           balloon.css({"display":"none"})
	        }
	   });
	
	  
	    
	    
	    
	    
	    function downloadAttach(thing){
			 location.href="downloadAttach.do?fid="+thing;
			 
		 }
	    
	    
	    $("textarea").keydown(function(){
			//alert($(this).text()); // textarea는 input태그처럼 입력 값을 val()로 뽑아와야한다.\
			//alert($(this).val()); // textarea의 입력값을 뽑아올 수는 있지만, 맨 마지막 한글자가 빠짐 
			
			var inputLength = $(this).val().length +1;  // textarea는 한턴이 느리므로 +1
			console.log(inputLength);
	
			$("#counter").text(inputLength);
			
			var remain = 150- inputLength; 
			
			if(remain >= 0){
				$("#counter").css("color", "darkgray");
			}else{
				$("#counter").css("color","#f53f29");
			}
		});		
	    
	  	
	    $(".previewTr td").mouseenter(function(){
	        $(this).parent().children().css({"background":"#FFF7D5","cursor":"pointer"}).click(function(){
	    	     var bId = $(this).parent().find('input').val(); // 게시글의  글번호 
	    	      $("#bId").val(bId);
	           	$("#formTag").submit();  
	        });
	   
	     }).mouseout(function(){
	        $(this).parent().children().css({"background":"white"});
	     })
	     	     
	     

	     function getReplyList(page){// 댓글 리스트를 불러오는 함수
			var bId = ${board.bId};
			
			
			$.ajax({
				url:"rList.do",
				data:{bId:bId, page:page},
				dataType:"json",
				success:function(data){
					console.log(data.rListCount);
					$(".rcount").text(data.rListCount);
					
					console.log(data.pi);
					$tableBody = $("#rtb tbody");
				 	$tableBody.html(""); 
					var html = "";
					var loginUserMid = $("#loginUserMid").val(); 
					var loginUserAdmin =  $("#loginUserAdmin").val();
					var loginUserNickname=  $("#loginUserNickname").val();
				
					if(data.pi.currentPage == 1){
						if(data.bestReplyList.length>0){
							for(var i in data.bestReplyList){
								html += "<tr><td><div><div class= 'replyWriterDiv'><span class= 'replyWriterSpan'>"+data.bestReplyList[i].userNickname + "</span>";
								html += "<span class= replyDate>"+data.bestReplyList[i].createDate+"</span>";
								
								if(data.goodClickList != "undefined"){
									for(var j in data.goodClickList){
										if( data.bestReplyList[i].rId == data.goodClickList[j]){
											var html2 = "<span class='replyGood2' onclick='replyGood("+data.bestReplyList[i].rId +","+ data.pi.currentPage +");'><i class='far fa-thumbs-up'></i>"+ data.bestReplyList[i].rGood +"</span></div>";
												break;  	                                        
										}else{
											var html2 =  "<span class='replyGood' onclick='replyGood("+data.bestReplyList[i].rId +","+ data.pi.currentPage +");'><i class='far fa-thumbs-up'></i>"+ data.bestReplyList[i].rGood +"</span></div>";
										}
									}
									html += html2;
								}else{
									html += "<span class='replyGood' onclick='replyGood("+data.bestReplyList[i].rId +","+ data.pi.currentPage +");'><i class='far fa-thumbs-up'></i>"+ data.bestReplyList[i].rGood +"</span></div>";
								}
								html += "<div class = contentDiv><span class= 'best'>BEST</span>"+ data.bestReplyList[i].rContent+"</div>";
								
								
								
								html += "<input id= 'rContent" + data.bestReplyList[i].rId + "' type='hidden' value = '"+ data.bestReplyList[i].rContent+"'>"; 
								
								html += "<div class='answerDiv'><span class= 'answerBtn' onclick='addAnswer("+data.bestReplyList[i].rId+");'>답글</span>"; 
								
								if((loginUserMid == data.bestReplyList[i].mId) || (loginUserAdmin == 'Y')){ 
								html += "<span class= 'replyDelete' onclick='replyDelete("+data.bestReplyList[i].rId +","+ data.pi.currentPage +");'>삭제</span><span class= 'replyModify' onclick='replyModify("+data.bestReplyList[i].rId+","+ data.pi.currentPage +")'>수정</span>"; 
								} 
							
								
								html += "</div></div></td></tr>";					
											
								html += "<tr style='display:none' class = 'answerTr"+ data.bestReplyList[i].rId +"'><td class= 'answerInsert' style='background: #f9f9f9;'><div style='padding-left:50px;'>";
								html += "<div class= 'replyWriterDiv'><span class = 'replyWriterSpan' >"+loginUserNickname+ "</span></div>";
								html +=	"<div style='width:635px;height:65px; margin-bottom:10px;'>";
								html +=	"<textarea class = 'content"+ data.bestReplyList[i].rId +"' style='width: 500px; height: 60px;'></textarea><button type='button' class='answerBtn2' onclick='addAnswer2("+data.bestReplyList[i].rId+"," + data.pi.currentPage + ");'> 입력</button></div></div></td></tr>";
								
								for( var k in data.bestReplyList[i].aList){
									html +=	"<tr><td style='background: #f9f9f9;' ><div style='padding-left:50px;'>";
									html += "<div class= 'replyWriterDiv'><span class = 'replyWriterSpan' >"+ data.bestReplyList[i].aList[k].userNickname+ "</span><span class= 'replyDate'>"+data.bestReplyList[i].aList[k].createDate+ "</span>"; 
									
									if((loginUserMid == data.bestReplyList[i].aList[k].mId) || (loginUserAdmin == 'Y')){ 
									html += "<span class= 'replyDate answerDelete' onclick='answerDelete("+data.bestReplyList[i].aList[k].aId +","+ data.pi.currentPage+ ");'>삭제</span>";
									} 
									
									html += "</div>";
									html += "<div style='width:635px; margin-bottom:10px;'>"+ data.bestReplyList[i].aList[k].aContent;
									html += "</div></div></td></tr>";
								} 
							}
						}
					}
					
					
					if(data.rList.length > 0){	// 댓글이 하나 이상 있으면
						for(var i in data.rList){
							
							var flag = -1    
							
							for(var index in data.bestReplyList){
								if(data.rList[i].rId == data.bestReplyList[index].rId){
									flag =  1;
									break; 
								} 
									
							}
							
							if( flag == -1){
								
								console.log(data.rList);
								console.log(data.goodClickList);
								html += "<tr><td><div><div class= 'replyWriterDiv'><span class= 'replyWriterSpan'>"+data.rList[i].userNickname + "</span>";
								html += "<span class= replyDate>"+data.rList[i].createDate+"</span>";
								
								if(data.goodClickList != "undefined"){
									for(var j in data.goodClickList){
										if( data.rList[i].rId == data.goodClickList[j]){
											var html2 = "<span class='replyGood2' onclick='replyGood("+data.rList[i].rId +","+ data.pi.currentPage +");'><i class='far fa-thumbs-up'></i>"+ data.rList[i].rGood +"</span></div>";
												break;  	                                        
										}else{
											var html2 =  "<span class='replyGood' onclick='replyGood("+data.rList[i].rId +","+ data.pi.currentPage +");'><i class='far fa-thumbs-up'></i>"+ data.rList[i].rGood +"</span></div>";
										}
									}
									html += html2;
								}else{
									html += "<span class='replyGood' onclick='replyGood("+data.rList[i].rId +","+ data.pi.currentPage +");'><i class='far fa-thumbs-up'></i>"+ data.rList[i].rGood +"</span></div>";
								}
								html += "<div class = contentDiv>"+ data.rList[i].rContent+"</div>";
								
								
								html += "<input id= 'rContent" + data.rList[i].rId + "' type='hidden' value = '"+ data.rList[i].rContent+"'>"; 
								html += "<div class='answerDiv'><span class= 'answerBtn' onclick='addAnswer("+data.rList[i].rId+");'>답글</span>"; 
								
								if((loginUserMid == data.rList[i].mId) || (loginUserAdmin == 'Y')){ 
								html += "<span class= 'replyDelete' onclick='replyDelete("+data.rList[i].rId +","+ data.pi.currentPage +");'>삭제</span><span class= 'replyModify'  onclick='replyModify(" +data.rList[i].rId+","+ data.pi.currentPage +");'>수정</span>"; 
								}
								
								html += "</div></div></td></tr>";					
								
								html += "<tr style='display:none' class = 'answerTr"+ data.rList[i].rId +"'><td class= 'answerInsert' style='background: #f9f9f9;'><div style='padding-left:50px;'>";
								html += "<div class= 'replyWriterDiv'><span class = 'replyWriterSpan' >"+loginUserNickname+"</span></div>";
								html +=	"<div style='width:635px;height:65px; margin-bottom:10px;'>";
								html +=	"<textarea class = 'content"+ data.rList[i].rId +"' style='width: 500px; height: 60px;'></textarea><button type='button' class='answerBtn2' onclick='addAnswer2("+data.rList[i].rId+"," + data.pi.currentPage + ");'> 입력</button></div></div></td></tr>";
								
								for( var k in data.rList[i].aList){
									html +=	"<tr><td style='background: #f9f9f9;' ><div style='padding-left:50px;'>";
									html += "<div class= 'replyWriterDiv'><span class = 'replyWriterSpan' >"+ data.rList[i].aList[k].userNickname+ "</span><span class= 'replyDate'>"+data.rList[i].aList[k].createDate+ "</span>"; 
									
									if((loginUserMid == data.rList[i].aList[k].mId) || (loginUserAdmin == 'Y')){ 
									html += "<span class= 'replyDate answerDelete' onclick='answerDelete("+data.rList[i].aList[k].aId +","+ data.pi.currentPage+ ");'>삭제</span>";
									}
									
									html += "</div>";
									html += "<div style='width:635px; margin-bottom:10px;'>"+ data.rList[i].aList[k].aContent;
									html += "</div></div></td></tr>";
									
								} 
							}
						}
					
					
					
					
					
						$tableBody.append(html); 
						
						
						$pagingArea = $(".pagingArea");
						$pagingArea.html(""); 
						
				
						html = ""; 
						html +="<button onclick='goReplyPage("+ 1 +");'> << </button>";
				         if(data.pi.currentPage <= 1){
				        	html += "<button disabled> < </button>";
				         }
				         if(data.pi.currentPage > 1){
				        	 html += "<button onclick='goReplyPage("+ (data.pi.currentPage-1) +");'> < </button>";
				         }
		        	 
		        	
				         for(var i= data.pi.startPage; i<data.pi.endPage+1; i++) {
				        	 	
				        	    if( data.pi.currentPage == i ){
				        	    	html+= "<button style='background:#ec434a;color:white' disabled >"+i+"</button>"
				        	    }else{
				        	    	html+= "<button class='dfsff' onclick='goReplyPage("+ i +");'>"+ i +"</button>"
				        	    }
				        	    
				        	}
				         
				        	
				         if(data.pi.currentPage >= data.pi.maxPage){
					         html += " <button disabled> > </button>";
					      }
		        		 if(data.pi.currentPage < data.pi.maxPage){
					         html += "<button onclick='goReplyPage("+ (data.pi.currentPage+1) +");'> > </button>";
					      }	
					    html+= "<button onclick='goReplyPage("+ data.pi.maxPage +");'> >> </button>";
					    
					    $pagingArea.append(html);    
				        	
					
					}else{	// 댓글이 없으면
					
					}
				},
				error:function(request, status, errorData){
					alert("error code: " + request.status + "\n"
							+"message: " + request.responseText
							+"error: " + errorData);
				}
			})
		}
	     
	     // 댓글 호출 
	  	  getReplyList(1);
			
	     // 댓글 일정시간마다  새로갱신 
			setInterval(function(){
				getReplyList(1);
			}, 40000); 
	     
	
	     
	  
	     // 댓글 등록 ajax
			$("#addReplyBtn").on("click", function(){
				var rContent=$("#rContent").val();
				var bId =${board.bId};

				if (rContent.length > 150){
					alert(" 150 글자 미만의 댓글만 작성할 수 있습니다. ")
					return; 
				}
				
				
				$.ajax({
					url:"addReply.do",
					data:{rContent:rContent, bId:bId},
					success:function(data){
						if(data=="success"){
							getReplyList(1); // 댓글 등록 성공시 댓글 부분이 setInerval 안기다리고 바로 갱신되게 함수 실행
							$("#rContent").val(""); // 댓글 작성한 부분 리셋 해주기
						}
					},
					error:function(request, status, errorData){
						alert("error code: " + request.status + "\n"
								+"message: " + request.responseText
								+"error: " + errorData);
					}
				});
				
			});
	     
	     
	});
	

	function goReplyPage(page){
		getReplyList(page);
		
	}
	
	
	function replyDelete(rId, currentPage){
		
		  if(confirm("댓글을 삭제하시겠습니까? ")) {
            $(this).parent().click();
        } else {
            return false;
        }
		
		$.ajax({
			url:"deleteReply.do",
			data:{rId:rId},
			success:function(data){
				if(data=="success"){
					getReplyList(currentPage); 
				}
			},
			error:function(request, status, errorData){
				alert("error code: " + request.status + "\n"
						+"message: " + request.responseText
						+"error: " + errorData);
			}
		});
		
		
	}
	
	
	function answerDelete(aId, currentPage){
		

	if(confirm("답글을 삭제하시겠습니까? ")) {
          $(this).parent().click();
      } else {
          return false;
      }
		
		console.log(aId);
		console.log(currentPage);
	 	
		$.ajax({
			url:"deleteAnswer.do",
			data:{aId:aId},
			success:function(data){
				if(data=="success"){
					getReplyList(currentPage); 
				}
			},
			error:function(request, status, errorData){
				alert("error code: " + request.status + "\n"
						+"message: " + request.responseText
						+"error: " + errorData);
			}
		}); 
		
		
	}
	
	
	
	
	function replyGood(rId, page){
		$.ajax({
			url:"addReplyGood.do",
			data:{rId:rId},
			success:function(data){
				if(data=="AddSuccess"){
					getReplyList(page); // 댓글 등록 성공시 댓글 부분이 setInerval 안기다리고 바로 갱신되게 함수 실행
					alert("댓글에 '좋아요'를 추가하셨습니다. ")
				}else{
					alert("댓글에 '좋아요'를 취소하셨습니다. ")
					getReplyList(page);
					
				}
			},
			error:function(request, status, errorData){
				alert("error code: " + request.status + "\n"
						+"message: " + request.responseText
						+"error: " + errorData);
			}
		});
		
	}
	
	
	
	function addAnswer(rId){
	
		var answerTr = $(".answerTr"+rId);
		 if($(answerTr).css("display")== "none"){
			 $(answerTr).css({"display":"block"})   
	     }else{
	    	 $(answerTr).css({"display":"none"})
	     }
	}
	
	function addAnswer2(rId, page){
		
		var aContent = $(".content"+rId).val();
		var answerTr = $(".answerTr"+rId);
		 $.ajax({
			url:"addAnswer.do",
			data:{rId:rId, aContent:aContent},
			success:function(data){
				if(data=="success"){
					getReplyList(page); // 댓글 등록 성공시 댓글 부분이 setInerval 안기다리고 바로 갱신되게 함수 실행
				}
			},
			error:function(request, status, errorData){
				alert("error code: " + request.status + "\n"
						+"message: " + request.responseText
						+"error: " + errorData);
			}
		});
		 
	}
	
		
	
	function replyModify(rId, page){
		content = $("#rContent" + rId).val()
		
		$("#modifyWriter").html('${loginUser.userNickname}');
		$("#modifyContent").val(content);
		$("#modifyRid").val(rId); 
		$("#modifyPage").val(page);
		
		$("#myBtn").click();
	}
	
	
	function replyModify2(){
		
		var rContent = $("#modifyContent").val();
		var rId= $("#modifyRid").val(); 
		var page= $("#modifyPage").val();
		
		if (rContent.length > 150){
			alert(" 150 글자 미만의 댓글만 작성할 수 있습니다. ")
			return; 
		}
		
	
		
		$.ajax({
			url:"modifyReply.do",
			data:{rId:rId, rContent:rContent},
			type: "post",
			success:function(data){
				if(data=="success"){
					alert("댓글이 수정되었습니다");
					getReplyList(page); 
				}
			},
			error:function(request, status, errorData){
				alert("error code: " + request.status + "\n"
						+"message: " + request.responseText
						+"error: " + errorData);
			}
		});
		
		
		
	
		var modal = document.getElementById("myModal");
		modal.style.display="none";
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	 function getReplyList(page){// 댓글 리스트를 불러오는 함수
			var bId = ${board.bId};
			
			$.ajax({
				url:"rList.do",
				data:{bId:bId, page:page},
				dataType:"json",
				success:function(data){
					console.log(data.rListCount);
					$(".rcount").text(data.rListCount);
					
					console.log(data.pi);
					$tableBody = $("#rtb tbody");
				 	$tableBody.html(""); 
					var html = "";
					var loginUserMid = $("#loginUserMid").val(); 
					var loginUserAdmin =  $("#loginUserAdmin").val();		
					var loginUserNickname=  $("#loginUserNickname").val();
				
					if(data.pi.currentPage == 1){
						if(data.bestReplyList.length>0){
							for(var i in data.bestReplyList){
								html += "<tr><td><div><div class= 'replyWriterDiv'><span class= 'replyWriterSpan'>"+data.bestReplyList[i].userNickname + "</span>";
								html += "<span class= replyDate>"+data.bestReplyList[i].createDate+"</span>";
								
								if(data.goodClickList != "undefined"){
									for(var j in data.goodClickList){
										if( data.bestReplyList[i].rId == data.goodClickList[j]){
											var html2 = "<span class='replyGood2' onclick='replyGood("+data.bestReplyList[i].rId +","+ data.pi.currentPage +");'><i class='far fa-thumbs-up'></i>"+ data.bestReplyList[i].rGood +"</span></div>";
												break;  	                                        
										}else{
											var html2 =  "<span class='replyGood' onclick='replyGood("+data.bestReplyList[i].rId +","+ data.pi.currentPage +");'><i class='far fa-thumbs-up'></i>"+ data.bestReplyList[i].rGood +"</span></div>";
										}
									}
									html += html2;
								}else{
									html += "<span class='replyGood' onclick='replyGood("+data.bestReplyList[i].rId +","+ data.pi.currentPage +");'><i class='far fa-thumbs-up'></i>"+ data.bestReplyList[i].rGood +"</span></div>";
								}
								html += "<div class = contentDiv><span class= 'best'>BEST</span>"+ data.bestReplyList[i].rContent+"</div>";
								
								
								
								html += "<input id= 'rContent" + data.bestReplyList[i].rId + "' type='hidden' value = '"+ data.bestReplyList[i].rContent+"'>"; 
								
								html += "<div class='answerDiv'><span class= 'answerBtn' onclick='addAnswer("+data.bestReplyList[i].rId+");'>답글</span>"; 
								
								if((loginUserMid == data.bestReplyList[i].mId) || (loginUserAdmin == 'Y')){ 
								html += "<span class= 'replyDelete' onclick='replyDelete("+data.bestReplyList[i].rId +","+ data.pi.currentPage +");'>삭제</span><span class= 'replyModify' onclick='replyModify("+data.bestReplyList[i].rId+","+ data.pi.currentPage +")'>수정</span>"; 
								} 
							
								
								html += "</div></div></td></tr>";					
											
								html += "<tr style='display:none' class = 'answerTr"+ data.bestReplyList[i].rId +"'><td class= 'answerInsert' style='background: #f9f9f9;'><div style='padding-left:50px;'>";
								html += "<div class= 'replyWriterDiv'><span class = 'replyWriterSpan' >"+loginUserNickname+"</span></div>";
								html +=	"<div style='width:635px;height:65px; margin-bottom:10px;'>";
								html +=	"<textarea class = 'content"+ data.bestReplyList[i].rId +"' style='width: 500px; height: 60px;'></textarea><button type='button' class='answerBtn2' onclick='addAnswer2("+data.bestReplyList[i].rId+"," + data.pi.currentPage + ");'> 입력</button></div></div></td></tr>";
								
								for( var k in data.bestReplyList[i].aList){
									html +=	"<tr><td style='background: #f9f9f9;' ><div style='padding-left:50px;'>";
									html += "<div class= 'replyWriterDiv'><span class = 'replyWriterSpan' >"+ data.bestReplyList[i].aList[k].userNickname+ "</span><span class= 'replyDate'>"+data.bestReplyList[i].aList[k].createDate+ "</span>"; 
									
									if((loginUserMid == data.bestReplyList[i].aList[k].mId) || (loginUserAdmin == 'Y')){ 
									html += "<span class= 'replyDate answerDelete' onclick='answerDelete("+data.bestReplyList[i].aList[k].aId +","+ data.pi.currentPage+ ");'>삭제</span>";
									} 
									
									html += "</div>";
									html += "<div style='width:635px; margin-bottom:10px;'>"+ data.bestReplyList[i].aList[k].aContent;
									html += "</div></div></td></tr>";
								} 
							}
						}
					}
					
					
					if(data.rList.length > 0){	// 댓글이 하나 이상 있으면
						for(var i in data.rList){
							
							var flag = -1    
							
							for(var index in data.bestReplyList){
								if(data.rList[i].rId == data.bestReplyList[index].rId){
									flag =  1;
									break; 
								} 
									
							}
							
							if( flag == -1){
								
								console.log(data.rList);
								console.log(data.goodClickList);
								html += "<tr><td><div><div class= 'replyWriterDiv'><span class= 'replyWriterSpan'>"+data.rList[i].userNickname + "</span>";
								html += "<span class= replyDate>"+data.rList[i].createDate+"</span>";
								
								if(data.goodClickList != "undefined"){
									for(var j in data.goodClickList){
										if( data.rList[i].rId == data.goodClickList[j]){
											var html2 = "<span class='replyGood2' onclick='replyGood("+data.rList[i].rId +","+ data.pi.currentPage +");'><i class='far fa-thumbs-up'></i>"+ data.rList[i].rGood +"</span></div>";
												break;  	                                        
										}else{
											var html2 =  "<span class='replyGood' onclick='replyGood("+data.rList[i].rId +","+ data.pi.currentPage +");'><i class='far fa-thumbs-up'></i>"+ data.rList[i].rGood +"</span></div>";
										}
									}
									html += html2;
								}else{
									html += "<span class='replyGood' onclick='replyGood("+data.rList[i].rId +","+ data.pi.currentPage +");'><i class='far fa-thumbs-up'></i>"+ data.rList[i].rGood +"</span></div>";
								}
								html += "<div class = contentDiv>"+ data.rList[i].rContent+"</div>";
								
								
								html += "<input id= 'rContent" + data.rList[i].rId + "' type='hidden' value = '"+ data.rList[i].rContent+"'>"; 
								html += "<div class='answerDiv'><span class= 'answerBtn' onclick='addAnswer("+data.rList[i].rId+");'>답글</span>"; 
								
								if((loginUserMid == data.rList[i].mId) || (loginUserAdmin == 'Y')){ 
								html += "<span class= 'replyDelete' onclick='replyDelete("+data.rList[i].rId +","+ data.pi.currentPage +");'>삭제</span><span class= 'replyModify'  onclick='replyModify(" +data.rList[i].rId+","+ data.pi.currentPage +");'>수정</span>"; 
								}
								
								html += "</div></div></td></tr>";					
								
								html += "<tr style='display:none' class = 'answerTr"+ data.rList[i].rId +"'><td class= 'answerInsert' style='background: #f9f9f9;'><div style='padding-left:50px;'>";
								html += "<div class= 'replyWriterDiv'><span class = 'replyWriterSpan' >"+loginUserNickname+"</span></div>";
								html +=	"<div style='width:635px;height:65px; margin-bottom:10px;'>";
								html +=	"<textarea class = 'content"+ data.rList[i].rId +"' style='width: 500px; height: 60px;'></textarea><button type='button' class='answerBtn2' onclick='addAnswer2("+data.rList[i].rId+"," + data.pi.currentPage + ");'> 입력</button></div></div></td></tr>";
								
								for( var k in data.rList[i].aList){
									html +=	"<tr><td style='background: #f9f9f9;' ><div style='padding-left:50px;'>";
									html += "<div class= 'replyWriterDiv'><span class = 'replyWriterSpan' >"+ data.rList[i].aList[k].userNickname+ "</span><span class= 'replyDate'>"+data.rList[i].aList[k].createDate+ "</span>"; 
									
									if((loginUserMid == data.rList[i].aList[k].mId) || (loginUserAdmin == 'Y')){ 
									html += "<span class= 'replyDate answerDelete' onclick='answerDelete("+data.rList[i].aList[k].aId +","+ data.pi.currentPage+ ");'>삭제</span>";
									}
									
									html += "</div>";
									html += "<div style='width:635px; margin-bottom:10px;'>"+ data.rList[i].aList[k].aContent;
									html += "</div></div></td></tr>";
									
								} 
							}
						}
					
					
					
					
					
						$tableBody.append(html); 
						
						
						$pagingArea = $(".pagingArea");
						$pagingArea.html(""); 
						
				
						html = ""; 
						html +="<button onclick='goReplyPage("+ 1 +");'> << </button>";
				         if(data.pi.currentPage <= 1){
				        	html += "<button disabled> < </button>";
				         }
				         if(data.pi.currentPage > 1){
				        	 html += "<button onclick='goReplyPage("+ (data.pi.currentPage-1) +");'> < </button>";
				         }
		        	 
		        	
				         for(var i= data.pi.startPage; i<data.pi.endPage+1; i++) {
				        	 	
				        	    if( data.pi.currentPage == i ){
				        	    	html+= "<button style='background:#ec434a;color:white' disabled >"+i+"</button>"
				        	    }else{
				        	    	html+= "<button class='dfsff' onclick='goReplyPage("+ i +");'>"+ i +"</button>"
				        	    }
				        	    
				        	}
				         
				        	
				         if(data.pi.currentPage >= data.pi.maxPage){
					         html += " <button disabled> > </button>";
					      }
		        		 if(data.pi.currentPage < data.pi.maxPage){
					         html += "<button onclick='goReplyPage("+ (data.pi.currentPage+1) +");'> > </button>";
					      }	
					    html+= "<button onclick='goReplyPage("+ data.pi.maxPage +");'> >> </button>";
					    
					    $pagingArea.append(html);    
				        	
					
					}else{	// 댓글이 없으면
					
					}
				
				},
				error:function(request, status, errorData){
					alert("error code: " + request.status + "\n"
							+"message: " + request.responseText
							+"error: " + errorData);
				}
			})
		}
	
	
	
	
	
	     
</script>
	 
<script>	
	<!--  summernote 동작 -->	
		$(document).ready(function() {
		    $('#summernote').summernote({
		            height: 300,                 // set editor height
		            minHeight: null,             // set minimum height of editor
		            maxHeight: null,             // set maximum height of editor
		            focus: true                  // set focus to editable area after initializing summernote
		    });
		});
		
		$(document).ready(function() {
		     $('#summernote').summernote();
		});
	
</script> 
	
	
	
	<!--  modal popup -->
		<script>
			// 포인트 팝업 모달
			// Get the modal
			var modal = document.getElementById("myModal");
			var list1 = new Array();

			for (var i = 0; i < list1.length; i++) {
			    alert(list1[i]);
			}

			// Get the button that opens the modal
			/* var btn = document.getElementById("myBtn"); */
			var btn = document.getElementsByClassName("myBtn")[i];
		
			
			// Get the <span> element that closes the modal
			var span = document.getElementsByClassName("close")[0];
			
			// When the user clicks the button, open the modal 
			btn.onclick = function() {
			  modal.style.display = "block";
			}
			// When the user clicks on <span> (x), close the modal
			span.onclick = function() {
			  modal.style.display = "none";
			}
			
			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
			  if (event.target == modal) {
			    modal.style.display = "none";
			  }
			}
			
		</script>
	
	
	
	
	
	</html>
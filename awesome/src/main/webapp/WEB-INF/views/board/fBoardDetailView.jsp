<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*, java.text.*"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy.MM.dd.");
	 String today = formatter.format(new java.util.Date());
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
	
	
	
</head>

<style> 


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
	resize:none;
	padding: 5px;
	borderspacing:0px;
	width:796px;
	border:none;
	outline:none;
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
    position: absolute;
    background: white;
    width: 250px;
    margin: 0 auto 10px;
    border: 1px solid gray;
    right: 105px;
    top: 160px;
    font-size: 14px; 
    padding: 10px;
    text-align: left; 
    display:none;
    z-index:5;
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
   word-wrap: break-word;
		
}


.attachmentP:hover{
cursor:pointer;
text-decoration: underline;
}

.clipDiv{
	position: absolute;
	width: 130px;
	height: 30px;
	right: 60px;
	top: 120px;
}



.clipDiv:hover{
	cursor:pointer;
}

#listBtn{
   border:none;
   outline: none;
   background-color: black; 
   color: white;
   font-size: 16px;
   height: 40px;
   width: 70px;
   position: absolute; 
   right: 615px;
   bottom: 35px;
   z-index:1;
}
#addReplyBtn{
	 border:none;
   outline: none;
   background-color: black; 
   color: white;
   font-size: 16px;
   height: 40px;
   width: 70px;
   position: absolute;
   right:0px;
   font-weight: bold;
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

#listBtn:hover{
   background-color: #f53f29; 
   color: white;
}


#reWriteBtn:hover{

   background-color: #f53f29; 
   color: white;
}

#addReplyBtn:hover{
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
	  border-top:  1px solid black;
      position: relative;
      width: 1230px;
      padding:auto;
      margin: auto;
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
	width: 1230px;
	padding: 1px;
	
}


.replyWriterArea div{
	border: none;
	position: relative;
	width: 1230px;	
	

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


.answerDelete{
   position: relative;
   left:3px;
   bottom: 5px;
   border: 1px solid lightgray;
   background: white;
   color: lightblack;
   padding: 5px;
}

.answerDelete:hover{
 cursor:pointer;
	color: lightgray;
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


.best{
	padding: 3px;
	background: #f53f29; 
	color: white;
	font-weight: bold;
	border-radius: 5px;
	margin-left: 3px;
	margin-right: 5px;
	position: relative;
	bottom: 45px;

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
	width: 590px;  
	display: inline-block;
	margin-right: 10px;
}

.noticeList{
	border: 1px solid red; 
	height: 200px;
	width: 234px; 
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

</style>

<body>

<jsp:include page="../common/menubar.jsp"/>	
<div id="container" style="overflow: auto; height: auto;"><!-- container -->
   
   
<div class= "previewBoard" >
	<div class= "previewBoard2"> 
		<div class= "advertisement"> 디테일 뷰 잘 들어오니? </div>
		<div class= "noticeList">  공지사항(미리보기) </div> 
	</div> 
</div >

<div class = "centerDiv">
	<h2 style="font-size: 26px; font-weight: bold;">자유게시판</h2> 
	<hr style="border: 1px solid black">
	
	
	
	
	
		<div id="tableDiv" >
			<table align="center" width="1230px">
				<thead>
					<tr><td style="text-align:center;font-size: 20px;padding:none;height:50px;"><b>${board.bTitle}</b></td></tr>
				</thead>
				<tbody id= "boardTbody">
				<tr>
					<td style="font-size: 16px">
					
					<b>작성자:</b>&nbsp;&nbsp;${board.userId}&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
					<b>등록일:</b>&nbsp;&nbsp;${board.createDate}&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
					<b>조회수:</b>&nbsp; ${board.bCount}</td>
				</tr>
				<tr>
				<td>
				<%--  <% if(b.getBtype().equals("2")){ %>
                   	 
                   		<div class= "clipDiv">
                  			<span id= "clip" ><img class= clip src = "<%=request.getContextPath() %>/images/clip.png" width=20px height=24px style="padding-bottom:3px">
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
					${board.bContent}</td>
				</tr>
				<tr style="font-size:16px">
					<%-- <%if(bPrev != null){%> --%>
						<td><b style="margin-right:30px;">이전글</b><span id = "preNextBoard" onclick = "goBoardDetail('1');">1</span></td>
				<%-- 	<%}else{%>
						<td><b style="margin-right:30px">이전글</b>이전글이 없습니다.</td>
					<%}%>
					 --%>
				</tr>
				<tr style="font-size:16px">
					<%-- <%if(bNext != null){%> --%>
						<td><b style="margin-right:30px">다음글</b><span id = "preNextBoard" onclick = "goBoardDetail('2);">2</span></td>
				<%-- 	<%}else{%>
						<td><b style="margin-right:30px">다음글</b>다음글이 없습니다.
					<%}%> --%>
				</tr>
				</tbody>
			</table>
			<br><br><br><br>
			<%-- 	<%if(loginUser != null && (loginUser.getUserNo() > 10000 || (loginUser.getUserNo() == b.getUserNo()))){ %> --%>
				<button id = deleteBtn onclick = "delBoard();"><b>삭제</b></button>
				<button id = reWriteBtn onclick ="location.href='<%=request.getContextPath()%>/FupdateView.bo?bid={$b.bId}'" style="display:inline-block"><b>수정</b></button>
			<%-- 	<%}%> --%>
				<button id = listBtn onclick="location.href='<%=request.getContextPath() %>/Flist.bo'" style="display:inline-block"><b>목록</b></button>
			<br>
			</div>	<!--tableDiv 끝 -->
			
			
			
			
			<div class="replyArea">
				<br>
				<div class="replyWriterArea">
					<div style="border:none;margin-bottom:8px;"><span style="font-weight:bold;font-size:18px;">댓글작성</span>&nbsp;&nbsp;&nbsp;<span onclick = "refreshClick();" class = "refresh"><i class="fa fa-refresh" aria-hidden="true" style="font-size:20px; "></i></span></div>
					<div style="width:802px;border:1px solid darkgray;">
					<textArea rows="3" cols="119" id="replyContent" placeholder="댓글을 입력해주세요" style="font-weight:normal;border:none"></textArea>
					<br><span style="margin-left:680px;color:darkgray;">글자 수 &nbsp;<span id="counter">0</span>&nbsp;/&nbsp;100&nbsp; </span>
					<div style="height: 40px;width:800px;border:none; border-top:1px solid lightgray"><button id="addReplyBtn" type="button">등록</button></div>
					</div>
				</div>	
			</div> <!-- replyArea 끝 -->




	</div>
</div>
</body>

<footer>
	<jsp:include page ="../common/footer.jsp"/>
</footer>




<script>

	function checkBox(){
		if(document.getElementById("superCheck").checked == true){
			document.getElementById("noCheck").disabled = true;
		}else{
			document.getElementById("noCheck").disabled = false;
		}
	}



	function fileInputClick1(){
	 	$("#fileInput1").click(); 
	}
	function fileInputClick2(){
		$("#fileInput2").click();	
	}
	function fileInputClick3(){
	 	$("#fileInput3").click(); 
	}
	function fileInputClick4(){
		$("#fileInput4").click();	
	}
	function fileInputClick5(){
	 	$("#fileInput5").click(); 
	}
	function fileInputClick6(){
		$("#fileInput6").click();	
	}
	function fileInputClick7(){
	 	$("#fileInput7").click(); 
	}
	function fileInputClick8(){
		$("#fileInput8").click();	
	}

	function changeSelect(){
		 $("#fileInput1").val("");
		 $("#fileInput2").val("");
		 $("#fileInput3").val("");
		 $("#fileInput4").val("");
		 $("#fileInput5").val("");
		 $("#fileInput6").val("");
		 $("#fileInput7").val("");
		 $("#fileInput8").val("");
		$(".attachTr").remove();
		
		
		var number = $("#attachCount").val();
	 	for(var i=0; i< number; i++){
	 		
	 		if( i == number-1){
	 			$("#attachTable").append("<tr class= attachTr>"
	 										+" <td class= attachTd style=\"border-bottom: 1px solid #dbdbdb\">"
	 										+" <input id= 'attachInput"+(i+1)+"' type='text' placeholder='첨부파일을 등록하세요' readonly>&nbsp;"
	 								        +" <button type='button' id= 'attachBtn"+(i+1)+"' class='attachBtn' onclick='fileInputClick"+(i+1)+"();'><b>찾아보기</b></button></td></tr>");
	 		}else{
	 			$("#attachTable").append("<tr class= attachTr>"
								+" <td class= attachTd>"
								+" <input id= 'attachInput"+(i+1)+"' type='text' placeholder='첨부파일을 등록하세요' readonly>&nbsp;"
						        +" <button type='button' id= 'attachBtn"+(i+1)+"' class='attachBtn' onclick='fileInputClick"+(i+1)+"();'><b>찾아보기</b></button></td></tr>");
	 		}
		}  
	}
	

 

</script> 

<script>

function loadAttachName(attach,num){
	
	if(attach.files[0]!=undefined){ 
		var fileValue = $("#fileInput"+num).val().split("\\");
			var fileName = fileValue[fileValue.length-1]; // 파일명
			$("#attachInput"+num).val(fileName); 
	}
}

function goBoardListView(){
	location.href="<%= request.getContextPath()%>/Flist.bo"	
}


 function insertSubmit(){
	$("#insertForm").submit();	
} 

function selectReset(){
	$("#attachCount").val(1);
	 $("#fileInput1").val("");
	 $("#fileInput2").val("");
	 $("#fileInput3").val("");
	 $("#fileInput4").val("");
	 $("#fileInput5").val("");
	 $("#fileInput6").val("");
	 $("#fileInput7").val("");
	 $("#fileInput8").val("");
	$(".attachTr").remove();
	var i=0;
	$("#attachTable").append("<tr class= attachTr>"
				+" <td class= attachTd style=\"border-bottom: 1px solid #dbdbdb\">"
				+" <input id= 'attachInput"+(i+1)+"' type='text' placeholder='첨부파일을 등록하세요'>&nbsp;"
		        +" <button type='button' id= 'attachBtn"+(i+1)+"' class='attachBtn' onclick='fileInputClick"+(i+1)+"();'><b>찾아보기</b></button></td></tr>");

}
 
 
</script>



<!--  summernote 동작 -->
<script> 
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




</html>
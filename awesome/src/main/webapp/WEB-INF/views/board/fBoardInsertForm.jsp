<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*, java.text.*"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
   java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy.MM.dd.");
    String today = formatter.format(new java.util.Date());
    
     String category = request.getParameter("category"); 
     
     int category2 = Integer.parseInt(category); 
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <title>Awesome 자유게시판</title>
   <!-- include libraries(jQuery, bootstrap) -->
   <link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="${contextPath}/resources/fontawesome-free/css/all.css" rel="stylesheet">
<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
   
   
   
</head>

<style> 
.myPageNav:after {
    top: -38px !important;
    left: 535px !important;

}

 #outer{
       width: 100%;
       position: relative;
       padding:0px;
         border:none;
     } 
   
    #tableDiv{
      position: relative;
      width: 1300px;
      padding:10px;
      margin: auto;
      border:none;
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
    
    #listArea{
       width: 840px;
       border-spacing:0px;
       border-top:2px solid black;
    }
    
    .tableTd{
       border-bottom:1px solid  #dbdbdb;
       border-right: 1px solid  #dbdbdb;
       
    }
    
    .titleTd{
          width: 120px;
       height: 50px;
       background: #f5f5f5;
       text-align: center;
       font-size: 14px;
       border-left: 1px solid #dbdbdb;

    }
    
    .inputTd{
       width: 500px;
       height: 30px; 
       margin-left: 10px;
        border: 1px solid #c4c4c4;
       outline:none;
    }
    
    textrea{
       border-left: 1px solid  #dbdbdb;
       overflow-y:scroll;
      resize:none;
      width: 1229px;
    }
    #textareaDiv{
       position: relative;
       margin:auto;
       width: 840px;
    }
    
    .attachTd{
      padding: none; 
      padding-left: 15px;
      padding-bottom: 12px;
   
    }
      ::-webkit-scrollbar {
   
      display:none;
      
   }
    

    #attachCount{    
       width: 50px;
       height: 40px;
    }

   #attachTable{
      border: 1px solid #dbdbdb;
	    width: 840px;
	    position: relative;
	    left: 20px;
   }   
   
   .attachTd input{
      height: 40px;
      padding-left:10px;
      font-size: 15px;
      width: 400px;
   } 
   
   .attachBtn{
      outline: none;
      border: none; 
      background: #383838;
      color: white;
      font-size: 15px;
      width: 100px;
      height: 40px;
       border-radius: 4px;      
   }
   
   .attachBtn:hover{
      background-color: darkgray;
      color: white;
   }
   
   
   #listBtn{
      border:none;
      outline: none;
      background-color: darkgray; 
      color: white;
      font-size: 16px;
      height: 40px;
      width: 70px;
       border-radius: 4px;
   }
   
   #listBtn:hover{
      color: white;
   }
   
   #insertBtn{
      border:none;
      outline: none;
      background-color: #f53f29; 
      color: white;
      font-size: 16px;
      height: 40px;
      width: 70px;
      border-radius: 4px;
   }
   
   #insertBtn:hover{
      color: white;
   }
   
   .btnDiv{
      border-top: 1px solid darkgray;
      height: 80px;
      text-align: center;
      padding-top: 30px;
      margin-left: 7px;
   }
   

   #resetBtn{
      outline: none;
      border: none; 
      background: #383838;
      color: white;
      font-size: 15px;
      width: 100px;
      height: 40px;   
      margin-left: 173px; 
   }
   
   #resetBtn:hover{
      background-color: #f53f29; ;
      color: white;
   }
   
   
   
   #superCheck{
      width: 17px; 
      height: 22.3px;
      position: absolute; 
      background-color: white;
      border: 1px solid black;
      outline: none;
          margin-top: 5px;
   }
   
   #checkLabel{
      font-size: 14px;
      margin-left: 10px;
      margin-right: 6px;
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
   
   
   .modal-dialog {
       width: 600px;
       margin: 30px auto;
       margin-top: 300px;
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




.centerDiv{
    width: 910px;
    /* border: 1px solid pink; */
    margin-left: auto;
    margin-right: auto;
    height: auto;
    padding-left: 33px;

}

.categorySelect{
    border: 1px solid #c4c4c4;
    height: 35px;
    color: #727171;
    outline: none;
    cursor: pointer;
    font-size: 13px;
    background: #fff;
}


 .conmmunityNav:after {
	left: -5px !important;
    top: -38px !important;
}

.menu2 {
    line-height: 3.2 !important;
}
</style>

<body>


	<input type="hidden" value="${sessionScope.loginUser.manager}">

<jsp:include page="../common/menubar.jsp"/>   
<div id="container" style="overflow: auto; height: auto;"><!-- container -->
   
   
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
<div class = "centerDiv">
   <h2 style="font-size: 26px; font-weight: bold; padding-left:20px;">글쓰기</h2> 
      <form id= insertForm action = "fBoardInsert.do" method="post" encType="multipart/form-data">
         <br>
         <table align="center" id="listArea">
            <tr>
               <td class="titleTd tableTd"><b>카테고리</b></td>
               <td class="tableTd"> &nbsp;&nbsp;
                  <select class="categorySelect" name = "category" style="height: 35px;"> 
                  
                  	<c:if test="${sessionScope.loginUser.manager eq 'Y'}">
                  	 <option id= "category1" value = "1"> 공지사항 </option>
                  	 </c:if>  
                     <option id =  "category2"   value = "2">자유게시판 </option>
                     <option id =  "category3"  value = "3">팁&노하우</option>
                     <option id =  "category4"  value = "4">비포&애프터 </option>
                     <option id =  "category5"  value = "5">자극사진</option>
                  </select>
               </td>
            </tr>
            <tr>
               <td class= "titleTd tableTd"><b>제목</b></td>
               <td class ="tableTd"><input type="text" name= "bTitle" class="inputTd" >
               	
               	<c:if test="${sessionScope.loginUser.userId eq 'admin'}">
	               <label for="superCheck" id=checkLabel><span style="font-size: 14px;">필독</span></label>
	               <input id = superCheck type="checkbox" name="bLevel" value="4" onclick="checkBox();">
    			</c:if>  
	               <input id = noCheck type= "hidden" name="bLevel" value="1">
               
               </td> 
            </tr>
            <tr>
               <td class= "titleTd tableTd"><b>작성자</b></td>
               <td  class ="tableTd"><span style="padding-left: 17px; font-size: 16px;">${loginUser.userNickname }</span></td>
            </tr>
            <tr>
               <td class= "titleTd tableTd"><b>작성일</b></td>
               <td  class ="tableTd"><span style="padding-left: 17px; font-size: 16px;"><%=today%></span></td>
            </tr>
         </table>
         <div id="textareaDiv">
            <textArea id= summernote rows=30 col=100 name = "bContent" placeholder="내용을 입력해주세요"></textArea>
         </div>
         
        <c:if test="${sessionScope.loginUser.manager eq 'Y'}">
         
         <table id = "attachTable">
            <tr>
               <td rowspan=9 class= "titleTd" style= "border-right: 1px solid #dbdbdb">
                  <b>첨부파일</b>
               </td>
               <td  style= "border:none; height:30px; color:gray; padding:12px;padding-left:15px">
                  <select id= attachCount onchange="changeSelect();" style="color:black">
                      <option>1</option>
                      <option>2</option>
                      <option>3</option>
                      <option>4</option>
                      <option>5</option>
                      
                  </select>
                  &nbsp;<span style="font-size: 15px">파일 갯수를 지정해주세요</span>
                  <button type="button" id= "resetBtn" class="attachBtn" onclick="selectReset();"><b>리셋</b></button>
               </td>
            </tr> 
            <tr class= attachTr>
               <td class= attachTd style="border-bottom: 1px solid #dbdbdb">
                  <input id = "attachInput1" type="text" placeholder="첨부파일을 등록하세요" readonly>&nbsp;
                  <button type="button" id= "attachBtn1" class="attachBtn" onclick="fileInputClick1();"><b>찾아보기</b></button>
            </tr>
         </table>
         
      	</c:if>
      	
      	
         <br><br>
         <div class= btnDiv>
               <button type='button'id=listBtn onclick="goBoardListView(<%=category2%>);"><b>취소</b></button>&nbsp;&nbsp;
               <button id=insertBtn type="button" onclick="insertSubmit();"><b>확인</b></button>
         </div>
      
         <div style="display:none">
            <input type="file" id="fileInput1" name = "file1" onchange="loadAttachName(this,1);">
            <input type="file" id="fileInput2" name = "file2" onchange="loadAttachName(this,2);">
            <input type="file" id="fileInput3" name = "file3" onchange="loadAttachName(this,3);">
            <input type="file" id="fileInput4" name = "file4" onchange="loadAttachName(this,4);">
            <input type="file" id="fileInput5" name = "file5" onchange="loadAttachName(this,5);">
            <input type="file" id="fileInput6" name = "file6" onchange="loadAttachName(this,6);">
            <input type="file" id="fileInput7" name = "file7" onchange="loadAttachName(this,7);">
            <input type="file" id="fileInput8" multiple="multiple" name = "file8" onchange="loadAttachName(this,8)">
         </div> 
         </form>



		<br><br>
   </div>
</div>
</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>




<script>

$(function(){
	
	 $(".conmmunityNav:after").css("left", "50")
});


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

$(function(){
   var category = <%=category%>;   

   if( category == "2" ){
      $("#category2").prop("selected", true);
   }else if(   category == "3"   ) {
	   $("#category3").prop("selected", true); 
   }else if ( category == "4"  ){
	   $("#category4").prop("selected", true); 
   } else if ( category == "5") {
	   $("#category5").prop("selected", true);
   }else if ( category == "1") {
	   $("#category1").prop("selected", true);
   }
});


function loadAttachName(attach,num){
   
   if(attach.files[0]!=undefined){ 
      var fileValue = $("#fileInput"+num).val().split("\\");
         var fileName = fileValue[fileValue.length-1]; // 파일명
         $("#attachInput"+num).val(fileName); 
   }
}

function goBoardListView(category){
	location.href="boardListView.do?category="+category;
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
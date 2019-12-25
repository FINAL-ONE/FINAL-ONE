<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="js/Modal.js-master/build/css/modal.css" rel="stylesheet">

<!-- switch버튼 css -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="js/switch-master/css/style.css">



<style>

.centerDiv{
		    width: 1500px;
    /* border: 1px solid pink; */
    margin-left: auto;
    margin-right: auto;
    height: auto;
    padding-left: 90px;
	}

	
#checkboxTestTbl{
  border-collapse: collapse;
  border-spacing: 0;
  width: 1300px;
  border: 1px solid #ddd;
  text-align :center;
  /* margin-left : 30px; */
}
#checkboxTestTbl2{
  border-collapse: collapse;
  border-spacing: 0;
  width: 100px;
  border: 1px solid #ddd;
  text-align :center;
}

th, td {
  text-align: center;
  padding: 16px;
  
}

tr:nth-child(even) {
  /* background-color: #f2f2f2; */
}

/* 모달 css */
  *, *:before, *:after {
    box-sizing: border-box; }
    body { font-family: 'Roboto'; }
    .modal_container {text-align: center; }
    
.tablestatus{
   min-width: 100px;
}
#tableLeft1{
   float : left;
   /* margin-left : 165px; */
}
#tableLeft2{
   float : left;
}


/*상품 등록하기  버튼 css  */
.myBtn{
     width: 145px;
    height: 40px;
    font-size: 15px;
    border-radius: 4px;
    background-color: #4CAF50;
    border: none;
    color: #FFFFFF;
    text-align: center;
    padding: 6px;
    transition: all 0.5s;
    cursor: pointer;
    margin: 3px;
    position: relative;
    right: 20px;
    margin-bottom: 20px;
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



.adminMain-btn, .adminList-btn {
    margin: 10px 0px 15px;
    border: 1px solid #fe6666;
    background: #fe6666;
    border-radius: 2px;
    color: #fff;
    text-align: center;
    font-size: 14px;
    font-weight: 600;
    width: 259px;
    height: 40px;
    cursor: pointer;
}

.adminMain-btn:hover, .adminList-btn:hover{
	background: #fff;
	color: #fe6666;
}	


</style>

</head>
<body>
   <jsp:include page="../common/menubar.jsp"/>   
	<div class="centerDiv">
    <div class = "outer">
      <div id="container" style= "height: auto; overflow: auto;"><!-- container -->

         <c:if test="${!empty loginUser }">
               <div style="margin-left : 1200px; margin-top : 20px;">
                  <button class="myBtn success" onclick="location.href='goodsWriterView.do'"><span>상품 등록</span></button>
               </div>
         </c:if>
      <form id = "goodsInsertForm" action="aStatusUpdate.do" method="post">
          <div id="tableLeft1" style= "width:auto;">
            <table align="center" id ="checkboxTestTbl" class = "goodsTable"  style="border: 1; cellspacing:1">
                  <tr bgcolor ="#fa4a4a" style = "color : white">
                     <th>상품번호</th>
                     <th>이미지</th>
                     <th>상품명</th>
                     <th>가격</th>
                     <th>수량</th>
                     <th>상품설명</th>
                     <th>등록날짜</th>
                     <th>수정날짜</th>
                     <th>상태</th>
                  </tr>
                  
                  <c:forEach var="a" items="${list}">
                     <tr>
                     <input id=gId           type = "hidden" name="gId"          value = "${a.gId}">
                     <input id=sellNum        type = "hidden" name="sellNum"       value = "${a.sellNum}">
                     <input id=goodsTitle     type = "hidden" name="goodsTitle"    value = "${a.goodsTitle}">
                     <input id=goodsPrice     type = "hidden" name="goodsPrice"    value = "${a.goodsPrice}">
                     <input id=count        type = "hidden" name="count"       value = "${a.count}">
                     <input id=goodsContent  type = "hidden" name="goodsContent" value = "${a.goodsContent}">
                     <input id=sellDate     type = "hidden" name="sellDate"    value = "${a.sellDate}">
                     <input id=modifyDate     type = "hidden" name="modifyDate"    value = "${a.modifyDate}">
                     <input id=status        type = "hidden" name="statusUpdate" value = "${a.status}">
                     
                        <!-- <td width ="5%"><input type="checkbox" name="user_CheckBox"></td> -->
                        <td class="tableList" align="center" width ="10%">${a.sellNum}</td>
                        <td class="tableList" width ="10%">
                           <img src="resources/auploadFiles/${a.filePath}" name="filePath" width ="100px">
                        </td>
                        <td class="tableList" width ="15%">${a.goodsTitle}</td>
                        <td class="tableList" align="center" width ="8%">${a.goodsPrice}</td>
                        <td class="tableList" align="center" width ="8%">${a.count}</td>
                        <td class="tableList" width ="15%">${a.goodsContent}</td>
                        <td class="tableList" align="center" width ="10%">${a.sellDate}</td>
                        <td class="tableList" align="center" width ="10%">${a.modifyDate}</td>
                        <%-- <td id="testStatus"  align="center" width ="10%">${a.status}</td> --%> 
                        <td id="testStatus">
                        	<c:if test="${a.status eq 'Y'}">
	                            <label class="switch" >
	                              <input id = "statusCheck" type="checkbox" checked  disabled>
	                              <span></span>
	                            </label>
							</c:if>
                            <c:if test="${a.status eq 'N'}">
	                            <label class="switch">
	                              <input id = "statusCheck" type="checkbox" disabled>
	                              <span></span>
	                            </label>
                            </c:if>
                        </td>
                        <!-- <td class="tablestatus">상태변경</td> -->                  
                     </tr>
                  </c:forEach>
               </table>
              </div>
<%--              <div id="tableLeft2" style= "width: auto;">
               <table id ="checkboxTestTbl2" class = "goodsTable" align="center" border="1" cellspacing="1" style="clear:right;">
                  <tr bgcolor ="#fa4a4a" style = "color : white">
                     <th>품절</th>
                  </tr>
                  <c:forEach var="a" items="${list}">
                     <!-- <tr  style="height:133.75px;"> -->
                     <tr>
                        <input id=gId           type = "hidden" name="gId"          value = "${a.gId}">
                        <input id=sellNum2     type = "hidden" name="sellNum2"     value = "${a.sellNum}">
                        <input id=status2        type = "hidden" name="statusUpdate2" value = "${a.status}">
                        <!-- <td class="tablestatus">상태변경</td> -->
                        <!-- <div style="display:none;"> -->
                        <!-- </div> -->
                        <td>
                        	<c:if test="${a.status eq 'Y'}">
	                            <label class="switch" >
	                              <input id = "statusCheck" type="checkbox" checked  disabled>
	                              <span></span>
	                            </label>
							</c:if>
                            <c:if test="${a.status eq 'N'}">
	                            <label class="switch">
	                              <input id = "statusCheck" type="checkbox" disabled>
	                              <span></span>
	                            </label>
                            </c:if>
                        </td>
                        <!-- ... 테이블 hight 때문에 숨키는 용도.. -->
                        <td class="tableList" width ="10%" style="visibility: hidden;">
	                           <img src="resources/auploadFiles/${a.filePath}" name="filePath" width ="100px">
	                        </td>
	                        <td class="tableList" width ="15%" style="visibility: hidden;">${a.goodsContent}</td>
                     </tr>
                  </c:forEach>
               </table> 
            </div>  --%>
         </form>
         
   
         </div>
         
         	<p align="center" style="margin : 50px 0 50px 0;">
				<button class="adminMain-btn" type="button" style="width : 110px; height : 40px;" onclick="location.href='home.do'">HOME 이동</button>
				<button class="adminList-btn" type="button" style="width : 110px; height : 40px;" onclick="location.href='sell_goodsList.do'">목록전체보기</button>
			</p>
	
         </div>		
   

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
              
              
             // 품절버튼 클릭시
           /*    function soldout () {
                 if(confirm('품절처리하시겠습니까?')){
                    $("#goodsInsertForm").submit();
                    alert("품절되었습니다.");
                 } else {
                    alert("취소되었습니다.");
                 }
              }  */
                
                </script>
          
            <div class="modal_container">
              <div class="css-script-ads">
                   <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
               <!-- CSSScript Demo Page -->
               <ins class="adsbygoogle"
                    style="display:inline-block;width:728px;height:90px"
                    data-ad-client="ca-pub-2783044520727903"
                    data-ad-slot="3025259193"></ins>
                  <script>
                     (adsbygoogle = window.adsbygoogle || []).push({});
                  </script>
               </div>
            </div>
            </div>
            <script src="js/Modal.js-master/modal.js"></script>
            
      <script>
         function soldout(){
            Modal.confirm({
               title: '상태 변경 여부',
               message: '상태 변경 처리하시겠습니까?',
               onConfirm: function() {
                  $("#goodsInsertForm").submit();
                   //alert('완료되었습니다');
                 },
                    onCancel: function() {
                   //alert('취소되었습니다.');
                 },
            });
            return;
         }
      </script>
              
      <!-- 모달창 script -->
      <script>
           (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
           (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
           m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
           })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
         
           ga('create', 'UA-46156385-1', 'cssscript.com');
           ga('send', 'pageview');
      
      </script>


   
   <script type="text/javascript">
      $(function(){
         $("#checkboxTestTbl td[class='tableList']").mouseenter(function(){
         //$(".tableList").mouseenter(function(){
            /* $(this).parent().css({"background":"#fa4a4a","cursor":"pointer"}); */
            $(this).parent().css({"background":"#FFF7D5","cursor":"pointer"});
            //$(".tableList").css({"background":"#FFF7D5","cursor":"pointer"});
            
         }).mouseout(function(){ 
            //$(".tableList").css({"background":"white"});
            $(this).parent().css({"background":"white"});
         }).click(function(){   
            var gId = $(this).parent().children("#gId").val();
            var sellNum = $(this).parent().children("#sellNum").val();
            //var goodsTitle = $(this).parent().children("#goodsTitle").val();
            //var goodsPrice = $(this).parent().children("#goodsPrice").val();
            //var count = $(this).parent().children("#count").val();
            //var goodsContent = $(this).parent().children("#goodsContent").val();
            //var status = $(this).parent().children("#status").val();

            location.href="sell_goodsDetailView.do?sellNum="+sellNum;
         });
         
//--------------------------------------------------------------------------------------------------

/*          $("#checkboxTestTbl2 td").mouseenter(function(){
            $(this).parent().css({"background":"#FFF7D5","cursor":"pointer"});
         }).mouseout(function(){
            $(this).parent().css({"background":"white"});
         }).click(function(){ */
		$("#checkboxTestTbl td[id='testStatus']").mouseenter(function(){
		/* $("#checkboxTestTbl2 td").mouseenter(function(){ */
		   // $(this).parent().css({"background":"#FFF7D5","cursor":"pointer"});
		 }).mouseout(function(){
		   // $(this).parent().css({"background":"white"});
		 }).click(function(){
            //soldout();
            var sellNum = $(this).parent().children("#sellNum").val();
            var status = $(this).parent().children("#status").val();
            var gId = $(this).parent().children("#gId").val();

//alert("sellNum : " + sellNum + " / " + "status : " + status);
            
             Modal.confirm({
               title: '상태 변경 여부',
               message: '상태 변경 처리하시겠습니까?',
               onConfirm: function() {
                  //$("#goodsInsertForm").submit();
                  location.href="aStatusUpdate.do?sellNum="+sellNum+"&status="+status+"&gId="+gId;
                  
                   //alert('완료되었습니다');
                 },
                    onCancel: function() {
                   //alert('취소되었습니다.');
                 },
            }); 
            
            return;
            
         });            
         
         
      }); 
   </script>
      
      
<!-- <script>
   jQuery(document).ready(function() {
	// $(function(){
	   
       var tableHeight = jQuery("#checkboxTestTbl td").height(); 
   
       alert(tableHeight); 
       $("#checkboxTestTbl2 td").height(tableHeight);
   }); 

</script> -->
      
      
      
      <!-- switch script -->
      <script>
           (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
           (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
           m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
           })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
         
           ga('create', 'UA-46156385-1', 'cssscript.com');
           ga('send', 'pageview');
      </script>
      
      
</body>
<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>


</html>
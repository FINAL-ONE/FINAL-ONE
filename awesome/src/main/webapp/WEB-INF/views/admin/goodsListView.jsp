<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.3.1/lumen/bootstrap.min.css"> -->
<style>
  .container { margin: 150px auto; }
</style>
</head>
<body>

	<jsp:include page ="../common/menubar.jsp"/>
	<%-- <jsp:include page ="../admin/adminMenu.jsp"/> --%>
	
	<br><br>
	<c:if test="${!empty loginUser }">
   		<div align ="center">
   			<button onclick="location.href='goodsInsertView.do'">상품 등록하기</button>
   			<button id='btn-add-row'>행 추가</button>
			<button id='btn-delete-row'>행 삭제</button>
			
   		</div>
	</c:if>
	<br>
	<table align="center" width="100%" border="1" cellspaction="0" style="clear:right;" id="surveyListTable"
		class="table table-bordered table-striped table-hover rowfy">
		<tr ><!-- bgcolor="#fa4a4a" -->
		<th style="display:none;">숨킨 상품번호</th>
			<th>상품번호</th>
			<th>상품이름</th>
			<th>상품가격</th>
			<th>상품수량</th>
			<th>상품상태</th>
			<th>매진구분</th>
			<th>등록날짜</th>
			<th>수정날짜</th>
<!-- 			<th>카c</th>
			<th>카n</th>
			<th>대</th>
			<th>중</th>
			<th>소</th> -->
		</tr>
		<c:forEach var="n" items="${glist}">
			<tr>
				<input id="gId" type = "hidden" value = "${n.gId}">
				<input id="cateCd"  type = "hidden" value = "${n.cateCd}">
				<input id="cateNm"  type = "hidden" value = "${n.cateNm}">
				<input id="lclCd"  type = "hidden" value = "${n.lclCd}">
				<input id="mclCd"  type = "hidden" value = "${n.mclCd}">
				<input id="sclCd"  type = "hidden" value = "${n.sclCd}">
				
				<td align="center" width="10%">${n.gId}</td>
				<td width="20%">
<%-- 					<c:if test="${!empty loginUser}">
						<c:url var="ndetail" value="ndetail.do">
							<c:param name="nId" value="${n.gId}"></c:param>
						</c:url>
						<a href="${ndetail}">${n.nTitle}</a>
					</c:if> --%>
					<c:if test="${!empty loginUser}">
						&nbsp;${n.goodsName} 
					</c:if>
				</td>
				<td align="center" width="10%"><fmt:formatNumber value="${n.goodsPrice}" groupingUsed="true" /></td>
				<td align="center" width="10%"><fmt:formatNumber value="${n.count}" groupingUsed="true" /></td>
				
				<td align="center" width="10%">${n.goodsStatus }</td>
				<td align="center" width="10%">${n.soldout }</td>
				<td align="center" width="10%">${n.registerDate }</td>
				<td align="center" width="10%">${n.modifyDate }</td>
				
<%-- 				<td width="10%">${n.cateCd }</td>
				<td width="20%">${n.cateNm }</td>
				<td align="center" width="10%">${n.lclCd }</td>
				<td align="center" width="10%">${n.mclCd }</td>
				<td align="center" width="10%">${n.sclCd }</td> --%>
				
			</tr>
		</c:forEach>
	</table>
	
	<br><br><br>
	
	<p align="center">
		<c:url var ="adminMain" value="adminMain.do"/>
		<a href="${adminMain}">관리자페이지 이동</a>&nbsp;
		<c:url var ="goodsList" value="goodsList.do"/>
		<a href="${goodsList}">목록전체보기</a>
	</p>
	
	<script>
	  $('#btn-add-row').click(function() {
	    
	    /*
	    <td align="center">${n.gId}</td>
	    ${n.goodsName}
		<td align="center">${n.goodsPrice }</td>
		<td align="center">${n.count }</td>
		<td align="center">${n.goodsStatus }</td>
		<td align="center">${n.soldout }</td>
		<td align="center">${n.registerDate }</td>
		<td align="center">${n.modifyDate }</td>
	    */
	    
	    var count = "N";
        var name = $("#name").val();
        var subject = $("#subject").val();
        var markup = "<tr><td><input type='test' name='record'></td><td>" + count + "</td></tr>";
	    
        /* var today = getTodayType1(); */
        /* <td><input type=text name=text"+count+" id=text"+count+" size=40></td> */
        
		var stdate = new Date().toISOString().substr(0, 10).replace('T', ' ');
        
	    $('#surveyListTable > tbody:last').append('<tr>'+
	    								'<td width="10%"></td>'+   // 상품번호
	    								'<td width="30%"><input type="text" width="100%"></td>'+	// 상품이름
	    								'<td width="10%" align="center"><input type="text"></td>'+	// 상품가격
	    								'<td width="10%" align="center"><input type="text" value="1"></td>' +	// 상품수량

	    								//'<td width="10%"><input type="text"></td>' +	// 상품상태
	    								//'<td width="10%"><input type="text"></td>'+	// 매진구분
	    					            '<td width="10%" align="center">'+
	    								'	<select class="form-control statusYn" name="staff_use_yn">'+
	    					            '		<option value="Y" selected="selected">사용</option>'+
	    					            '		<option value="N">미사용</option>'+
	    					            '	</select>'+
	    					            '</td>'+
	    					            '<td width="10%" align="center">'+
	    								'	<select class="form-control statusYn" name="staff_use_yn">'+
	    					            '		<option value="Y">매진</option>'+
	    					            '		<option value="N" selected="selected">판매</option>'+
	    					            '	</select>'+
	    					            '</td>'+
	    					            '<td width="10%" align="center">'+ stdate +'</td>'+	// 등록날짜
	    								'<td width="10%"></td>'+	// 수정날짜
	    							 '</tr>');
	  });
	  $('#btn-delete-row').click(function() {
	    $('#surveyListTable > tbody:last > tr:last').remove();
	  });
	  
	    //삭제 버튼
	    $(document).on("click","button[name=delStaff]",function(){
	        var trHtml = $(this).parent().parent();
	        trHtml.remove(); //tr 테그 삭제
	    });

	  
</script>
	
	
	
	
<!-- 클릭시 제품 상세 페이지 이동함 -->	
	<script type="text/javascript">
		$(function(){
			$("#surveyListTable td").mouseenter(function(){
				$(this).parent().css({"background":"#fa4a4a","cursor":"pointer"});
				$(this).parent().css({"background":"#FFF7D5","cursor":"pointer"});
			}).mouseout(function(){ 
				$(this).parent().css({"background":"white"});
			}).click(function(){	
/* 				var lastRow =  $(this).closest('td:last-child').addClass( 'result' );	
				alert("123 : " + lastRow); */				

				/* var gId = $(this).parent().children("input").val(); */
				
				var gId = $(this).parent().children("#gId").val();
				var cateCd = $(this).parent().children("#cateCd").val();
				var cateNm = $(this).parent().children("#cateNm").val();
				var lclCd = $(this).parent().children("#lclCd").val();
				var mclCd = $(this).parent().children("#mclCd").val();
				var sclCd = $(this).parent().children("#sclCd").val();

//alert("gId : " + gId);
				/* location.href="goodsDetailList.do?gId="+gId; */
				location.href="goodsDetailList.do?gId="+gId+ "&cateCd="+cateCd + "&cateNm="+cateNm + "&lclCd="+lclCd + "&mclCd="+mclCd + "&sclCd="+sclCd;
				
			});
		}); 
   </script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<!-- ---------------------------------------------------------------------------------------------------------------------------- -->
<!-- 


<script>
	/*Add row event*/
	$(document).on('click', '.rowfy-addrow', function(){
		let rowfyable = $(this).closest('table'); 
	  	/* let lastRow = $('tbody tr:last', rowfyable).clone(); */

	    var count = "N";
        var name = $("#name").val();
        var subject = $("#subject").val();
        var markup = "<tr><td><input type='test' name='record'></td><td>" + count + "</td></tr>";
	    
         let lastRow = $('#surveyListTable > tbody:last').append('<tr>'+
	    								'<td>-</td>'+   // 상품번호
	    								'<td>-</td>'+	// 상품이름
	    								'<td>-</td>'+	// 상품가격
	    								'<td>-</td>' +	// 상품수량
	    								"<td><input width='20px'></td>" +	// 상품상태
	    								'<td>-</td>'+	// 매진구분
	    								'<td>-</td>'+	// 등록날짜
	    								'<td>-</td>'+	// 수정날짜
	    							 '</tr>'); 
		
		
		

	  	
	  	$('input', lastRow).val('');
	  	/* $('tbody', rowfyable).append(lastRow); */ 
	  	$('#surveyListTable > tbody:last', rowfyable).append(lastRow);
	  	$(this).removeClass('rowfy-addrow btn-success').addClass('rowfy-deleterow btn-danger').text('-');
	});
	
	/*Delete row event*/
	$(document).on('click', '.rowfy-deleterow', function(){
	  $(this).closest('tr').remove();
	});
	
	/*Initialize all rowfy tables*/
	$('.rowfy').each(function(){
	  $('tbody', this).find('tr').each(function(){
	    $(this).append('<td><button type="button" class="btn btn-sm '
	      + ($(this).is(":last-child") ?
	        'rowfy-addrow btn-success">+' :
	        'rowfy-deleterow btn-danger">-') 
	      +'</button></td>');
	  });
	});
</script>
 -->
 
 <!-- 
 <script src="//code.jquery.com/jquery.min.js"></script>
<script>
//행개수
var count = 0;
//최대 행개수
var full_count = 5;
    $(function() {
     //처음에 켜지면 실행됨 onload
     $(window).load(function(){
      //추가 버튼 클릭이 자동으로 됨
      $('#add_btn').trigger('click');
     });
     //추가 버튼 클릭시
     $('#add_btn').click(function() {
      //행추가할때마다 행개수 +1
         ++count;
      
      //최대 행개수보다 크면 리턴
      if(count>full_count){
       alert("최대5개까지만 가능합니다.");
       return;
      }
      
            //행추가
            jQuery("#text_table").append('<tr id=tr'+count+'><td>'+count+'번 항목</td><td><input type=text name=text"+count+" id=text"+count+" size=40></td></tr>');
     });
       
     //삭제 버튼 클릭시
     $('#delete_btn').click(function() {
      //행이 하나밖에 없으면 삭제하지 않기
      if(count<=1){
       alert("더이상 삭제할수 없습니다");
       return;
      }
         //마지막 라인 삭제
         jQuery('#tr'+count).remove();
        
         //삭제할때마다 행개수 -1
      count--;
     });
     
    });
</script>

<button onclick="add_tr()" id="add_btn">추가</button>
<button onclick="delete_tr()" id="delete_btn">삭제</button>
<table cellpadding=0 cellspacing=0 id="text_table" border="1">
</table>
 -->
















<!-- 

   <br><br>
 
    <div class="row">
        <table id="example-table-1" width="100%" class="table table-bordered table-hover text-center">
            <thead>
                <tr>
                    <th>No. </th>
                    <th>아이디</th>
                    <th>이름</th>
                    <th>이메일</th>
                </tr>
            </thead>
            <tbody>                
                <tr>
                    <td>1</td>
                    <td>user01</td>
                    <td>홍길동</td>
                    <td>hong@gmail.com</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>user02</td>
                    <td>김사부</td>
                    <td>kim@naver.com</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>user03</td>
                    <td>존</td>
                    <td>John@gmail.com</td>
                </tr>
            </tbody>
        </table>
        <div class="col-lg-12" id="ex1_Result1" ></div> 
        <div class="col-lg-12" id="ex1_Result2" ></div> 
    </div>
    <br><br>
    
    <script>
    
        // 테이블의 Row 클릭시 값 가져오기
        $("#example-table-1 tr").click(function(){     
 
            var str = ""
            var tdArr = new Array();    // 배열 선언
            
            // 현재 클릭된 Row(<tr>)
            var tr = $(this);
            var td = tr.children();
            var lastrow = $( "tr" ).last().text();
            var lastrow1 = $( "tr" ).last().text().trim();
            var lastrow2 = $( "tr" ).last().text().split('\n');
            var lastrow3 = $( "tr" ).last().text().trim().split('\n');
            //var lastrow4 = lastrow3.split(',');
           
            // tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
            console.log("클릭한 Row의 모든 데이터11 : "+tr.text());
            console.log("테스트 : "+lastrow);
            console.log("테스트2 : "+lastrow.trim().split('\n'));
            console.log("테스트3 : "+lastrow.replace(/\r/g, ""));
            console.log("테스트11 : "+lastrow1);
            console.log("테스트22 : "+lastrow2);
            console.log("테스트33 : "+lastrow3);
          // console.log("테스트44 : "+lastrow4);
            
            
            // 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
            td.each(function(i){
                tdArr.push(td.eq(i).text());
            });
            
            console.log("배열에 담긴 값 : "+tdArr);
            
            // td.eq(index)를 통해 값을 가져올 수도 있다.
            var no = td.eq(0).text();
            var userid = td.eq(1).text();
            var name = td.eq(2).text();
            var email = td.eq(3).text();
            
            
            str +=    " * 클릭된 Row의 td값 = No. : <font color='red'>" + no + "</font>" +
                    ", 아이디 : <font color='red'>" + userid + "</font>" +
                    ", 이름 : <font color='red'>" + name + "</font>" +
                    ", 이메일 : <font color='red'>" + email + "</font>";        
            
            /* $("#ex1_Result1").html(" * 클릭한 Row의 모든 데이터333 = " + tr.text()); */
            $("#ex1_Result1").html(" * 클릭한 Row의 모든 데이터112 = " + lastrow.substr(1,5)); 
            $("#ex1_Result2").html(str);
        });
    
    
    </script>
-->







<!-- 
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>	
 -->
<!-- ---------------------------------------------------------------------------------------------------------------------------- -->	
	
	
	
	
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page session="false" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<title>Insert title here</title>
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

.centerDiv{
	  width:880px;
      margin-left:auto;
      margin-right:auto;
      height: auto;
      padding-left: 40px;
      
}

#orderTable{
	border:none;
	border-top: 1px solid black;
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

#orderTable td{
	height: 70px;
	border-bottom:  1px solid #d0d0d0;
	font-size: 14px;
	text-align : center;
}


.countBox{
height:170px;
border :5px solid gray;
}


#tb{
height : 170px;
width : 880px;
}

#tb tr td{
font-size : 40px;
font-family:  'Do Hyeon', sans-serif;
text-align: center;
}


#tb tbody tr td{
color : red;
font-size: 30px;
font-weight:bold;
font-family:  'Do Hyeon', sans-serif;
height:0px;
}

.date{
	height: 30px;
	width: 100px;
	padding-top: 6px;
	cursor: pointer;
}

input::placeholder {
  color: DB6666;
  font-style: italic;
  text-align: center;
  margin-bottom: 
}

#search {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);

	max-width: 32px;

	border-radius: 4px;
	padding: 6px;

	text-align: center;
}


#search.button {
	color: gray;
	box-shadow: gray 0 0px 0px 2px inset;
}

#search.button:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: #fa4a4a 0 80px 0px 2px inset;
	cursor: pointer;
}
.term{
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);

	max-width: 32px;

	border-radius: 4px;
	padding: 6px;

	text-align: center;
	color: gray;
	box-shadow: gray 0 0px 0px 2px inset;
}



.term:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: #fa4a4a 0 80px 0px 2px inset;
	cursor: pointer;
}
#back{
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);

	max-width: 32px;

	border-radius: 4px;
	padding: 6px;

	text-align: center;
	color: gray;
	box-shadow: gray 0 0px 0px 2px inset;
}



#back:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: #fa4a4a 0 80px 0px 2px inset;
	cursor: pointer;
}
</style>
<body>
	<jsp:include page="../common/menubar.jsp" />

<div class = "centerDiv"> 
		
		<h1>주문/배송 조회</h1>
		<div align="right">
		<a id=week onclick="searchWeek()" class="term">1주일</a>&nbsp;<a id=oneMon onclick="searchAmon()" class="term">1개월</a>&nbsp;<a id=threeMon onclick="searchTmon()" class="term">3개월</a>&nbsp;<a id=sixMon onclick="searchSmon()" class="term">6개월</a>&nbsp;<input class="date" type="text" id="date1" placeholder="시작날짜" readonly>&nbsp;<input class="date" type="text" id="date2" placeholder="마지막날짜" size="25px" readonly>&nbsp;<a id=search onclick="search2()" class="button">검색</a>
		</div>
	<br>

	<br>
		<div align="center">
		<h2>주문할 데이터가 없습니다.</h2>

			<br>
			<a id=back onclick="location.href='orderview.do'">목록으로 돌아가기</a>
			<br><br><br>
		</div>
		</div>
		
 		<script>

		
		$(function() {
 		   $( "#date1" ).datepicker({
	    	dateFormat: "yy-mm-dd",
	    	changeMonth: true, 
	         changeYear: true,
	         nextText: '다음 달',
	         prevText: '이전 달'
	    	
	   		 	});
			});
		
		$(function() {
		    $( "#date2" ).datepicker({
		    	dateFormat: "yy-mm-dd",
		    	changeMonth: true, 
		         changeYear: true,
		         nextText: '다음 달',
		         prevText: '이전 달'
		    });
		});
		
		function search2(){
			
			var date1 = $("#date1").datepicker({dateFormat : "yy/mm/dd"}).val();
			var date2 = $("#date2").datepicker({dateFormat : "yy/mm/dd"}).val();
				
			console.log(date1);
			
	 		if(date1==null || date1<=0){
	 			if( date2==null || date2<=0){
	 				alert("날짜를 입력하세요");
	 			}else{
	 				alert("시작날짜를 입력하세요");
	 			}
	 		}else if(date2==null || date2<=0){
	 			alert("마지막날짜를 입력하세요");
	 		}else{
	 			if(date1>date2){
	 				alert("닐짜를 다시 입력해주세요");
	 			}else {
	 			
	 				location.href="orderSearch.do?date1="+date1+"&date2="+date2;
	 		}
	 		
			
		}
		}
		 function searchWeek(){
				
				
				var sysdate = new Date();
				var dd = sysdate.getDate();
				var mm = sysdate.getMonth()+1; //January is 0!
				var yy = sysdate.getFullYear();
		
	 
			/* 	if(yy>100){
					yy=yy-100;
				}
 */
				 if(dd<10) {
				    dd='0'+dd;
				} 

				if(mm<10) {
				    mm='0'+mm;
				}  
				
				var to = yy+"/"+mm+"/"+dd;
				var date2 = to;
				
				var Ago = new Date(sysdate);
				
				
				Ago.setDate(Ago.getDate() - 7);
				
				dd = Ago.getDate();
				mm = Ago.getMonth()+1; //January is 0!
				yy = Ago.getFullYear(); 
				
				/* if(yy>100){
					yy=yy-100;
				} */
				 if(dd<10) {
					    dd='0'+dd
					} 

					if(mm<10) {
					    mm='0'+mm
					}  
					
				
				var from = ""+yy+"/"+mm+"/"+dd;
				var date1 = from;

			 location.href="termSearch.do?date3="+date1+"&date4="+date2;  
				
			}
			
		 function searchAmon(){
				var sysdate = new Date();
				var dd = sysdate.getDate();
				var mm = sysdate.getMonth()+1; //January is 0!
				var yy = sysdate.getFullYear();
		
	 
			/* 	if(yy>100){
					yy=yy-100;
				}
 */
				 if(dd<10) {
				    dd='0'+dd;
				} 

				if(mm<10) {
				    mm='0'+mm;
				}  
				
				var to = yy+"/"+mm+"/"+dd;
				var date2 = to;
				
				var Ago = new Date(sysdate);
		
				Ago.setMonth(Ago.getMonth() - 1);
				
				dd = Ago.getDate();
				mm = Ago.getMonth()+1; //January is 0!
				yy = Ago.getFullYear(); 
				
				/* if(yy>100){
					yy=yy-100;
				} */
				 if(dd<10) {
					    dd='0'+dd
					} 

					if(mm<10) {
					    mm='0'+mm
					}  
					
				
				var from = ""+yy+"/"+mm+"/"+dd;
				var date1 = from;


			 location.href="termSearch.do?date3="+date1+"&date4="+date2; 
		 }
		 
		 function searchTmon(){
			 var sysdate = new Date();
				var dd = sysdate.getDate();
				var mm = sysdate.getMonth()+1; //January is 0!
				var yy = sysdate.getFullYear();
		
	 
			/* 	if(yy>100){
					yy=yy-100;
				}
*/
				 if(dd<10) {
				    dd='0'+dd;
				} 

				if(mm<10) {
				    mm='0'+mm;
				}  
				
				var to = yy+"/"+mm+"/"+dd;
				var date2 = to;
				
				var Ago = new Date(sysdate);
		
				Ago.setMonth(Ago.getMonth() - 3);
				
				dd = Ago.getDate();
				mm = Ago.getMonth()+1; //January is 0!
				yy = Ago.getFullYear(); 
				
				/* if(yy>100){
					yy=yy-100;
				} */
				 if(dd<10) {
					    dd='0'+dd
					} 

					if(mm<10) {
					    mm='0'+mm
					}  
					
				
				var from = ""+yy+"/"+mm+"/"+dd;
				var date1 = from;


			 location.href="termSearch.do?date3="+date1+"&date4="+date2; 
		 }
		 
		 function searchSmon(){
			 var sysdate = new Date();
				var dd = sysdate.getDate();
				var mm = sysdate.getMonth()+1; //January is 0!
				var yy = sysdate.getFullYear();
		
	 
			/* 	if(yy>100){
					yy=yy-100;
				}
*/
				 if(dd<10) {
				    dd='0'+dd;
				} 

				if(mm<10) {
				    mm='0'+mm;
				}  
				
				var to = yy+"/"+mm+"/"+dd;
				var date2 = to;
				
				var Ago = new Date(sysdate);
		
				Ago.setMonth(Ago.getMonth() - 6);
				
				dd = Ago.getDate();
				mm = Ago.getMonth()+1; //January is 0!
				yy = Ago.getFullYear(); 
				
				/* if(yy>100){
					yy=yy-100;
				} */
				 if(dd<10) {
					    dd='0'+dd
					} 

					if(mm<10) {
					    mm='0'+mm
					}  
					
				
				var from = ""+yy+"/"+mm+"/"+dd;
				var date1 = from;


			 location.href="termSearch.do?date3="+date1+"&date4="+date2; 
			 
		 }
			</script> 
			


		 



	
</body>

<footer>
	<jsp:include page ="../common/footer.jsp"/>
</footer>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" type="image/x-icon">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.3.1/lumen/bootstrap.min.css"> -->
<style>
	.container { margin: 150px auto; }
	
	.ScrollButton {
		position: fixed;   /* 버튼의 위치 고정 */
		right: 10px;       /* x 위치 입력 */
		cursor: pointer;   /* 호버링 했을 때 커서 모양 변경 */
		z-index: 10;       /* 다른 태그에 가려지지 않게 우선순위 변경 */
		display: none;     /* 스크롤 위치에 상관없이 보이게 하려면 생략 */
	}
	/* 두 태그에 각각 y 위치 입력 */
	#TopButton {
	  bottom: 108px;        
	}
	#BottomButton {
	  bottom: 75px;
	}
	#surveyListTable{
	  border-collapse: collapse;
	  border-spacing: 0;
	  width: 1400px;
	  border: 1px solid #ddd;
	  text-align :center;
	}
	
	#surveyListTable tr:nth-child(even) {
	  /* background-color: #f2f2f2; */
	}
	
	
	
	.centerDiv{
		    width: 1500px;
    /* border: 1px solid pink; */
    margin-left: auto;
    margin-right: auto;
    height: auto;
    padding-left: 90px;
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
	  margin-top : 10px;
	  margin-left : 28%;
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
	
	/*포인트 수정 버튼 css  */
	.myBtn{
		width :80px;
		height : 30px;
		font-size : 13px;
		border-radius: 4px;
		background-color: #4CAF50;
		border: none;
		color: #FFFFFF;
		text-align: center;
		padding: 6px;
		transition: all 0.5s;
		cursor: pointer;
		margin: 3px;
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
	.guide{
		display:none;
		font-size:12px;
		top:12px;
		right:10px;
	}
	span.ok{color:green;}
	span.error{color:red;}
	
	
	.aOrder{
		cursor: pointer;
		/* color: black; */
		color: white;
	}
	.dOrder{
		cursor: pointer;
		/* color: black; */
		color: white;
	}
	.aOrder:hover{
		/* color: white; */
		color: black;
	}
	.dOrder:hover{
		/* color: white; */
		color: black;
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

	<jsp:include page ="../common/menubar.jsp"/>
	<%-- <jsp:include page ="../admin/adminMenu.jsp"/> --%>
	
	<br><br>
	<c:if test="${!empty loginUser }">
		

   		<div align ="center">
   					<span id="listCountSpan" style ="font-size : 20px; font-weight: bold; padding-right: 1200px;  ">
				 상품 수량 : ${listCount}개 
			</span>
   		<!--
   			상품 이름 
   			대 분류
   			중 분류
   			소 분류
   			상품 상태
   			매진 구분
   		-->

   		<table>

   					<th><input type="checkbox" name="user_CheckBox" id="categoryCk">카테고리</th>
		            <td id="Chidden">	    
						<select id="lclCd" name="lclCd" style="width:100px; height: 20.67px;" class="category">
							<option value="">선택하세요</option>
							<c:forEach var="c" items="${gClist}">
								<c:if test="${c.cateCd eq lclCd}">
									<option value="${c.cateCd}" selected="${lclCd}">${c.cateNm}</option>
								</c:if>
								<c:if test="${c.cateCd != lclCd}">
									<option value="${c.cateCd}">${c.cateNm}</option>
								</c:if>
								
							</c:forEach>
						</select>
					</td>
				
				<td style="width:50px;"></td>
		            <th>대 선택</th>
		            <td>
						<select id="mclCd" name="mclCd" style="width:100px; height: 20.67px;" class="category">
							<option value="">선택하세요</option>
							<c:forEach var="l" items="${gLlist}">
								<c:if test="${l.cateCd eq mclCd}">
									<option value="${l.cateCd}" selected="${mclCd}">${l.cateNm}</option>
									<%-- <option value="${l.cateCd}" selected="${mclCd}">선택하세요</option> --%>
								</c:if>
								<c:if test="${l.cateCd != mclCd}">
									<option value="${l.cateCd}">${l.cateNm}</option>
								</c:if>
							</c:forEach> 
							
						</select>
					</td>
				<td style="width:50px;"></td>
		            <th>중 선택</th>
		            <td>
						<select id="sclCd" name="sclCd" style="width:100px; height: 20.67px;" class="category">
							<option value="">선택하세요</option>
							<c:forEach var="m" items="${gMlist}">
								<c:if test="${m.cateCd eq sclCd}">
									<option value="${m.cateCd}" selected="${sclCd}">${m.cateNm}</option>
								</c:if>
								<c:if test="${m.cateCd != sclCd}">
									<option value="${m.cateCd}">${m.cateNm}</option>
								</c:if>							
							</c:forEach>
						</select>
					</td>
				<tr></tr>
				<th><input type="checkbox" name="user_CheckBox" id="statusCk">상품상태</th>
				<td id="statushidden" >
					<select id="goodsStatus" name ="goodsStatus" style="width:100px; height: 20.67px;">
							<option value="" selected="selected">선택하세요</option>
		                    <option value="Y">사용
		                    <option value="N">미사용
	                </select>
				</td>
				
				
				<td style="width:50px;"></td>
				<th><input type="checkbox" name="user_CheckBox" id="soldoutCk">매진구분</th> 
				<td id="soldouthidden" >
					<select id="soldout" name ="soldout" style="width:100px; height: 20.67px;">
							<option value="" selected="selected">선택하세요</option>
							<option value="Y">매진
							<option value="N">판매
	                </select>
				</td>
   		
   				<td style="width:50px;"></td>
	            <th>상품 이름</th>
	            <td>
	            	<input type="text" id="goodsName" name="goodsName" placeholder="상품명을 입력 하세요." list="myinter"/>
					<%-- <input type="text" id="goodsName" name="goodsName" placeholder="선택하세요." list="myinter" />   
					<datalist id="myinter" name="myinter">
						<select id="selectBox" name="selectBox">
							<c:forEach var="g" items="${glist}">
								<option value="${g.goodsName}">${g.goodsName}</option>
							</c:forEach>
						</select>
					</datalist> --%>
				</td>
   		<td>
   			<!-- <button id="goodsListSearch" type="button" onclick="goodsListSearch();">조회</button> -->
   			<!-- <button onclick="location.href='goodsInsertView.do'">상품 등록하기</button> -->
   			<!-- <button id="myBtn" class="myBtn success" type="button" onclick="goodsListSearch();"><span>조회</span></button> -->
   			<div style="margin-left: 100%">
   				<button id="myBtn" class="myBtn success" onclick="goodsInsert();"><span>등록</span></button>
   			</div>
   		</td>
   		
   		</table>
   		
   		
   			<!-- <button id='btn-add-row'>행 추가</button>
			<button id='btn-delete-row'>행 삭제</button> -->
			
   		</div>
	</c:if>
	<br>
					
	
	<table align="center" width="100%" border="1" cellspaction="1" id="surveyListTable"
		class="table table-bordered table-striped table-hover rowfy">
		<thead>
			<tr bgcolor ="#fa4a4a" style = "color : white; height:53px;" class="noExl">
			<th style="display:none;">숨킨 상품번호</th>
			
				<th>
					<div style="display:flex; width: 100%">
						<div align="center" style="padding-top: 8%; padding-left: 10%; width: 80%" >상품번호</div>
						<div>
							<div>
								<!-- <button onclick="sortTD ( 0 )" >▲</button> -->
								<div onclick="sortTD ( 0 )" class="aOrder">▲</div>
							</div>
							<div>
								<!-- <button onclick="reverseTD ( 0 )">▼</button> -->
								<div  onclick="reverseTD ( 0 )" class="dOrder">▼</div>
							</div>
						</div>
					</div>
				</th>
				<th>
					<div style="display:flex; width: 100%">
						<div align="center" style="padding-top: 4%; padding-left: 10%; width: 80%" >상품이름</div>
						<div>
							<div>
								<!-- <button onclick="sortTD ( 1 )" >▲</button> -->
								<div onclick="sortTD ( 1 )" class="aOrder">▲</div>
							</div>
							<div>
								<!-- <button onclick="reverseTD ( 1 )">▼</button> -->
								<div  onclick="reverseTD ( 1 )" class="dOrder">▼</div>
							</div>
						</div>
					</div>
				</th>	
				<th>
					<div style="display:flex; width: 100%">
						<div align="center" style="padding-top: 8%; padding-left: 10%; width: 80%" >상품가격</div>
						<div>
							<div>
								<!-- <button onclick="sortTD ( 2 )" >▲</button> -->
								<div onclick="sortTD ( 2 )" class="aOrder">▲</div>
							</div>
							<div>
								<!-- <button onclick="reverseTD ( 2 )">▼</button> -->
								<div  onclick="reverseTD ( 2 )" class="dOrder">▼</div>
							</div>
						</div>
					</div>
				</th>					
				<th>
					<div style="display:flex; width: 100%">
						<div align="center" style="padding-top: 8%; padding-left: 10%; width: 80%" >상품수량</div>
						<div>
							<div>
								<!-- <button onclick="sortTD ( 3 )" >▲</button> -->
								<div onclick="sortTD ( 3 )" class="aOrder">▲</div>
							</div>
							<div>
								<!-- <button onclick="reverseTD ( 3 )">▼</button> -->
								<div  onclick="reverseTD ( 3 )" class="dOrder">▼</div>
							</div>
						</div>
					</div>
				</th>					
				
				<th>
					<div style="display:flex; width: 100%">
						<div align="center" style="padding-top: 8%; padding-left: 10%; width: 80%" >상품상태</div>
						<div>
							<div>
								<!-- <button onclick="sortTD ( 4 )" >▲</button> -->
								<div onclick="sortTD ( 4 )" class="aOrder">▲</div>
							</div>
							<div>
								<!-- <button onclick="reverseTD ( 4 )">▼</button> -->
								<div  onclick="reverseTD ( 4 )" class="dOrder">▼</div>
							</div>
						</div>
					</div>
				</th>					
				<th>
					<div style="display:flex; width: 100%">
						<div align="center" style="padding-top: 8%; padding-left: 10%; width: 80%" >매진구분</div>
						<div>
							<div>
								<!-- <button onclick="sortTD ( 5 )" >▲</button> -->
								<div onclick="sortTD ( 5 )" class="aOrder">▲</div>
							</div>
							<div>
								<!-- <button onclick="reverseTD ( 5 )">▼</button> -->
								<div  onclick="reverseTD ( 5 )" class="dOrder">▼</div>
							</div>
						</div>
					</div>
				</th>					
				<th>
					<div style="display:flex; width: 100%">
						<div align="center" style="padding-top: 8%; padding-left: 10%; width: 80%" >등록날짜</div>
						<div>
							<div>
								<!-- <button onclick="sortTD ( 6 )" >▲</button> -->
								<div onclick="sortTD ( 6 )" class="aOrder">▲</div>
							</div>
							<div>
								<!-- <button onclick="reverseTD ( 6 )">▼</button> -->
								<div  onclick="reverseTD ( 6 )" class="dOrder">▼</div>
							</div>
						</div>
					</div>
				</th>					
				<th>
					<div style="display:flex; width: 100%">
						<div align="center" style="padding-top: 8%; padding-left: 10%; width: 80%" >수정날짜</div>
						<div>
							<div>
								<!-- <button onclick="sortTD ( 7 )" >▲</button> -->
								<div onclick="sortTD ( 7 )" class="aOrder">▲</div>
							</div>
							<div>
								<!-- <button onclick="reverseTD ( 7 )">▼</button> -->
								<div  onclick="reverseTD ( 7 )" class="dOrder">▼</div>
							</div>
						</div>
					</div>
				</th>					
				
		   <!-- <th>상품이름<button onclick="sortTD ( 1 )">▲</button><button onclick="reverseTD ( 1 )">▼</button></th>
				<th>상품가격<button onclick="sortTD ( 2 )">▲</button><button onclick="reverseTD ( 2 )">▼</button></th>
				<th>상품수량<button onclick="sortTD ( 3 )">▲</button><button onclick="reverseTD ( 3 )">▼</button></th>
				<th>상품상태<button onclick="sortTD ( 4 )">▲</button><button onclick="reverseTD ( 4 )">▼</button></th>
				<th>매진구분<button onclick="sortTD ( 5 )">▲</button><button onclick="reverseTD ( 5 )">▼</button></th>
				<th>등록날짜<button onclick="sortTD ( 6 )">▲</button><button onclick="reverseTD ( 6 )">▼</button></th>
				<th>수정날짜<button onclick="sortTD ( 7 )">▲</button><button onclick="reverseTD ( 7 )">▼</button></th> -->
				
		<!-- <th>상품번호</th>
				<th>상품이름</th>
				<th>상품가격</th>
				<th>상품수량</th>
				<th>상품상태</th>
				<th>매진구분</th>
				<th>등록날짜</th>
				<th>수정날짜</th> -->
	<!-- 		<th>카c</th>
				<th>카n</th>
				<th>대</th>
				<th>중</th>
				<th>소</th> -->
			</tr>
		</thead>
			<c:forEach var="n" items="${glist}">
				<tr>
					<input id="gId" 	type = "hidden" value = "${n.gId}">
					<input id="cateCd"  type = "hidden" value = "${n.cateCd}">
					<input id="cateNm"  type = "hidden" value = "${n.cateNm}">
					<input id="lclCd"  	type = "hidden" value = "${n.lclCd}">
					<input id="mclCd"  	type = "hidden" value = "${n.mclCd}">
					<input id="sclCd"  	type = "hidden" value = "${n.sclCd}">
					
					<input id="goodsName"  	type = "hidden" value = "${n.goodsName}">
					<input id="goodsPrice"  type = "hidden" value = "${n.goodsPrice}">
					<input id="count"  		type = "hidden" value = "${n.count}">
					<input id="goodsStatus"	type = "hidden" value = "${n.goodsStatus}">
					<input id="soldout"  	type = "hidden" value = "${n.soldout}">
					
					
					<td align="center" width="10%">${n.gId}</td>
					<td width="20%" align="left">
	<%-- 					<c:if test="${!empty loginUser}">
							<c:url var="ndetail" value="ndetail.do">
								<c:param name="nId" value="${n.gId}"></c:param>
							</c:url>
							<a href="${ndetail}">${n.nTitle}</a>
						</c:if> --%>
						<%-- <c:if test="${!empty loginUser}"> --%>
							&nbsp;${n.goodsName}
						<%-- </c:if> --%>
					</td>
					<td align="center" width="10%"><fmt:formatNumber value="${n.goodsPrice}" groupingUsed="true" /></td>
					<td align="center" width="10%"><fmt:formatNumber value="${n.count}" groupingUsed="true" /></td>
					
					<td align="center" width="10%">${n.goodsStatus }</td>
					<td align="center" width="10%">${n.soldout }</td>
					<td align="center" width="10%">${n.registerDate }</td>
					<td align="center" width="10%">${n.modifyDate }
					</td>
	<%-- 				<td width="10%">${n.cateCd }</td>
					<td width="20%">${n.cateNm }</td>
					<td align="center" width="10%">${n.lclCd }</td>
					<td align="center" width="10%">${n.mclCd }</td>
					<td align="center" width="10%">${n.sclCd }</td> --%>
					
				</tr>
			</c:forEach>
			
		<tbody>
		
		</tbody>
	</table>
<!-- 수정 페이지 Modal ----------------------------------------------------------------------------------------------------------------------------------- -->
	<div id="myModal" class="modal">
		<!-- Modal content -->
		<div class="modal-content">
			<span class="close">&times;</span>
			<h1 align="center"> 상품 수정 </h1>
			<form action="goodsUpdate.do" method="post" enctype="Multipart/form-data" id="goodsUpdateForm">
			<table class="type02" align="center" onclick=""><!--  style="border-spacing:60px" -->	
				<td><input id="modcateCd" type="hidden"  width="100%" name ="cateCd" value="${cateCd}" /></td>
				<td><input id="modgId" width="100%" type="hidden" name ="gId" value="${goods.gId}"/></td><!-- type="hidden"  -->
				
				<tr>
		            <th>카테고리<span style = "color:red; font-size : 1.5em;">*</span> </th>
		            <td>	    
						<select id="modlclCd" name="lclCd" style="width:100%;">
							<c:forEach var="c" items="${gClist}">
								<option value="${c.cateCd}" selected="${lclCd}">${c.cateNm}</option>
								
								<%-- <c:if test="${c.cateCd eq lclCd}">
									<option value="${c.cateCd}" selected="${lclCd}">${c.cateNm}</option>
								</c:if>
								<c:if test="${c.cateCd != lclCd}">
									<option value="${c.cateCd}">${c.cateNm}</option>
								</c:if> --%>
							</c:forEach>
							
						</select>
					</td>
				</tr>
				
				<tr>
		            <th>대 선택  <span style = "color:red; font-size : 1.5em;">*</span> </th>
		            <td>
						<select id="modmclCd" name="mclCd" style="width:100%;">
							<c:forEach var="l" items="${gLlist}">
							
								<option value="${l.cateCd}">${l.cateNm}</option>
							
								<%-- <c:if test="${cateCd == l.lclCd}">
									<option value="${l.cateCd}">${l.cateNm}</option>
								</c:if> --%>
							
								<%-- <option value="${l.cateCd}" selected="${mclCd}">${l.cateNm}</option> --%>
								<%-- <c:if test="${l.cateCd eq lclCd}">
									<option value="${l.cateCd}" selected="${mclCd}">${l.cateNm}</option>
								</c:if> --%>
								<%-- <c:if test="${l.cateCd != lclCd}">
									<option value="${l.cateCd}">${l.cateNm}</option>
								</c:if> --%>
							</c:forEach> 
						</select>
					</td>
				</tr>
				<tr>
		            <th>중 선택  <span style = "color:red; font-size : 1.5em;">*</span> </th>
		            <td>
						<select id="modsclCd" name="sclCd" style="width:100%;">
							<c:forEach var="m" items="${gMlist}">
								<option value="${m.cateCd}" selected="${sclCd}">${m.cateNm}</option>
								<%-- <c:if test="${m.cateCd eq sclCd}">
									<option value="${m.cateCd}" selected="${sclCd}">${m.cateNm}</option>
								</c:if>
								<c:if test="${m.cateCd != sclCd}">
									<option value="${m.cateCd}">${m.cateNm}</option>
								</c:if> --%>							
							</c:forEach>
						</select>
					</td>
				</tr>
				
				<tr>
					<th>상품이름  <span style = "color:red; font-size : 1.5em;">*</span> </th>
					<td><input id="modgoodsName" type="text" width="100%" name ="goodsName" value=""/></td>
				</tr>
				<tr>
					<th>상품가격  <span style = "color:red; font-size : 1.5em;">*</span> </th>
					<td><input id="modgoodsPrice"  type="text" width="100%" name ="goodsPrice" numberOnly value=""/></td>
				</tr>
				<tr>
					<th>상품수량  <span style = "color:red; font-size : 1.5em;">*</span> </th>
					<td><input id="modcount"  type="text" width="100%" name ="count" numberOnly value=""/></td> 
				</tr>
		
				<tr>
					<th>상품상태</th>
					<td>
						<select name ="goodsStatus" id="modgoodsStatus" style="width:100%;">
							<option value="Y">사용
			                <option value="N">미사용
							<%-- <c:if test="${n.goodsStatus eq 'Y'}">
			                    <option value="Y" selected="selected">사용
			                    <option value="N">미사용
							</c:if>
							<c:if test="${n.goodsStatus eq 'N'}">
			                    <option value="Y">사용
			                    <option value="N" selected="selected">미사용
							</c:if> --%>
		                </select>
					</td>
				</tr>
				<tr>
					<th>매진구분</th> 
					<td>
						<select name ="soldout" id="modsoldout" style="width:100%;">
							<option value="Y">매진
							<option value="N">판매
						
							<%-- <c:if test="${n.soldout eq 'Y'}">
								<option value="Y" selected="selected">매진
								<option value="N">판매
							</c:if>
							<c:if test="${n.soldout eq 'N'}">
								<option value="Y">매진
								<option value="N" selected="selected">판매
							</c:if> --%>
		                </select>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<!-- <input type="submit" value="등록하기"> &nbsp; -->
						<!-- <input type="button" onclick="validate()" value="수정"> &nbsp;
						<input type="button" onclick="closeModal()" value="취소"> -->
						<button id="myBtn" class="myBtn success" type="button" onclick="validate();"><span>수정</span></button>
						<button id="myBtn" class="myBtn success" type="button" onclick="closeModal();"><span>취소</span></button>
					</td> 
				</tr>
			</table>
					
					
					<!-- InsertThumbnailServlet 만들러 ㄱㄱ!!!! -->
						</form>	
		  </div>
		</div>
<!-- 수정 페이지 Modal ----------------------------------------------------------------------------------------------------------------------------------- -->

<!-- 등록 페이지 Modal ----------------------------------------------------------------------------------------------------------------------------------- -->
	<div id="myModal2" class="modal">
		<!-- Modal content -->
		<div class="modal-content">
			<span class="close">&times;</span>
			<h1 align="center"> 상품 등록 </h1>
			
			<form action="goodsInsert.do" method="post" enctype="Multipart/form-data" id="goodsInsertForm">
				<table class="type02" align="center">	 
					<!-- <th>카테고리 코드  <span style = "color:red; font-size : 1.5em;">*</span> </th> -->
					<td><input id="selectlclCd" type="hidden" width="100%" name ="insertlclCd" readonly /></td>
					<!-- <th>대 코드  <span style = "color:red; font-size : 1.5em;">*</span> </th> -->
					<td><input id="selectmclCd" type="hidden" width="100%" name ="insertmclCd" readonly /></td>
					<!-- <th>중 코드  <span style = "color:red; font-size : 1.5em;">*</span> </th> -->
					<td><input id="selectsclCd" type="hidden" width="100%" name ="insertsclCd" readonly /></td>
					<!-- <th>소 코드  <span style = "color:red; font-size : 1.5em;">*</span> </th> -->
					<td><input id="selectcateCd" type="hidden" width="100%" name ="cateCd" value="${cateCd.cateCd}" readonly /></td>
					<tr>
			            <th>카테고리 <span style = "color:red; font-size : 1.5em;">*</span> </th>
			            <td>	    
							<select id="modIlclCd" name="lclCd" style="width:100%;">
								<c:forEach var="c" items="${gClist}">
									<option value="${c.cateCd}">${c.cateNm}</option>
								</c:forEach>
							</select>
							
						</td>
					</tr>
					
					<tr>
			            <th>대 선택  <span style = "color:red; font-size : 1.5em;">*</span> </th>
			            <td>
							<select id="modImclCd" name="mclCd" style="width:100%;">
								<!-- <option>선택하세요.</option> -->
								<!-- 
								<option value="${l.cateCd}">${l.cateNm}</option>
								-->
								<c:forEach var="l" items="${gLlist}">
									<option value="${l.cateCd}">${l.cateNm}</option>
								</c:forEach>
								 
							</select>
						</td>
					</tr>
					
					<tr>
			            <th>중 선택  <span style = "color:red; font-size : 1.5em;">*</span> </th>
			            <td>
							<select id="modIsclCd" name="sclCd" style="width:100%;">
								<!-- <option>선택하세요.</option> -->
								<c:forEach var="m" items="${gMlist}">
									<option value="${m.cateCd}">${m.cateNm}</option>
								</c:forEach>
							</select>
						</td>
					</tr>
					 <!-- 
					<tr>
			            <th>소 선택  <span style = "color:red; font-size : 1.5em;">*</span> </th>
			            <td>
							<select id="nclCd" name="nclCd">
								<option>선택하세요.</option>
							</select>
						</td>
					</tr>
					-->
						 	
					<tr>
						<th>상품이름  <span style = "color:red; font-size : 1.5em;">*</span> </th>
						<!-- <td><input id="goodsName" type="text" width="100%" name ="goodsName" readonly /></td> -->
						<td>
							<input id="modIgoodsName" type="text" width="100%" name ="goodsName"/>
						</td>
					</tr>
					<tr>
						<th></th>
						<td>
							<!-- <span class="guide ok">이 상품명은 사용 가능합니다.</span> -->
							<span class="guide error">이 상품명은 사용할수 없습니다.</span>
							<input type="hidden" name="idDuplicateCheck" id="idDuplicateCheck" value="0">
						</td>
					</tr>
					<tr>
						<th>상품가격  <span style = "color:red; font-size : 1.5em;">*</span> </th>
						<td><input id="modIgoodsPrice" type="text" width="100%" name ="goodsPrice" numberOnly class="numb"/></td>
					</tr>
					<tr>
						<th>상품수량  <span style = "color:red; font-size : 1.5em;">*</span> </th>
						<td><input id="modIcount" type="text" width="100%" name ="count" numberOnly class="numb"/></td>
					</tr>
		
					<tr>
						<th>상품상태</th>
						<td>
							<select id="modIgoodsStatus" name ="goodsStatus" style="width:100%;">
			                    <option value="Y" >사용</option>
			                    <option value="N" >미사용</option>
			                </select>
						</td>
					</tr>
					<tr>
						<th>매진구분</th>
						<td>
							<select id="modIsoldout" name ="soldout" style="width:100%;">
			                    <option value="Y">매진
			                    <option value="N" selected="selected">판매
			                </select>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<!-- <input type="submit" value="등록하기"> &nbsp; -->
							<button id="myBtn" class="myBtn success" type="button" onclick="validateInsert();"><span>등록</span></button>
							<button id="myBtn" class="myBtn success" type="button" onclick="closeModal2();"><span>취소</span></button>
							
							<!-- <input type="button" onclick="validateInsert()" value="등록하기"> &nbsp;
							<input type="reset" value="등록취소"> -->
						</td> 
					</tr>
				</table>
						
						
						<!-- InsertThumbnailServlet 만들러 ㄱㄱ!!!! -->
			</form>	
		  </div>
		</div>


<!-- 등록 페이지 Modal ----------------------------------------------------------------------------------------------------------------------------------- -->




	
	<br><br><br>
	
		<p align="center" style="margin : 50px 0 50px 0;">
				<button class="adminMain-btn" type="button" style="width : 180px; height : 40px;" onclick="location.href='adminSalesVolume.do'">관리자 HOME 이동</button>
		</p>
	

	<script type="text/javascript">
// list row 클릭시 ------------------------------------------------------------------------------------------------------------------
		$(function(){
			$(document).on('mouseenter', '#surveyListTable td', function(){
				$(this).parent().css({"background":"#FFF7D5","cursor":"pointer"});
			}).on('mouseout', '#surveyListTable td', function(){
				$(this).parent().css({"background":"white"});
			}).on('click', '#surveyListTable td', function(){
				
				var modal = document.getElementById("myModal");
				modal.style.display = "block";

			var gId = $(this).parent().children("#gId").val();
			var cateCd = $(this).parent().children("#cateCd").val();
			var cateNm = $(this).parent().children("#cateNm").val();
			var lclCd = $(this).parent().children("#lclCd").val();
			var mclCd = $(this).parent().children("#mclCd").val();
			var sclCd = $(this).parent().children("#sclCd").val();
			
			var goodsName = $(this).parent().children("#goodsName").val();
			var goodsPrice = $(this).parent().children("#goodsPrice").val();
			var count = $(this).parent().children("#count").val();
			var goodsStatus = $(this).parent().children("#goodsStatus").val();
			var soldout = $(this).parent().children("#soldout").val();
			
			$("#modgoodsName").val(goodsName);
			$("#modgoodsPrice").val(goodsPrice);
			$("#modcount").val(count);
			$("#modgoodsStatus").val(goodsStatus);
			$("#modsoldout").val(soldout);
			
			
			
//str 카테고리 리스트 조회 (view 안만들고 modal로 하려고하니.. 코드 겁나 더러워짐 나도몰라!!!)----------------------------------------------------------------------------------------------------------------------------------------------------
 				//var lclCd =$(this).val();
				$("#modmclCd option").remove();
				$("#modsclCd option").remove();
				$("#modnclCd option").remove();
				$("#modcateCd").val("");
		
				//$("#modgoodsName").val("");
				//$("#modgoodsPrice").val("");
				//$("#modcount").val("");
				
				$.ajax({
					url:"categoryCSelectBox.do",
					data:{lclCd:lclCd},
					success:function(data){
						for(var i=0; i<data.list.length; i++){
							$("#modmclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
						}
		//str 처음 조회시 카테고리 전체 조회---------------------------------------------					
						var mclCd = null;
						
						if(data.list.length == 0){	// 데이터 없으면 조회안되게
							return;
						}
						
						for(var i=0; i<1; i++){
							$("#modmclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
							mclCd = data.list[i].cateCd;
						}	
						
						$.ajax({
							url:"categoryLSelectBox.do",
							data:{lclCd:lclCd, mclCd:mclCd},
							success:function(data){
								
								for(var i=0; i<data.list.length; i++){
									$("#modsclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
								}
								
								var sclCd = null;
								
								for(var i=0; i<1; i++){
									$("#modsclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
									sclCd = data.list[i].cateCd;
								}
								
								$.ajax({
									url:"categoryMSelectBox.do",
									data:{lclCd:lclCd, mclCd:mclCd, sclCd:sclCd},
									success:function(data){
		
										for(var i=0; i<data.list.length; i++){
											//$("#nclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
											$("#modnclCd").append("<option value='" + data.list[i].cateCd + "' + cost_value='"+data.list[i].cateNm+"'>" + data.list[i].cateNm +'</option>');
										}		
		
											for(var i=0; i<data.list.length; i++){
											sizeLCd = data.list[i].lclCd;
											sizeMCd = data.list[i].mclCd;
											sizeSCd = data.list[i].sclCd;
										}	 
										
											$("#modlclCd").val(lclCd);
											$("#modmclCd").val(mclCd);
											$("#modsclCd").val(sclCd);
											$("#modcateCd").val(cateCd);
											$("#modgId").val(gId);
											
									},
									error:function(request, status, errorData){
										alert("error code : " + request.status + "\n"
															  + "message : " + request.responseText
															  + "error : " + errorData);
									}
								});
							},
							error:function(request, status, errorData){
								alert("error code : " + request.status + "\n"
													  + "message : " + request.responseText
													  + "error : " + errorData);
							}
						});
		//end 처음 조회시 카테고리 전체 조회---------------------------------------------					
					},
					error:function(request, status, errorData){
						alert("error code : " + request.status + "\n"
											  + "message : " + request.responseText
											  + "error : " + errorData);
					}
				});	

				
// ajax 이전 리스트에서 적용되던 이벤트
/* 			$("#surveyListTable td").mouseenter(function(){
				$(this).parent().css({"background":"#FFF7D5","cursor":"pointer"});
			}).mouseout(function(){ 
				$(this).parent().css({"background":"white"});
			}).click(function(){

				var gId = $(this).parent().children("#gId").val();
				var cateCd = $(this).parent().children("#cateCd").val();
				var cateNm = $(this).parent().children("#cateNm").val();
				var lclCd = $(this).parent().children("#lclCd").val();
				var mclCd = $(this).parent().children("#mclCd").val();
				var sclCd = $(this).parent().children("#sclCd").val();
*/

				// 페이지로 이동 안하고 modal 창으로 변경함
				/* location.href="goodsDetailList.do?gId="+gId; */
//				location.href="goodsDetailList.do?gId="+gId+ "&cateCd="+cateCd + "&cateNm="+cateNm + "&lclCd="+lclCd + "&mclCd="+mclCd + "&sclCd="+sclCd;
				
			});
		});
		
// list row 클릭시 ------------------------------------------------------------------------------------------------------------------

	$(function(){
        // 조회조건 변경후 체크박스 클릭시 바로 조회되게!!!
        // 카테고리
        $("#categoryCk").click(function(){
        	// 클릭한 체크박스가 체크상태인지 체크해제상태인지 판단
            if( $("#categoryCk").is(":checked") ){
            
					var goodsName =$("#goodsName").val().trim();// 공백제거후 담음
		            // 테이블 헤더에 있는 checkbox 클릭시
 	                if( $("#categoryCk").is(":checked") ){
	    				var lclCd =$("#lclCd").val();
	    				var mclCd =$("#mclCd").val();
	    				var sclCd =$("#sclCd").val();
	                }else{
	                	var lclCd = null;
	                	var mclCd = null;
	                	var sclCd = null;
	                }
	                if( $("#statusCk").is(":checked") ){
	                	var goodsStatus =$("#goodsStatus").val();
	                }else{
	                	var goodsStatus = null;
	                }
	                if( $("#soldoutCk").is(":checked") ){ 
	                	var soldout =$("#soldout").val();
	                }else{
	                	var soldout = null;
	                } 
					
						$.ajax({
							url:"checkTextSelectGoods.do",
							dataType : "json",
							data:{lclCd:lclCd,
								  mclCd:mclCd,
								  sclCd:sclCd,
								  goodsStatus:goodsStatus,
								  soldout:soldout, 
								  goodsName:goodsName},
								  
							success:function(data){
	
								$tableBody = $("#surveyListTable tbody");
								$tableBody.html("");
								
		  							for(var i in data){  
									    $("#surveyListTable").append('<tr>'+
												'<input id="gId" 	type = "hidden" value = "'+ data[i].gId +'">' + 
												'<input id="cateCd" type = "hidden" value = "'+ data[i].cateCd +'">' +
												'<input id="cateNm" type = "hidden" value = "'+ data[i].cateNm +'">' +
												'<input id="lclCd" 	type = "hidden" value = "'+ data[i].lclCd +'">' +
												'<input id="mclCd" 	type = "hidden" value = "'+ data[i].mclCd +'">' +
												'<input id="sclCd" 	type = "hidden" value = "'+ data[i].sclCd +'">' +
												'<input id="goodsName" 		type = "hidden" value = "'+ data[i].goodsName +'">' +
												'<input id="goodsPrice" 	type = "hidden" value = "'+ data[i].goodsPrice +'">' +
												'<input id="count" 			type = "hidden" value = "'+ data[i].count +'">' +
												'<input id="goodsStatus" 	type = "hidden" value = "'+ data[i].goodsStatus +'">' +
												'<input id="soldout" 		type = "hidden" value = "'+ data[i].soldout +'">' +
			    								'<td width="10%" align="center">'+ data[i].gId +'</td>'+
			    								'<td width="20%" align="left">'+'&nbsp;'+ data[i].goodsName +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].goodsPrice +'</td>'+ 
			    								'<td width="10%" align="center">'+ data[i].count +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].goodsStatus +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].soldout +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].registerDate +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].modifyDate +'</td>'+
			    							 '</tr>');
									}
		  							if($("#gId").val() == null){
		  								$("#listCountSpan").html('상품 수량 : 0개');
		  							}else{
		  								$("#listCountSpan").html('상품 수량 : ' + data[0].listCount + '개');
		  							}	  								
									
							},
							error:function(request, status, errorData){
								alert("error code : " + request.status + "\n"
													  + "message : " + request.responseText
													  + "error : " + errorData);
							}
						});
            }else{

            	$("#lclCd option:eq(0)").prop("selected",true);
            	$("#mclCd option:eq(0)").prop("selected",true);
            	$("#sclCd option:eq(0)").prop("selected",true);
            	
				var goodsName =$("#goodsName").val().trim();// 공백제거후 담음
	            // 테이블 헤더에 있는 checkbox 클릭시
	            if( $("#categoryCk").is(":checked") ){
    				var lclCd =$("#lclCd").val();
    				var mclCd =$("#mclCd").val();
    				var sclCd =$("#sclCd").val();
                }else{
                	var lclCd = null;
                	var mclCd = null;
                	var sclCd = null;
                }
                if( $("#statusCk").is(":checked") ){
                	var goodsStatus =$("#goodsStatus").val();
                }else{
                	var goodsStatus = null;
                }
                if( $("#soldoutCk").is(":checked") ){ 
                	var soldout =$("#soldout").val();
                }else{
                	var soldout = null;
                } 
				
					$.ajax({
						url:"checkTextSelectGoods.do",
						dataType : "json",
						data:{lclCd:lclCd,
							  mclCd:mclCd,
							  sclCd:sclCd,
							  goodsStatus:goodsStatus,
							  soldout:soldout, 
							  goodsName:goodsName},
							  
						success:function(data){

							$tableBody = $("#surveyListTable tbody");
							$tableBody.html("");
							
	  							for(var i in data){  
								    $("#surveyListTable").append('<tr>'+
											'<input id="gId" 	type = "hidden" value = "'+ data[i].gId +'">' + 
											'<input id="cateCd" type = "hidden" value = "'+ data[i].cateCd +'">' +
											'<input id="cateNm" type = "hidden" value = "'+ data[i].cateNm +'">' +
											'<input id="lclCd" 	type = "hidden" value = "'+ data[i].lclCd +'">' +
											'<input id="mclCd" 	type = "hidden" value = "'+ data[i].mclCd +'">' +
											'<input id="sclCd" 	type = "hidden" value = "'+ data[i].sclCd +'">' +
											'<input id="goodsName" 		type = "hidden" value = "'+ data[i].goodsName +'">' +
											'<input id="goodsPrice" 	type = "hidden" value = "'+ data[i].goodsPrice +'">' +
											'<input id="count" 			type = "hidden" value = "'+ data[i].count +'">' +
											'<input id="goodsStatus" 	type = "hidden" value = "'+ data[i].goodsStatus +'">' +
											'<input id="soldout" 		type = "hidden" value = "'+ data[i].soldout +'">' +
		    								'<td width="10%" align="center">'+ data[i].gId +'</td>'+
		    								'<td width="20%" align="left">'+'&nbsp;'+ data[i].goodsName +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].goodsPrice +'</td>'+ 
		    								'<td width="10%" align="center">'+ data[i].count +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].goodsStatus +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].soldout +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].registerDate +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].modifyDate +'</td>'+
		    							 '</tr>');
								} 
	  							if($("#gId").val() == null){
	  								$("#listCountSpan").html('상품 수량 : 0개');
	  							}else{
	  								$("#listCountSpan").html('상품 수량 : ' + data[0].listCount + '개');
	  							}
								
						},
						error:function(request, status, errorData){
							alert("error code : " + request.status + "\n"
												  + "message : " + request.responseText
												  + "error : " + errorData);
						}
					});      	
            	
            }
        });
        
        
        // 상품상태
        $("#statusCk").click(function(){
        	// 클릭한 체크박스가 체크상태인지 체크해제상태인지 판단
            if( $("#statusCk").is(":checked") ){
            
					var goodsName =$("#goodsName").val().trim();// 공백제거후 담음
		            // 테이블 헤더에 있는 checkbox 클릭시
 	                if( $("#categoryCk").is(":checked") ){
	    				var lclCd =$("#lclCd").val();
	    				var mclCd =$("#mclCd").val();
	    				var sclCd =$("#sclCd").val();
	                }else{
	                	var lclCd = null;
	                	var mclCd = null;
	                	var sclCd = null;
	                }
	                if( $("#statusCk").is(":checked") ){
	                	var goodsStatus =$("#goodsStatus").val();
	                }else{
	                	var goodsStatus = null;
	                }
	                if( $("#soldoutCk").is(":checked") ){ 
	                	var soldout =$("#soldout").val();
	                }else{
	                	var soldout = null;
	                } 
					
						$.ajax({
							url:"checkTextSelectGoods.do",
							dataType : "json",
							data:{lclCd:lclCd,
								  mclCd:mclCd,
								  sclCd:sclCd,
								  goodsStatus:goodsStatus,
								  soldout:soldout, 
								  goodsName:goodsName},
								  
							success:function(data){
	
								$tableBody = $("#surveyListTable tbody");
								$tableBody.html("");
								
		  							for(var i in data){  
									    $("#surveyListTable").append('<tr>'+
												'<input id="gId" 	type = "hidden" value = "'+ data[i].gId +'">' + 
												'<input id="cateCd" type = "hidden" value = "'+ data[i].cateCd +'">' +
												'<input id="cateNm" type = "hidden" value = "'+ data[i].cateNm +'">' +
												'<input id="lclCd" 	type = "hidden" value = "'+ data[i].lclCd +'">' +
												'<input id="mclCd" 	type = "hidden" value = "'+ data[i].mclCd +'">' +
												'<input id="sclCd" 	type = "hidden" value = "'+ data[i].sclCd +'">' +
												'<input id="goodsName" 		type = "hidden" value = "'+ data[i].goodsName +'">' +
												'<input id="goodsPrice" 	type = "hidden" value = "'+ data[i].goodsPrice +'">' +
												'<input id="count" 			type = "hidden" value = "'+ data[i].count +'">' +
												'<input id="goodsStatus" 	type = "hidden" value = "'+ data[i].goodsStatus +'">' +
												'<input id="soldout" 		type = "hidden" value = "'+ data[i].soldout +'">' +
			    								'<td width="10%" align="center">'+ data[i].gId +'</td>'+
			    								'<td width="20%" align="left">'+'&nbsp;'+ data[i].goodsName +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].goodsPrice +'</td>'+ 
			    								'<td width="10%" align="center">'+ data[i].count +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].goodsStatus +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].soldout +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].registerDate +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].modifyDate +'</td>'+
			    							 '</tr>');
									} 
		  							if($("#gId").val() == null){
		  								$("#listCountSpan").html('상품 수량 : 0개');
		  							}else{
		  								$("#listCountSpan").html('상품 수량 : ' + data[0].listCount + '개');
		  							}
							},
							error:function(request, status, errorData){
								alert("error code : " + request.status + "\n"
													  + "message : " + request.responseText
													  + "error : " + errorData);
							}
						});
            }else{
				
            	$("#goodsStatus option:eq(0)").prop("selected",true);
				var goodsName =$("#goodsName").val().trim();// 공백제거후 담음
	            // 테이블 헤더에 있는 checkbox 클릭시
	                if( $("#categoryCk").is(":checked") ){
    				var lclCd =$("#lclCd").val();
    				var mclCd =$("#mclCd").val();
    				var sclCd =$("#sclCd").val();
                }else{
                	var lclCd = null;
                	var mclCd = null;
                	var sclCd = null;
                }
                if( $("#statusCk").is(":checked") ){
                	var goodsStatus =$("#goodsStatus").val();
                }else{
                	var goodsStatus = null;
                }
                if( $("#soldoutCk").is(":checked") ){ 
                	var soldout =$("#soldout").val();
                }else{
                	var soldout = null;
                } 
				
					$.ajax({
						url:"checkTextSelectGoods.do",
						dataType : "json",
						data:{lclCd:lclCd,
							  mclCd:mclCd,
							  sclCd:sclCd,
							  goodsStatus:goodsStatus,
							  soldout:soldout, 
							  goodsName:goodsName},
							  
						success:function(data){

							$tableBody = $("#surveyListTable tbody");
							$tableBody.html("");
							
	  							for(var i in data){  
								    $("#surveyListTable").append('<tr>'+
											'<input id="gId" 	type = "hidden" value = "'+ data[i].gId +'">' + 
											'<input id="cateCd" type = "hidden" value = "'+ data[i].cateCd +'">' +
											'<input id="cateNm" type = "hidden" value = "'+ data[i].cateNm +'">' +
											'<input id="lclCd" 	type = "hidden" value = "'+ data[i].lclCd +'">' +
											'<input id="mclCd" 	type = "hidden" value = "'+ data[i].mclCd +'">' +
											'<input id="sclCd" 	type = "hidden" value = "'+ data[i].sclCd +'">' +
											'<input id="goodsName" 		type = "hidden" value = "'+ data[i].goodsName +'">' +
											'<input id="goodsPrice" 	type = "hidden" value = "'+ data[i].goodsPrice +'">' +
											'<input id="count" 			type = "hidden" value = "'+ data[i].count +'">' +
											'<input id="goodsStatus" 	type = "hidden" value = "'+ data[i].goodsStatus +'">' +
											'<input id="soldout" 		type = "hidden" value = "'+ data[i].soldout +'">' +
		    								'<td width="10%" align="center">'+ data[i].gId +'</td>'+
		    								'<td width="20%" align="left">'+'&nbsp;'+ data[i].goodsName +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].goodsPrice +'</td>'+ 
		    								'<td width="10%" align="center">'+ data[i].count +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].goodsStatus +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].soldout +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].registerDate +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].modifyDate +'</td>'+
		    							 '</tr>');
								} 
	  							if($("#gId").val() == null){
	  								$("#listCountSpan").html('상품 수량 : 0개');
	  							}else{
	  								$("#listCountSpan").html('상품 수량 : ' + data[0].listCount + '개');
	  							}
						},
						error:function(request, status, errorData){
							alert("error code : " + request.status + "\n"
												  + "message : " + request.responseText
												  + "error : " + errorData);
						}
					});
            	
            }
        });
        
        // 매진구분
        $("#soldoutCk").click(function(){
        	// 클릭한 체크박스가 체크상태인지 체크해제상태인지 판단
            if( $("#soldoutCk").is(":checked") ){
            
					var goodsName =$("#goodsName").val().trim();// 공백제거후 담음
		            // 테이블 헤더에 있는 checkbox 클릭시
 	                if( $("#categoryCk").is(":checked") ){
	    				var lclCd =$("#lclCd").val();
	    				var mclCd =$("#mclCd").val();
	    				var sclCd =$("#sclCd").val();
	                }else{
	                	var lclCd = null;
	                	var mclCd = null;
	                	var sclCd = null;
	                }
	                if( $("#statusCk").is(":checked") ){
	                	var goodsStatus =$("#goodsStatus").val();
	                }else{
	                	var goodsStatus = null;
	                }
	                if( $("#soldoutCk").is(":checked") ){ 
	                	var soldout =$("#soldout").val();
	                }else{
	                	var soldout = null;
	                } 
					
						$.ajax({
							url:"checkTextSelectGoods.do",
							dataType : "json",
							data:{lclCd:lclCd,
								  mclCd:mclCd,
								  sclCd:sclCd,
								  goodsStatus:goodsStatus,
								  soldout:soldout, 
								  goodsName:goodsName},
								  
							success:function(data){
	
								$tableBody = $("#surveyListTable tbody");
								$tableBody.html("");
								
		  							for(var i in data){  
									    $("#surveyListTable").append('<tr>'+
												'<input id="gId" 	type = "hidden" value = "'+ data[i].gId +'">' + 
												'<input id="cateCd" type = "hidden" value = "'+ data[i].cateCd +'">' +
												'<input id="cateNm" type = "hidden" value = "'+ data[i].cateNm +'">' +
												'<input id="lclCd" 	type = "hidden" value = "'+ data[i].lclCd +'">' +
												'<input id="mclCd" 	type = "hidden" value = "'+ data[i].mclCd +'">' +
												'<input id="sclCd" 	type = "hidden" value = "'+ data[i].sclCd +'">' +
												'<input id="goodsName" 		type = "hidden" value = "'+ data[i].goodsName +'">' +
												'<input id="goodsPrice" 	type = "hidden" value = "'+ data[i].goodsPrice +'">' +
												'<input id="count" 			type = "hidden" value = "'+ data[i].count +'">' +
												'<input id="goodsStatus" 	type = "hidden" value = "'+ data[i].goodsStatus +'">' +
												'<input id="soldout" 		type = "hidden" value = "'+ data[i].soldout +'">' +
			    								'<td width="10%" align="center">'+ data[i].gId +'</td>'+
			    								'<td width="20%" align="left">'+'&nbsp;'+ data[i].goodsName +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].goodsPrice +'</td>'+ 
			    								'<td width="10%" align="center">'+ data[i].count +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].goodsStatus +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].soldout +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].registerDate +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].modifyDate +'</td>'+
			    							 '</tr>');
									} 
		  							if($("#gId").val() == null){
		  								$("#listCountSpan").html('상품 수량 : 0개');
		  							}else{
		  								$("#listCountSpan").html('상품 수량 : ' + data[0].listCount + '개');
		  							}
							},
							error:function(request, status, errorData){
								alert("error code : " + request.status + "\n"
													  + "message : " + request.responseText
													  + "error : " + errorData);
							}
						});
            }else{
            	$("#soldout option:eq(0)").prop("selected",true);
				var goodsName =$("#goodsName").val().trim();// 공백제거후 담음
	            // 테이블 헤더에 있는 checkbox 클릭시
	                if( $("#categoryCk").is(":checked") ){
    				var lclCd =$("#lclCd").val();
    				var mclCd =$("#mclCd").val();
    				var sclCd =$("#sclCd").val();
                }else{
                	var lclCd = null;
                	var mclCd = null;
                	var sclCd = null;
                }
                if( $("#statusCk").is(":checked") ){
                	var goodsStatus =$("#goodsStatus").val();
                }else{
                	var goodsStatus = null;
                }
                if( $("#soldoutCk").is(":checked") ){ 
                	var soldout =$("#soldout").val();
                }else{
                	var soldout = null;
                } 
				
					$.ajax({
						url:"checkTextSelectGoods.do",
						dataType : "json",
						data:{lclCd:lclCd,
							  mclCd:mclCd,
							  sclCd:sclCd,
							  goodsStatus:goodsStatus,
							  soldout:soldout, 
							  goodsName:goodsName},
							  
						success:function(data){

							$tableBody = $("#surveyListTable tbody");
							$tableBody.html("");
							
	  							for(var i in data){  
								    $("#surveyListTable").append('<tr>'+
											'<input id="gId" 	type = "hidden" value = "'+ data[i].gId +'">' + 
											'<input id="cateCd" type = "hidden" value = "'+ data[i].cateCd +'">' +
											'<input id="cateNm" type = "hidden" value = "'+ data[i].cateNm +'">' +
											'<input id="lclCd" 	type = "hidden" value = "'+ data[i].lclCd +'">' +
											'<input id="mclCd" 	type = "hidden" value = "'+ data[i].mclCd +'">' +
											'<input id="sclCd" 	type = "hidden" value = "'+ data[i].sclCd +'">' +
											'<input id="goodsName" 		type = "hidden" value = "'+ data[i].goodsName +'">' +
											'<input id="goodsPrice" 	type = "hidden" value = "'+ data[i].goodsPrice +'">' +
											'<input id="count" 			type = "hidden" value = "'+ data[i].count +'">' +
											'<input id="goodsStatus" 	type = "hidden" value = "'+ data[i].goodsStatus +'">' +
											'<input id="soldout" 		type = "hidden" value = "'+ data[i].soldout +'">' +
		    								'<td width="10%" align="center">'+ data[i].gId +'</td>'+
		    								'<td width="20%" align="left">'+'&nbsp;'+ data[i].goodsName +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].goodsPrice +'</td>'+ 
		    								'<td width="10%" align="center">'+ data[i].count +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].goodsStatus +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].soldout +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].registerDate +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].modifyDate +'</td>'+
		    							 '</tr>');
								} 
	  							if($("#gId").val() == null){
	  								$("#listCountSpan").html('상품 수량 : 0개');
	  							}else{
	  								$("#listCountSpan").html('상품 수량 : ' + data[0].listCount + '개');
	  							}
						},
						error:function(request, status, errorData){
							alert("error code : " + request.status + "\n"
												  + "message : " + request.responseText
												  + "error : " + errorData);
						}
					});
            
            }
        	
        });      
        
        
        
	});
	



// 검색조건 (상품 이름)------------------------------------------------------------------------------------------------------------------
		$(function(){
			$("#goodsName").on("keyup",function(){
				var goodsName =$(this).val().trim();// 공백제거후 담음
				
				/* var lclCd =$("#lclCd").val();
				var mclCd =$("#mclCd").val();
				var sclCd =$("#sclCd").val();
				var goodsStatus =$("#goodsStatus").val();
				var soldout =$("#soldout").val(); */

				
	            // 테이블 헤더에 있는 checkbox 클릭시
	                if( $("#categoryCk").is(":checked") ){
	                	var lclCd =$("#lclCd").val();
	    				var mclCd =$("#mclCd").val();
	    				var sclCd =$("#sclCd").val();
	                }else{
	                	var lclCd = null;
	                	var mclCd = null;
	                	var sclCd = null;
	                }
	                if( $("#statusCk").is(":checked") ){
	                	var goodsStatus =$("#goodsStatus").val();
	                }else{
	                	var goodsStatus = null;
	                }
	                if( $("#soldoutCk").is(":checked") ){ 
	                	var soldout =$("#soldout").val();
	                }else{
	                	var soldout = null;
	                }
				
				$.ajax({
					url:"checkTextSelectGoods.do",
					dataType : "json",
					data:{lclCd:lclCd,
						  mclCd:mclCd,
						  sclCd:sclCd,
						  goodsStatus:goodsStatus,
						  soldout:soldout, 
						  goodsName:goodsName},
					  /* data:{goodsName:goodsName,goodsStatus:goodsStatus}, */
						  
					success:function(data){

						$tableBody = $("#surveyListTable tbody");
						//$("#surveyListTable").remove();
						$tableBody.html("");
						
  							for(var i in data){  
							    $("#surveyListTable").append('<tr>'+
										'<input id="gId" 	type = "hidden" value = "'+ data[i].gId +'">' + 
										'<input id="cateCd" type = "hidden" value = "'+ data[i].cateCd +'">' +
										'<input id="cateNm" type = "hidden" value = "'+ data[i].cateNm +'">' +
										'<input id="lclCd" 	type = "hidden" value = "'+ data[i].lclCd +'">' +
										'<input id="mclCd" 	type = "hidden" value = "'+ data[i].mclCd +'">' +
										'<input id="sclCd" 	type = "hidden" value = "'+ data[i].sclCd +'">' +
										'<input id="goodsName" 		type = "hidden" value = "'+ data[i].goodsName +'">' +
										'<input id="goodsPrice" 	type = "hidden" value = "'+ data[i].goodsPrice +'">' +
										'<input id="count" 			type = "hidden" value = "'+ data[i].count +'">' +
										'<input id="goodsStatus" 	type = "hidden" value = "'+ data[i].goodsStatus +'">' +
										'<input id="soldout" 		type = "hidden" value = "'+ data[i].soldout +'">' +
	    								'<td width="10%" align="center">'+ data[i].gId +'</td>'+
	    								'<td width="20%" align="left">'+'&nbsp;'+ data[i].goodsName +'</td>'+
	    								'<td width="10%" align="center">'+ data[i].goodsPrice +'</td>'+ 
	    								'<td width="10%" align="center">'+ data[i].count +'</td>'+
	    								'<td width="10%" align="center">'+ data[i].goodsStatus +'</td>'+
	    								'<td width="10%" align="center">'+ data[i].soldout +'</td>'+
	    								'<td width="10%" align="center">'+ data[i].registerDate +'</td>'+
	    								'<td width="10%" align="center">'+ data[i].modifyDate +'</td>'+
	    							 '</tr>');
							} 
  							
  							if($("#gId").val() == null){
  								$("#listCountSpan").html('상품 수량 : 0개');
  							}else{
  								$("#listCountSpan").html('상품 수량 : ' + data[0].listCount + '개');
  							}
					},
					error:function(request, status, errorData){
						alert("error code : " + request.status + "\n"
											  + "message : " + request.responseText
											  + "error : " + errorData);
					}
				});
			});
		});		
		

// 검색조건 (카테고리 변경시)------------------------------------------------------------------------------------------------------------------
				$("#lclCd").on("change",function(){
					var lclCd =$(this).val();

					$("#mclCd option").remove();
					$("#sclCd option").remove();
					$("#cateCd").val("");
					$("#mclCd").append('<option value="">' + "선택하세요" +'</option>');
					$("#sclCd").append('<option value="">' + "선택하세요" +'</option>');
					$.ajax({
						url:"categoryCSelectBox.do",
						data:{lclCd:lclCd},
						success:function(data){
							for(var i=0; i<data.list.length; i++){
								$("#mclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
							}
//str 처음 조회시 카테고리 전체 조회---------------------------------------------					
							var mclCd = null;
							
							if(data.list.length == 0){	// 데이터 없으면 조회안되게
								return;
							}
							
							for(var i=0; i<1; i++){ // 최상단 값 얻기위해
								$("#mclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
								mclCd = data.list[i].cateCd;
							}	
							$.ajax({
								url:"categoryLSelectBox.do",
								data:{lclCd:lclCd, mclCd:mclCd},
								success:function(data){
									for(var i=0; i<data.list.length; i++){
										$("#sclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
									}
								},
								error:function(request, status, errorData){
									alert("error code : " + request.status + "\n"
														  + "message : " + request.responseText
														  + "error : " + errorData);
								}
							});
//end 처음 조회시 카테고리 전체 조회---------------------------------------------		
						},
						error:function(request, status, errorData){
							alert("error code : " + request.status + "\n"
												  + "message : " + request.responseText
												  + "error : " + errorData);
						}
					});	
				}); 
				
//---------------------------------------------------------------------------------------------------

			// (대)카테고리 조회
				$("#mclCd").on("change",function(){
					var lclCd =$("#lclCd").val();
					var mclCd =$(this).val();// 공백제거후 담음
					
					$("#sclCd option").remove();
					$("#cateCd").val("");
					$("#goodsName").val("");
					$("#goodsPrice").val("");
					$("#count").val("");
					$("#sclCd").append('<option value="">' + "선택하세요" +'</option>');
					
					$.ajax({
						url:"categoryLSelectBox.do",
						data:{lclCd:lclCd, mclCd:mclCd},
						success:function(data){

							for(var i=0; i<data.list.length; i++){
								$("#sclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
							}
						}, 
						error:function(request, status, errorData){
							alert("error code : " + request.status + "\n"
												  + "message : " + request.responseText
												  + "error : " + errorData);
						}
					});
				});	
		
			
			
			
			
			
// 검색조건 (체크버튼 클릭시)------------------------------------------------------------------------------------------------------------------		
		
	            // 상품 상태 변경
	            $("#goodsStatus").on("change",function(){
	            	var goodsName =$("#goodsName").val().trim();// 공백제거후 담음
		            // 테이블 헤더에 있는 checkbox 클릭시
 	                if( $("#categoryCk").is(":checked") ){
	    				var lclCd =$("#lclCd").val();
	    				var mclCd =$("#mclCd").val();
	    				var sclCd =$("#sclCd").val();
	                }else{
	                	var lclCd = null;
	                	var mclCd = null;
	                	var sclCd = null;
	                }
	                if( $("#statusCk").is(":checked") ){
	                	var goodsStatus =$("#goodsStatus").val();
	                }else{
	                	var goodsStatus = null;
	                }
	                if( $("#soldoutCk").is(":checked") ){ 
	                	var soldout =$("#soldout").val();
	                }else{
	                	var soldout = null;
	                } 
	                
	                if( $("#statusCk").is(":checked") ){
						$.ajax({
							url:"checkTextSelectGoods.do",
							dataType : "json",
							data:{lclCd:lclCd,
								  mclCd:mclCd,
								  sclCd:sclCd,
								  goodsStatus:goodsStatus,
								  soldout:soldout, 
								  goodsName:goodsName},
								  
							success:function(data){
	
								$tableBody = $("#surveyListTable tbody");
								$tableBody.html("");
								
		  							for(var i in data){  
									    $("#surveyListTable").append('<tr>'+
												'<input id="gId" 	type = "hidden" value = "'+ data[i].gId +'">' + 
												'<input id="cateCd" type = "hidden" value = "'+ data[i].cateCd +'">' +
												'<input id="cateNm" type = "hidden" value = "'+ data[i].cateNm +'">' +
												'<input id="lclCd" 	type = "hidden" value = "'+ data[i].lclCd +'">' +
												'<input id="mclCd" 	type = "hidden" value = "'+ data[i].mclCd +'">' +
												'<input id="sclCd" 	type = "hidden" value = "'+ data[i].sclCd +'">' +
												'<input id="goodsName" 		type = "hidden" value = "'+ data[i].goodsName +'">' +
												'<input id="goodsPrice" 	type = "hidden" value = "'+ data[i].goodsPrice +'">' +
												'<input id="count" 			type = "hidden" value = "'+ data[i].count +'">' +
												'<input id="goodsStatus" 	type = "hidden" value = "'+ data[i].goodsStatus +'">' +
												'<input id="soldout" 		type = "hidden" value = "'+ data[i].soldout +'">' +
			    								'<td width="10%" align="center">'+ data[i].gId +'</td>'+
			    								'<td width="20%" align="left">'+'&nbsp;'+ data[i].goodsName +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].goodsPrice +'</td>'+ 
			    								'<td width="10%" align="center">'+ data[i].count +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].goodsStatus +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].soldout +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].registerDate +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].modifyDate +'</td>'+
			    							 '</tr>');
									} 
		  							if($("#gId").val() == null){
		  								$("#listCountSpan").html('상품 수량 : 0개');
		  							}else{
		  								$("#listCountSpan").html('상품 수량 : ' + data[0].listCount + '개');
		  							}
							},
							error:function(request, status, errorData){
								alert("error code : " + request.status + "\n"
													  + "message : " + request.responseText
													  + "error : " + errorData);
							}
						});
	                }
	            });
	            
	            // 매진 구분 변경 
				$("#soldout").on("change",function(){
					var goodsName =$("#goodsName").val().trim();// 공백제거후 담음
		            // 테이블 헤더에 있는 checkbox 클릭시
 	                if( $("#categoryCk").is(":checked") ){
	    				var lclCd =$("#lclCd").val();
	    				var mclCd =$("#mclCd").val();
	    				var sclCd =$("#sclCd").val();
	                }else{
	                	var lclCd = null;
	                	var mclCd = null;
	                	var sclCd = null;
	                }
	                if( $("#statusCk").is(":checked") ){
	                	var goodsStatus =$("#goodsStatus").val();
	                }else{
	                	var goodsStatus = null;
	                }
	                if( $("#soldoutCk").is(":checked") ){ 
	                	var soldout =$("#soldout").val();
	                }else{
	                	var soldout = null;
	                } 
					
	                if( $("#soldoutCk").is(":checked") ){
						$.ajax({
							url:"checkTextSelectGoods.do",
							dataType : "json",
							data:{lclCd:lclCd,
								  mclCd:mclCd,
								  sclCd:sclCd,
								  goodsStatus:goodsStatus,
								  soldout:soldout, 
								  goodsName:goodsName},
								  
							success:function(data){
	
								$tableBody = $("#surveyListTable tbody");
								$tableBody.html("");
								
		  							for(var i in data){  
									    $("#surveyListTable").append('<tr>'+
												'<input id="gId" 	type = "hidden" value = "'+ data[i].gId +'">' + 
												'<input id="cateCd" type = "hidden" value = "'+ data[i].cateCd +'">' +
												'<input id="cateNm" type = "hidden" value = "'+ data[i].cateNm +'">' +
												'<input id="lclCd" 	type = "hidden" value = "'+ data[i].lclCd +'">' +
												'<input id="mclCd" 	type = "hidden" value = "'+ data[i].mclCd +'">' +
												'<input id="sclCd" 	type = "hidden" value = "'+ data[i].sclCd +'">' +
												'<input id="goodsName" 		type = "hidden" value = "'+ data[i].goodsName +'">' +
												'<input id="goodsPrice" 	type = "hidden" value = "'+ data[i].goodsPrice +'">' +
												'<input id="count" 			type = "hidden" value = "'+ data[i].count +'">' +
												'<input id="goodsStatus" 	type = "hidden" value = "'+ data[i].goodsStatus +'">' +
												'<input id="soldout" 		type = "hidden" value = "'+ data[i].soldout +'">' +
			    								'<td width="10%" align="center">'+ data[i].gId +'</td>'+
			    								'<td width="20%" align="left">'+'&nbsp;'+ data[i].goodsName +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].goodsPrice +'</td>'+ 
			    								'<td width="10%" align="center">'+ data[i].count +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].goodsStatus +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].soldout +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].registerDate +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].modifyDate +'</td>'+
			    							 '</tr>');
									} 
		  							if($("#gId").val() == null){
		  								$("#listCountSpan").html('상품 수량 : 0개');
		  							}else{
		  								$("#listCountSpan").html('상품 수량 : ' + data[0].listCount + '개');
		  							}
							},
							error:function(request, status, errorData){
								alert("error code : " + request.status + "\n"
													  + "message : " + request.responseText
													  + "error : " + errorData);
							}
						});
						
	                }
	            });
				
	            // 카테고리 변경시 	
				$(".category").on("change",function(){
					
					if( $("#categoryCk").is(":checked") ){
					
					var goodsName =$("#goodsName").val().trim();// 공백제거후 담음
		            // 테이블 헤더에 있는 checkbox 클릭시
 	                if( $("#categoryCk").is(":checked") ){
	    				var lclCd =$("#lclCd").val();
	    				var mclCd =$("#mclCd").val();
	    				var sclCd =$("#sclCd").val();
	                }else{
	                	var lclCd = null;
	                	var mclCd = null;
	                	var sclCd = null;
	                }
	                if( $("#statusCk").is(":checked") ){
	                	var goodsStatus =$("#goodsStatus").val();
	                }else{
	                	var goodsStatus = null;
	                }
	                if( $("#soldoutCk").is(":checked") ){ 
	                	var soldout =$("#soldout").val();
	                }else{
	                	var soldout = null;
	                } 
					
						$.ajax({
							url:"checkTextSelectGoods.do",
							dataType : "json",
							data:{lclCd:lclCd,
								  mclCd:mclCd,
								  sclCd:sclCd,
								  goodsStatus:goodsStatus,
								  soldout:soldout, 
								  goodsName:goodsName},
								  
							success:function(data){
	
								$tableBody = $("#surveyListTable tbody");
								$tableBody.html("");
								
		  							for(var i in data){  
									    $("#surveyListTable").append('<tr>'+
												'<input id="gId" 	type = "hidden" value = "'+ data[i].gId +'">' + 
												'<input id="cateCd" type = "hidden" value = "'+ data[i].cateCd +'">' +
												'<input id="cateNm" type = "hidden" value = "'+ data[i].cateNm +'">' +
												'<input id="lclCd" 	type = "hidden" value = "'+ data[i].lclCd +'">' +
												'<input id="mclCd" 	type = "hidden" value = "'+ data[i].mclCd +'">' +
												'<input id="sclCd" 	type = "hidden" value = "'+ data[i].sclCd +'">' +
												'<input id="goodsName" 		type = "hidden" value = "'+ data[i].goodsName +'">' +
												'<input id="goodsPrice" 	type = "hidden" value = "'+ data[i].goodsPrice +'">' +
												'<input id="count" 			type = "hidden" value = "'+ data[i].count +'">' +
												'<input id="goodsStatus" 	type = "hidden" value = "'+ data[i].goodsStatus +'">' +
												'<input id="soldout" 		type = "hidden" value = "'+ data[i].soldout +'">' +
			    								'<td width="10%" align="center">'+ data[i].gId +'</td>'+
			    								'<td width="20%" align="left">'+'&nbsp;'+ data[i].goodsName +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].goodsPrice +'</td>'+ 
			    								'<td width="10%" align="center">'+ data[i].count +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].goodsStatus +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].soldout +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].registerDate +'</td>'+
			    								'<td width="10%" align="center">'+ data[i].modifyDate +'</td>'+
			    							 '</tr>');
									} 
		  							if($("#gId").val() == null){
		  								$("#listCountSpan").html('상품 수량 : 0개');
		  							}else{
		  								$("#listCountSpan").html('상품 수량 : ' + data[0].listCount + '개');
		  							}
									
							},
							error:function(request, status, errorData){
								alert("error code : " + request.status + "\n"
													  + "message : " + request.responseText
													  + "error : " + errorData);
							}
						});
					}
	            });
	            
			// 조회버튼 클릭시
			 function goodsListSearch(){
				var goodsName =$("#goodsName").val().trim();// 공백제거후 담음
		            // 테이블 헤더에 있는 checkbox 클릭시
 	                if( $("#categoryCk").is(":checked") ){
	    				var lclCd =$("#lclCd").val();
	    				var mclCd =$("#mclCd").val();
	    				var sclCd =$("#sclCd").val();
	                }else{
	                	var lclCd = null;
	                	var mclCd = null;
	                	var sclCd = null;
	                }
	                if( $("#statusCk").is(":checked") ){
	                	var goodsStatus =$("#goodsStatus").val();
	                }else{
	                	var goodsStatus = null;
	                }
	                if( $("#soldoutCk").is(":checked") ){ 
	                	var soldout =$("#soldout").val();
	                }else{
	                	var soldout = null;
	                } 
					
					$.ajax({
						url:"checkTextSelectGoods.do",
						dataType : "json",
						data:{lclCd:lclCd,
							  mclCd:mclCd,
							  sclCd:sclCd,
							  goodsStatus:goodsStatus,
							  soldout:soldout, 
							  goodsName:goodsName},
							  
						success:function(data){

							$tableBody = $("#surveyListTable tbody");
							$tableBody.html("");
							
	  							for(var i in data){  
	  											
	  								
	  								
								    $("#surveyListTable").append('<tr>'+
											'<input id="gId" 	type = "hidden" value = "'+ data[i].gId +'">' + 
											'<input id="cateCd" type = "hidden" value = "'+ data[i].cateCd +'">' +
											'<input id="cateNm" type = "hidden" value = "'+ data[i].cateNm +'">' +
											'<input id="lclCd" 	type = "hidden" value = "'+ data[i].lclCd +'">' +
											'<input id="mclCd" 	type = "hidden" value = "'+ data[i].mclCd +'">' +
											'<input id="sclCd" 	type = "hidden" value = "'+ data[i].sclCd +'">' +
											'<input id="goodsName" 		type = "hidden" value = "'+ data[i].goodsName +'">' +
											'<input id="goodsPrice" 	type = "hidden" value = "'+ data[i].goodsPrice +'">' +
											'<input id="count" 			type = "hidden" value = "'+ data[i].count +'">' +
											'<input id="goodsStatus" 	type = "hidden" value = "'+ data[i].goodsStatus +'">' +
											'<input id="soldout" 		type = "hidden" value = "'+ data[i].soldout +'">' +
		    								'<td width="10%" align="center">'+ data[i].gId +'</td>'+
		    								'<td width="20%" align="left">'+'&nbsp;'+ data[i].goodsName +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].goodsPrice +'</td>'+ 
		    								'<td width="10%" align="center">'+ data[i].count +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].goodsStatus +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].soldout +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].registerDate +'</td>'+
		    								'<td width="10%" align="center">'+ data[i].modifyDate +'</td>'+
		    							 '</tr>');
								} 
								
						},
						error:function(request, status, errorData){
							alert("error code : " + request.status + "\n"
												  + "message : " + request.responseText
												  + "error : " + errorData);
						}
					});
			} 
	            
	            
   </script>
	
	
	
	
	<script>
	
	//str 카테고리 리스트 조회----------------------------------------------------------------------------------------------------------------------------------------------------
		$("#modlclCd").on("change",function(){
			var lclCd =$(this).val();
			$("#modmclCd option").remove();
			$("#modsclCd option").remove();
			$("#modnclCd option").remove();
			$("#modcateCd").val("");
	
			$("#modgoodsName").val("");
			$("#modgoodsPrice").val("");
			$("#modcount").val("");
			
			$.ajax({
				url:"categoryCSelectBox.do",
				data:{lclCd:lclCd},
				success:function(data){
					for(var i=0; i<data.list.length; i++){
						$("#modmclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
					}
	//str 처음 조회시 카테고리 전체 조회---------------------------------------------					
					var mclCd = null;
					
					if(data.list.length == 0){	// 데이터 없으면 조회안되게
						return;
					}
					
					for(var i=0; i<1; i++){
						$("#modmclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
						mclCd = data.list[i].cateCd;
					}	
					
					$.ajax({
						url:"categoryLSelectBox.do",
						data:{lclCd:lclCd, mclCd:mclCd},
						success:function(data){
							
							for(var i=0; i<data.list.length; i++){
								$("#modsclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
							}
							
							var sclCd = null;
							
							for(var i=0; i<1; i++){
								$("#modsclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
								sclCd = data.list[i].cateCd;
							}
							
							$.ajax({
								url:"categoryMSelectBox.do",
								data:{lclCd:lclCd, mclCd:mclCd, sclCd:sclCd},
								success:function(data){
	
									for(var i=0; i<data.list.length; i++){
										/* $("#nclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>'); */
										$("#modnclCd").append("<option value='" + data.list[i].cateCd + "' + cost_value='"+data.list[i].cateNm+"'>" + data.list[i].cateNm +'</option>');
									}		
	
										for(var i=0; i<data.list.length; i++){
										sizeLCd = data.list[i].lclCd;
										sizeMCd = data.list[i].mclCd;
										sizeSCd = data.list[i].sclCd;
									}	 
									
								},
								error:function(request, status, errorData){
									alert("error code : " + request.status + "\n"
														  + "message : " + request.responseText
														  + "error : " + errorData);
								}
							});
						},
						error:function(request, status, errorData){
							alert("error code : " + request.status + "\n"
												  + "message : " + request.responseText
												  + "error : " + errorData);
						}
					});
	//end 처음 조회시 카테고리 전체 조회---------------------------------------------					
				},
				error:function(request, status, errorData){
					alert("error code : " + request.status + "\n"
										  + "message : " + request.responseText
										  + "error : " + errorData);
				}
			});		
		}); 
	
	//---------------------------------------------------------------------------------------------------
	// (대)카테고리 조회
		$("#modmclCd").on("change",function(){
			var lclCd =$("#modlclCd").val();
			var mclCd =$(this).val();// 공백제거후 담음
			
			$("#modsclCd option").remove();
			$("#modnclCd option").remove();
			$("#modcateCd").val("");
			$("#modgoodsName").val("");
			$("#modgoodsPrice").val("");
			$("#modcount").val("");
			
			$.ajax({
				url:"categoryLSelectBox.do",
				data:{lclCd:lclCd, mclCd:mclCd},
				success:function(data){
					
					for(var i=0; i<data.list.length; i++){
						$("#modsclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
					}
					
					var sclCd = null;
					
					for(var i=0; i<1; i++){
						$("#modsclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
						sclCd = data.list[i].cateCd;
					}
					
					$.ajax({
						url:"categoryMSelectBox.do",
						data:{lclCd:lclCd, mclCd:mclCd, sclCd:sclCd},
						success:function(data){
	
							for(var i=0; i<data.list.length; i++){
								/* $("#nclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>'); */
								$("#modnclCd").append("<option value='" + data.list[i].cateCd + "' + cost_value='"+data.list[i].cateNm+"'>" + data.list[i].cateNm +'</option>');
							}		
								for(var i=0; i<1; i++){
								sizeLCd = data.list[i].lclCd;
								sizeMCd = data.list[i].mclCd;
								sizeSCd = data.list[i].sclCd;
							} 
						},
						error:function(request, status, errorData){
							alert("error code : " + request.status + "\n"
												  + "message : " + request.responseText
												  + "error : " + errorData);
						}
					});
					
					
	
				},
				error:function(request, status, errorData){
					alert("error code : " + request.status + "\n"
										  + "message : " + request.responseText
										  + "error : " + errorData);
				}
			});
		});		
	//---------------------------------------------------------------------------------------------------
	// (중)카테고리 조회
		$("#modsclCd").on("change",function(){
			var lclCd =$("#modlclCd").val();
			var mclCd =$("#modmclCd").val();// 공백제거후 담음
			var sclCd =$(this).val();// 공백제거후 담음
			
			var sizeCd = null;
			var sizeNm = null;
			
			$("#modnclCd option").remove();
			$("#modcateCd").val("");
			$("#modgoodsName").val("");
			$("#modgoodsPrice").val("");
			$("#modcount").val("");
			// click 이벤트 막기
	//		$("#sidDuplicateCheck").val(1);
			
			$.ajax({
				url:"categoryMSelectBox.do",
				data:{lclCd:lclCd, mclCd:mclCd, sclCd:sclCd},
				success:function(data){
	
					for(var i=0; i<data.list.length; i++){
						/* $("#nclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>'); */
						$("#modnclCd").append("<option value='" + data.list[i].cateCd + "' + cost_value='"+data.list[i].cateNm+"'>" + data.list[i].cateNm +'</option>');
					}			
						for(var i=0; i<1; i++){
						sizeLCd = data.list[i].lclCd;
						sizeMCd = data.list[i].mclCd;
						sizeSCd = data.list[i].sclCd;
					} 
	
				},
				error:function(request, status, errorData){
					alert("error code : " + request.status + "\n"
										  + "message : " + request.responseText
										  + "error : " + errorData);
				}
			});
		});			
	
//end 카테고리 리스트 조회----------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	
	
	
	
	
			
	
	//str 숫자만 입력할수 있게 --------------------------------------------------------------------------------

	function addCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	 
	//모든 콤마 제거
	function removeCommas(x) {
	    if(!x || x.length == 0) return "";
	    else return x.split(",").join("");
	}

	$("input:text[numberOnly]").on("focus", function() {
	    var x = $(this).val();
	    x = removeCommas(x);
	    $(this).val(x);
	}).on("focusout", function() {
	    var x = $(this).val();
	    if(x && x.length > 0) {
	        if(!$.isNumeric(x)) {
	            x = x.replace(/[^0-9]/g,"");
	        }
	        x = addCommas(x);
	        $(this).val(x);
	    }
	}).on("keyup", function() {
	    $(this).val($(this).val().replace(/[^0-9]/g,""));
	});
//end 숫자만 입력할수 있게 --------------------------------------------------------------------------------
	
	
	
	
	
//str 등록버튼 클릭시----------------------------------------------------------------------------------------------------
		function validate(){
			if($("#modgoodsName").val()==0){
				alert("사용 가능한 상품명을 입력해 주세요");
				$("#modgoodsName").focus();
			}else if($("#modgoodsPrice").val()==0){
				alert("사용 가능한 상품명을 입력해 주세요");
				$("#modgoodsName").focus();
			}else if($("#modcount").val()==0){
				alert("상품수량을 입력해 주세요");
				$("#modcount").focus();
			}else{
				var targetForm = $("#goodsUpdateForm :input");
				// ,콤마 제거 
				$.each(targetForm, function(index, elem){
				      $(this).val($(this).val().replace(/,/g, ''));
				});
				
				var gId = $("#modgId").val();
				// 현재 해당 상품이 판매 중인지 조회
				$.ajax({
					url:"selectsellGoodsList.do",
					data:{gId:gId},
					success:function(data){
						if(data.isUsable != true){	// 판매중인 상품이 있다면 팝업 메세지 띄워서 진행여부 확인
							//soldout();
							$("#goodsUpdateForm").submit();
						}else{
							// 데이터 없으면
							 $("#goodsUpdateForm").submit();
						}
					},
					error:function(request, status, errorData){
						alert("error code : " + request.status + "\n"
											  + "message : " + request.responseText
											  + "error : " + errorData);
					}
				});
			} 
		}


		function validateInsert(){
			
			if($("#modIgoodsName").val()==0){
				alert("사용 가능한 상품명을 입력해 주세요");
				$("#modIgoodsName").focus();
			}else if($("#modIgoodsPrice").val()==0){
				alert("상품가격을 입력해 주세요");
				$("#modIgoodsPrice").focus();
			}else if($("#modIcount").val()==0){
				alert("상품수량을 입력해 주세요");
				$("#modIcount").focus();
			}else if($("#idDuplicateCheck").val()==0){
				alert("사용 가능한 상품명을 입력해 주세요");
				$("#modIgoodsName").focus();
			}else{
				var targetForm = $("#goodsInsertForm :input");
				// ,콤마 제거
				$.each(targetForm, function(index, elem){
				      $(this).val($(this).val().replace(/,/g, ''));
				});
				
				$("#goodsInsertForm").submit();
			} 
		}	

//end 등록버튼 클릭시----------------------------------------------------------------------------------------------------

		/* modal 위에 modal 띄우기 힘들어서... function 주석처리 (무조건 판매중인 상품도 update 됨)*/
/* 		function soldout(){
			Modal.confirm({
				title: '수정 진행 여부',
				message: 'OK 클릭시 현재 판매중인 상품의 상태도 변경됩니다.',
				onConfirm: function() {
					$("#goodsUpdateForm").submit();
				    //alert('완료되었습니다');
		  		},
				  	onCancel: function() {
				    //alert('취소되었습니다.');
		  		},
			});
			return;
		} */
		
		$(function() {
		    var modal = document.getElementById("myModal");
		    var modal2 = document.getElementById("myModal2");
		    
		    $(".close").click(function(){
		      modal.style.display = "none";
		    });
		    
		    window.onclick = function(event) {
		         if (event.target == modal) {
		           modal.style.display = "none";
		         }
		    }

		    
		    $(".close").click(function(){
		    	modal2.style.display = "none";
		    });
			    
		    window.onclick = function(event) {
		         if (event.target == modal2) {
		           modal2.style.display = "none";
		         }
		    }
			    
		 });
		
		
		// 수정취소
		function closeModal(){
			
		    var modal = document.getElementById("myModal");
			modal.style.display = "none";
			
		}
		// 등록 취소
		function closeModal2(){
			
			var modal2 = document.getElementById("myModal2");
			modal2.style.display = "none";
		}	
		
		// 등록 버튼 
		function goodsInsert(){
			var modal = document.getElementById("myModal2");
			modal.style.display = "block";
			
			$("#modIgoodsName").val("");
			$("#modIgoodsPrice").val("");
			$("#modIcount").val("");
			
			$("#modIgoodsStatus option:eq(0)").prop("selected",true);
			$("#modIsoldout option:eq(1)").prop("selected",true);
			
			// 등록버튼 modal 초기화 작업..
			insertRemove();
			
		}	
		
		function insertRemove(){
			//$("#modIgoodsStatus option:eq(0)").prop("selected",true);
			//$("#modIsoldout option:eq(1)").prop("selected",true);
			
			
			$("#modIlclCd option:eq(0)").prop("selected",true);
			
			var lclCd ="1";
	 		$("#modImclCd option").remove();
			$("#modIsclCd option").remove();
			$("#modInclCd option").remove();
			$("#modIcateCd").val("");

			$.ajax({
				url:"categoryCSelectBox.do",
				data:{lclCd:lclCd},
				success:function(data){
					for(var i=0; i<data.list.length; i++){
						$("#modImclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
					}
	//str 처음 조회시 카테고리 전체 조회---------------------------------------------					
					var mclCd = null;
					
					if(data.list.length == 0){	// 데이터 없으면 조회안되게
						return;
					}
					
					for(var i=0; i<1; i++){
						$("#modImclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
						mclCd = data.list[i].cateCd;
					}	
					
					$.ajax({
						url:"categoryLSelectBox.do",
						data:{lclCd:lclCd, mclCd:mclCd},
						success:function(data){
							
							for(var i=0; i<data.list.length; i++){
								$("#modIsclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
							}
							
							var sclCd = null;
							
							for(var i=0; i<1; i++){
								$("#modIsclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
								sclCd = data.list[i].cateCd;
							}
							
							$.ajax({
								url:"categoryMSelectBox.do",
								data:{lclCd:lclCd, mclCd:mclCd, sclCd:sclCd},
								success:function(data){
	
									for(var i=0; i<data.list.length; i++){
										/* $("#nclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>'); */
										$("#modnclCd").append("<option value='" + data.list[i].cateCd + "' + cost_value='"+data.list[i].cateNm+"'>" + data.list[i].cateNm +'</option>');
									}		
	
										for(var i=0; i<data.list.length; i++){
										sizeLCd = data.list[i].lclCd;
										sizeMCd = data.list[i].mclCd;
										sizeSCd = data.list[i].sclCd;
									}	 
									
								},
								error:function(request, status, errorData){
									alert("error code : " + request.status + "\n"
														  + "message : " + request.responseText
														  + "error : " + errorData);
								}
							});
						},
						error:function(request, status, errorData){
							alert("error code : " + request.status + "\n"
												  + "message : " + request.responseText
												  + "error : " + errorData);
						}
					});
	//end 처음 조회시 카테고리 전체 조회---------------------------------------------					
				},
				error:function(request, status, errorData){
					alert("error code : " + request.status + "\n"
										  + "message : " + request.responseText
										  + "error : " + errorData);
				}
			});	
		}
		
		
		
		
		
		$(function(){
			$("#modIgoodsName").on("keyup",function(){
				var goodsName =$(this).val().trim();// 공백제거후 담음

				$.ajax({
					url:"selectGoodsNm.do",
					data:{goodsName:goodsName},
					success:function(data){
						if(data.isUsable == true){
							 
							$(".guide.error").hide(); // 이전값이 에러표시나면 숨켜주기위해
							//$(".guide.ok").show();
							$("#idDuplicateCheck").val(1);		
						}else{
							$(".guide.error").show();
							//$(".guide.ok").hide();
							$("#idDuplicateCheck").val(0);							
						}
						
					},
					error:function(request, status, errorData){
						alert("error code : " + request.status + "\n"
											  + "message : " + request.responseText
											  + "error : " + errorData);
					}
				});
			});
		});
		
		
		
		
		
		
		
		
		
		
		
		
		//str 카테고리 리스트 조회 --------------------------------------------------------------------------------
		$(function(){
			// 카테고리 조회
			$("#modIlclCd").on("change",function(){
				var lclCd =$(this).val();

				$("#modImclCd option").remove();
				$("#modIsclCd option").remove();
				$("#modInclCd option").remove();
				/* $("#modIcateCd").val("");
				$("#modIgoodsName").val("");
				$("#modIgoodsPrice").val("");
				$("#modIcount").val(""); */
				
				$.ajax({
					url:"categoryCSelectBox.do",
					data:{lclCd:lclCd},
					success:function(data){
						for(var i=0; i<data.list.length; i++){
							$("#modImclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
						}
	//str 처음 조회시 카테고리 전체 조회---------------------------------------------					
						var mclCd = null;
						
						for(var i=0; i<1; i++){
							$("#modImclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
							mclCd = data.list[i].cateCd;
						}	
						
						$.ajax({
							url:"categoryLSelectBox.do",
							data:{lclCd:lclCd, mclCd:mclCd},
							success:function(data){
								
								for(var i=0; i<data.list.length; i++){
									$("#modIsclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
								}
 								// 카테고리 변경시 하위 카테고리 조회
								var sclCd = null;
								
								for(var i=0; i<1; i++){
									$("#modIsclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
									sclCd = data.list[i].cateCd;
								}
								
								$.ajax({
									url:"categoryMSelectBox.do",
									data:{lclCd:lclCd, mclCd:mclCd, sclCd:sclCd},
									success:function(data){

										for(var i=0; i<data.list.length; i++){
											//$("#nclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
											$("#modInclCd").append("<option value='" + data.list[i].cateCd + "' + cost_value='"+data.list[i].cateNm+"'>" + data.list[i].cateNm +'</option>');
										}		

	 									for(var i=0; i<data.list.length; i++){
											//sizeCd = data.list[i].cateCd;
											//sizeNm = data.list[i].cateNm;
											//$("#cateCd").val(sizeCd);
											//$("#goodsName").val(sizeNm);
											sizeLCd = data.list[i].lclCd;
											sizeMCd = data.list[i].mclCd;
											sizeSCd = data.list[i].sclCd;
											
											$("#selectlclCd").val(sizeLCd);
											$("#selectmclCd").val(sizeMCd);
											$("#selectsclCd").val(sizeSCd);
										}	 
										
									},
									error:function(request, status, errorData){
										alert("error code : " + request.status + "\n"
															  + "message : " + request.responseText
															  + "error : " + errorData);
									}
								}); 
							},
							error:function(request, status, errorData){
								alert("error code : " + request.status + "\n"
													  + "message : " + request.responseText
													  + "error : " + errorData);
							}
						});
	//end 처음 조회시 카테고리 전체 조회---------------------------------------------					
					},
					error:function(request, status, errorData){
						alert("error code : " + request.status + "\n"
											  + "message : " + request.responseText
											  + "error : " + errorData);
					}
				});
			});
	//---------------------------------------------------------------------------------------------------
		// (대)카테고리 조회
			$("#modImclCd").on("change",function(){
				var lclCd =$("#modIlclCd").val();
				var mclCd =$(this).val();// 공백제거후 담음
				
				$("#modIsclCd option").remove();
				$("#modInclCd option").remove();
				/* $("#modIcateCd").val("");
				$("#modIgoodsName").val("");
				$("#modIgoodsPrice").val("");
				$("#modIcount").val(""); */
				
				$.ajax({
					url:"categoryLSelectBox.do",
					data:{lclCd:lclCd, mclCd:mclCd},
					success:function(data){
						
						for(var i=0; i<data.list.length; i++){
							$("#modIsclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
						}
					},
					error:function(request, status, errorData){
						alert("error code : " + request.status + "\n"
											  + "message : " + request.responseText
											  + "error : " + errorData);
					}
				});
			});	
	
			// (중)카테고리 조회
			$("#modIsclCd").on("change",function(){
				var lclCd =$("#modIlclCd").val();
				var mclCd =$("#modImclCd").val();// 공백제거후 담음
				var sclCd =$(this).val();// 공백제거후 담음
				
				var sizeCd = null;
				var sizeNm = null;
				
				$("#modInclCd option").remove();
				$("#cateCd").val("");
				/* $("#modIgoodsName").val("");
				$("#modIgoodsPrice").val("");
				$("#modIcount").val(""); */
				
				$.ajax({
					url:"categoryMSelectBox.do",
					data:{lclCd:lclCd, mclCd:mclCd, sclCd:sclCd},
					success:function(data){

						for(var i=0; i<data.list.length; i++){
							//$("#nclCd").append("<option value='" + data.list[i].cateCd + "'>" + data.list[i].cateNm +'</option>');
							$("modI#nclCd").append("<option value='" + data.list[i].cateCd + "' + cost_value='"+data.list[i].cateNm+"'>" + data.list[i].cateNm +'</option>');
						}			
	 					for(var i=0; i<1; i++){
						//	sizeCd = data.list[i].cateCd;
						//	sizeNm = data.list[i].cateNm;
						//	$("#cateCd").val(sizeCd);
						//	$("#goodsName").val(sizeNm);
							sizeLCd = data.list[i].lclCd;
							sizeMCd = data.list[i].mclCd;
							sizeSCd = data.list[i].sclCd;
							
							$("#selectlclCd").val(sizeLCd);
							$("#selectmclCd").val(sizeMCd);
							$("#selectsclCd").val(sizeSCd);
						} 

					},
					error:function(request, status, errorData){
						alert("error code : " + request.status + "\n"
											  + "message : " + request.responseText
											  + "error : " + errorData);
					}
				});
			});	
	
		});
	//end 카테고리 리스트 조회 --------------------------------------------------------------------------------

	</script>	
	
	<a id="TopButton" class="ScrollButton"><img src="resources/images/top.PNG"></a>
	<a id="BottomButton" class="ScrollButton"><img src="resources/images/boottom.PNG"></a>
	<a id="footer"></a>
	<!-- 위로 아래로 버튼 클릭시 이동 -->		
	<script>
	$(function() {
	    $(window).scroll(function() {
	        if ($(this).scrollTop() > 600) {
	            $('.ScrollButton').fadeIn();
	        } else {
	            $('.ScrollButton').fadeOut();
	        }
	    });
	        
	    $("#TopButton").click(function() {
	        $('html').animate({scrollTop : 0}, 600);
	    });
	 
	    $("#BottomButton").click(function() {
	        $('html').animate({scrollTop : ($('#footer').offset().top)}, 600);
	    });
	});

	</script>
	
	
	
	
	
	
	
	
<!-- ====================================================================================================================================== -->

<script type="text/javascript">
	
	// 출처 : http://tonks.tistory.com/79 
	// 에러가 나온다면, 여기에 댓글을 남겨주세요. 
	
	
	/* sortingNumber() : 숫자인 실수만으로 되어있을 때, 적용될 함수 */ 
	
	function sortingNumber( a , b ){  
	
	        if ( typeof a == "number" && typeof b == "number" ) return a - b; 
	
	        // 천단위 쉼표와 공백문자만 삭제하기.  
	        var a = ( a + "" ).replace( /[,\s\xA0]+/g , "" ); 
	        var b = ( b + "" ).replace( /[,\s\xA0]+/g , "" ); 
	
	        var numA = parseFloat( a ) + ""; 
	        var numB = parseFloat( b ) + ""; 
	
	        if ( numA == "NaN" || numB == "NaN" || a != numA || b != numB ) return false; 
	
	        return parseFloat( a ) - parseFloat( b ); 
	} 
	
	
	/* changeForSorting() : 문자열 바꾸기. */ 
	
	function changeForSorting( first , second ){  
	
	        // 문자열의 복사본 만들기. 
	        var a = first.toString().replace( /[\s\xA0]+/g , " " ); 
	        var b = second.toString().replace( /[\s\xA0]+/g , " " ); 
	
	        var change = { first : a, second : b }; 
	
	        if ( a.search( /\d/ ) < 0 || b.search( /\d/ ) < 0 || a.length == 0 || b.length == 0 ) return change; 
	
	        var regExp = /(\d),(\d)/g; // 천단위 쉼표를 찾기 위한 정규식. 
	
	        a = a.replace( regExp , "$1" + "$2" ); 
	        b = b.replace( regExp , "$1" + "$2" ); 
	
	        var unit = 0; 
	        var aNb = a + " " + b; 
	        var numbers = aNb.match( /\d+/g ); // 문자열에 들어있는 숫자 찾기 
	
	        for ( var x = 0; x < numbers.length; x++ ){ 
	
	                var length = numbers[ x ].length; 
	                if ( unit < length ) unit = length; 
	        } 
	
	        var addZero = function( string ){ // 숫자들의 단위 맞추기 
	
	                var match = string.match( /^0+/ ); 
	
	                if ( string.length == unit ) return ( match == null ) ? string : match + string; 
	
	                var zero = "0"; 
	
	                for ( var x = string.length; x < unit; x++ ) string = zero + string; 
	
	                return ( match == null ) ? string : match + string; 
	        }; 
	
	        change.first = a.replace( /\d+/g, addZero ); 
	        change.second = b.replace( /\d+/g, addZero ); 
	
	        return change; 
	} 
	
	
	/* byLocale() */ 
	
	function byLocale(){ 
	
	        var compare = function( a , b ){ 
	
	                var sorting = sortingNumber( a , b ); 
	
	                if ( typeof sorting == "number" ) return sorting; 
	
	                var change = changeForSorting( a , b ); 
	
	                var a = change.first; 
	                var b = change.second; 
	
	                return a.localeCompare( b ); 
	        }; 
	
	        var ascendingOrder = function( a , b ){  return compare( a , b );  }; 
	        var descendingOrder = function( a , b ){  return compare( b , a );  }; 
	
	        return { ascending : ascendingOrder, descending : descendingOrder }; 
	} 
	
	
	/* replacement() */ 
	 
	function replacement( parent ){  
	        var tagName = parent.tagName.toLowerCase(); 
	        if ( tagName == "table" ) parent = parent.tBodies[ 0 ]; 
	        tagName = parent.tagName.toLowerCase(); 
	        if ( tagName == "tbody" ) var children = parent.rows; 
	        else var children = parent.getElementsByTagName( "li" ); 
	
	        var replace = { 
	                order : byLocale(), 
	                index : false, 
	                array : function(){ 
	                        var array = [ ]; 
	                        for ( var x = 0; x < children.length; x++ ) array[ x ] = children[ x ]; 
	                        return array; 
	                }(), 
	                checkIndex : function( index ){ 
	                        if ( index ) this.index = parseInt( index, 10 ); 
	                        var tagName = parent.tagName.toLowerCase(); 
	                        if ( tagName == "tbody" && ! index ) this.index = 0; 
	                }, 
	                getText : function( child ){ 
	                        if ( this.index ) child = child.cells[ this.index ]; 
	                        return getTextByClone( child ); 
	                }, 
	                setChildren : function(){ 
	                        var array = this.array; 
	                        while ( parent.hasChildNodes() ) parent.removeChild( parent.firstChild ); 
	                        for ( var x = 0; x < array.length; x++ ) parent.appendChild( array[ x ] ); 
	                }, 
	                ascending : function( index ){ // 오름차순 
	                        this.checkIndex( index ); 
	                        var _self = this; 
	                        var order = this.order; 
	                        var ascending = function( a, b ){ 
	                                var a = _self.getText( a ); 
	                                var b = _self.getText( b ); 
	                                return order.ascending( a, b ); 
	                        }; 
	                        this.array.sort( ascending ); 
	                        this.setChildren(); 
	                }, 
	                descending : function( index ){ // 내림차순
	                        this.checkIndex( index ); 
	                        var _self = this; 
	                        var order = this.order; 
	                        var descending = function( a, b ){ 
	                                var a = _self.getText( a ); 
	                                var b = _self.getText( b ); 
	                                return order.descending( a, b ); 
	                        }; 
	                        this.array.sort( descending ); 
	                        this.setChildren(); 
	                } 
	        }; 
	        return replace; 
	} 
	
	function getTextByClone( tag ){  
	        var clone = tag.cloneNode( true ); // 태그의 복사본 만들기. 
	        var br = clone.getElementsByTagName( "br" ); 
	        while ( br[0] ){ 
	                var blank = document.createTextNode( " " ); 
	                clone.insertBefore( blank , br[0] ); 
	                clone.removeChild( br[0] ); 
	        } 
	        var isBlock = function( tag ){ 
	                var display = ""; 
	                if ( window.getComputedStyle ) display = window.getComputedStyle ( tag, "" )[ "display" ]; 
	                else display = tag.currentStyle[ "display" ]; 
	                return ( display == "block" ) ? true : false; 
	        }; 
	        var children = clone.getElementsByTagName( "*" ); 
	        for ( var x = 0; x < children.length; x++){ 
	                var child = children[ x ]; 
	                if ( ! ("value" in child) && isBlock(child) ) child.innerHTML = child.innerHTML + " "; 
	        } 
	        var textContent = ( "textContent" in clone ) ? clone.textContent : clone.innerText; 
	        return textContent; 
	} 
</script>

	<script type="text/javascript">
		var myTable = document.getElementById( "surveyListTable" ); 
		var replace = replacement( myTable ); 
		function sortTD( index ){    replace.ascending( index );    } 
		function reverseTD( index ){    replace.descending( index );    } 
	</script>

<!-- ====================================================================================================================================== -->
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>

<footer>
   <jsp:include page ="../common/footer.jsp"/>
</footer>

</html>
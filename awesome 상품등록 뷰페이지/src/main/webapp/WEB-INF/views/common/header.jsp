<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min-js"></script>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  
<style>
  .navbar{
  	background: #AE4951;
  }
  .navbar ul li a{
  	color: white;
  }
  
  .userCircle{
  	font-size: 25px;
  	color: white;
  }
  
  .userCircle:hover{
  
  	color: lightgray;
  	transition-duration: 0.4s;
  }

  .jumbotron{
  	padding: 0px;
  	background: white;
  }

  .nav-item{
  
  	display:inline-block;
  } 
  
  .navbar-nav {

 	 text-align: center;

	}
  .loginBtn{
  	outline:none;
  	border:none;
  	background: none;
  	margin:0px; 
  	pdding:0px;
  	margin-left:3px;
  	
  	border:none;
  }
  
  button:focus {
	 outline: none;    
	}
  
  
	/* textarea:focus, input:focus, input[type]:focus, .uneditable-input:focus {   
    border-color: rgba(229, 103, 23, 0.8);
    box-shadow: 0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6);
    outline: 0 none;
	
	} 	  */
  
  
  .loginInput:focus{
  	  border-color: rgba(229, 103, 23, 0.8);
    box-shadow: 0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(229, 103, 23, 0.6);
    outline: 0 none;
  }
  
  
  .signUp:hover{
  	cursor:pointer;
  	color: darkgray;
  	transition-duration: 0.3s;
  
  }


 .modal {
        text-align: center;
}
 
@media screen and (min-width: 768px) { 
        .modal:before {
                display: inline-block;
                vertical-align: top;
                content: " ";
                height: 100%;
        }
}
 
.modal-dialog {
        display: inline-block;
        text-align: left;
        vertical-align: top;
}

.loginModal-footer{
	justify-content: space-between;

}

.logo{
	color: white;
}

.logo:hover{
	cursor: pointer;
}
  
  </style>
</head>
<body>

<c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="application"/>

<nav class="navbar fixed-top navbar-expand-sm navbar-dark" >
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-center" id="collapsibleNavbar" >
    <ul class="navbar-nav" >
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>    
      <li class="nav-item" style= "line-height: 32px;" >
      	<span class="logo" style= "font-weight: bold; font-size: 20px; margin-left: 20px; margin-right: 20px;  vertical-align: middle" onclick= "goMain();">Awesome</span>
      </li>   
      <li class="nav-item">
        <a class="nav-link" href="#">SHOP</a>
      </li>

	<c:if test= "${loginUser == null }">  <!-- 로그인 하지 않은 상태라면  -->
      <li class="nav-item" style= "position: relative; top: 7px;" >
      		<button type="button"  class= loginBtn data-toggle="modal" data-target="#loginModal">
   				<i class="fa fa-user-circle userCircle" aria-hidden="true"  ></i>
			</button>
      </li>    
	</c:if>
    
	<c:if test= "${loginUser != null }">   <!-- 로그인을 한 상태라면  -->
	
		 <div class="dropdown">
		  <button type="button" class="btn" data-toggle="dropdown" style="outline:none;">
		    	<i class="fa fa-user-circle userCircle" aria-hidden="true"  ></i>
		  </button>
		  <div class="dropdown-menu">
		    <a class="dropdown-item" href="#">Link 1</a>
		    <a class="dropdown-item" href="#">Link 2</a>
		    <a class="dropdown-item" href="<%=request.getContextPath()%>/logout.me">logout</a>
		  </div>
		</div>
	  
	  <li class="nav-item" style= "position: relative; top: 7px;" >
      		<button type="button"  class= loginBtn data-toggle="modal" data-target="#logoutModal">
   				<i class="fa fa-user-circle userCircle" aria-hidden="true"  ></i>
			</button>
      </li>    
	</c:if>

    
    </ul>
  </div>  
</nav>
  
<!-- loignModal -->			      
	<form id= "loginForm" action="login.me" method="post">
  <div class="modal fade" id="loginModal">
    <div class="modal-dialog modal-dialog">
      <div class="modal-content" style="background: #ead6bd; width: 100%;">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Login</h4>
         
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        	<label>&nbsp;&nbsp;ID:</label>&nbsp;<input class= loginInput name="userId"> <br> 
        	<label>PW:</label>&nbsp;<input type="password" class= loginInput name="userPwd">  <button  class="btn btn-secondary" style="position: relative;bottom: 5px; left: 5px" >아이디/ 비번찾기 </button>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer loginModal-footer">
   		<span class= signUp onclick = "goSignUp();" >
   			<span style="float:left;"><i class="fa fa-sign-in" aria-hidden="true" style="font-size: 30px;"></i></span>
   			<span style="position: relative; left: 5px; top:2px;font-weight: bold;">회원가입</span>
   		</span>
      	<button type="button" class="btn btn-secondary"  style="background: #AE4951;" onclick="goLogin();">확인</button>
       <!--  <button type="button" class="btn btn-secondary"  style="background: #AE4951;" id="loginBtn">로그인</button> -->
        </div>
       
      </div>
    </div>
  </div>
  </form>
  
<!-- logoutModal -->
  <div class="modal fade" id="logoutModal">
    <div class="modal-dialog modal-dialog">
      <div class="modal-content" style="background: #ead6bd; width: 100%;">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h5 class="modal-title"><b>${loginUser.userName}님 환영합니다.</b></h5>
          
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        	 <button type="button" class="btn btn-secondary" style="background: #AE4951;" onclick= "goLogout();" >logout</button><br><br>
        	 <button type="button" class="btn btn-secondary" style="background: #AE4951;" >내정보보기</button>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="background: #AE4951;" >close</button>
        </div>
      </div>
    </div>
  </div>  
  
  
  
  
  

</body>
<script> 
function goSignUp() {
	
	location.href = "<%=request.getContextPath()%>/views/member/memberJoinForm.jsp";
}


function goMain(){
	
	location.href = "<%=request.getContextPath()%>/home.do";
	
}


function goLogin(){
	
	$("#loginForm").submit();
	
} 

function goLogout(){
	
	location.href = "<%=request.getContextPath()%>/logout.me";
}

</script>





</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="" />
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link href="https://fonts.googleapis.com/css?family=Raleway|Roboto" rel="stylesheet">
<meta charset="UTF-8">
<style>
.jumbotron{
	background-color:white;
	padding:0px;
	margin-left:20px;
	font-family: 'Raleway', sans-serif;
}
.affix {
    top: 0;
    width: 100%;
    z-index: 9999 !important;
    background-color:white;
    border-bottom:3px solid #f7f7f7;
}
/*******************************
* MODAL AS LEFT/RIGHT SIDEBAR
* Add "left" or "right" in modal parent div, after class="modal".
* Get free snippets on bootpen.com
*******************************/
	.modal.left .modal-dialog,
	.modal.right .modal-dialog {
		position: fixed;
		margin: auto;
		width: 320px;
		height: 100%;
		-webkit-transform: translate3d(0%, 0, 0);
		    -ms-transform: translate3d(0%, 0, 0);
		     -o-transform: translate3d(0%, 0, 0);
		        transform: translate3d(0%, 0, 0);
	}

	.modal.left .modal-content,
	.modal.right .modal-content {
		height: 100%;
		overflow-y: auto;
	}
	
	.modal.left .modal-body,
	.modal.right .modal-body {
		padding: 15px 15px 80px;
	}

/*Left*/
	.modal.left.fade .modal-dialog{
		left: -320px;
		-webkit-transition: opacity 0.3s linear, left 0.3s ease-out;
		   -moz-transition: opacity 0.3s linear, left 0.3s ease-out;
		     -o-transition: opacity 0.3s linear, left 0.3s ease-out;
		        transition: opacity 0.3s linear, left 0.3s ease-out;
	}
	
	.modal.left.fade.in .modal-dialog{
		left: 0;
	}

/* ----- MODAL STYLE ----- */
	.modal-content {
		border-radius: 0;
		border: none;
	}

	.modal-header {
		border-bottom-color: #EEEEEE;
		background-color: #FAFAFA;
	}

</style>
</head>
<body>

<nav class="navbar navbar">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="home.jsp">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Projects</a></li>
        <li><a href="/product/insert">상품 등록</a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
			
			<c:choose>
				<c:when test="${login == null }">
					<li><a href="/member/signUp"><span
						class="glyphicon glyphicon-user"> SignUp</span></a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-in"
							id="myBtn"> Login</span></a></li>
				</c:when>
				<c:otherwise>
					<li><a href="/member/myPage"><span
						class="glyphicon glyphicon-user"> mypage</span></a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-out"
							id="myBtn2"> Logout</span></a></li>
				</c:otherwise>
			</c:choose>

		</ul>
		
    </div>
  </div>
</nav>

<jsp:include page="../member/LoginPage.jsp"></jsp:include>
<jsp:include page="../member/LogoutPage.jsp"></jsp:include>

<div class="jumbotron">
  <h1>WASSA Company</h1>      
</div>



<nav class="navbar" data-spy="affix" data-offset-top="197">
  <ul class="nav navbar-nav">
    <li>
    	<div class="text-center">
			<button type="button" class="btn btn-lg" data-toggle="modal" data-target="#sideMenu" style="background-color:white;">
				<span class="glyphicon glyphicon-menu-hamburger"></span>
			</button>
		</div>
    </li>
    <li><a href="/PBoard/BEST">Best</a></li>
    <li><a href="/PBoard/top">TOP</a></li>
    <li><a href="/PBoard/outer">OUTER</a></li>
  </ul>
</nav>



<div class="container demo">	

	<!-- Modal -->
	<div class="modal left fade" id="sideMenu" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel"><strong>Assa Company</strong></h4>
				</div>

				<div class="modal-body">
					
					
					<!-- accordion -->
					<div class="panel-group" id="accordion">
				    <div class="panel panel-default">
				      <div class="panel-heading">
				        <h4 class="panel-title">
				          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Collapsible Group 1</a>
				        </h4>
				      </div>
				      <div id="collapse1" class="panel-collapse collapse in">
				        <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
				        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
				      </div>
				    </div>
				    <div class="panel panel-default">
				      <div class="panel-heading">
				        <h4 class="panel-title">
				          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Collapsible Group 2</a>
				        </h4>
				      </div>
				      <div id="collapse2" class="panel-collapse collapse">
				        <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
				        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
				      </div>
				    </div>
				    <div class="panel panel-default">
				      <div class="panel-heading">
				        <h4 class="panel-title">
				          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Collapsible Group 3</a>
				        </h4>
				      </div>
				      <div id="collapse3" class="panel-collapse collapse">
				        <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
				        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
				      </div>
				    </div>
				  </div> 
					
					
				</div>
				
			</div><!-- modal-content -->
		</div><!-- modal-dialog -->
	</div><!-- modal -->	
</div><!-- container -->

</body>
</html>
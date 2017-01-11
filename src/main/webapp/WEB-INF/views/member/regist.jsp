<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/assa.css" />
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="text-center">
		<h3>Assa</h3>
	</div>
	
	<form>
	
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
	    <input id="ID" type="text" class="form-control input-lg" name="ID" placeholder="아이디(이메일)">
	  </div><div class="col-xs-3"></div><br/>
	  
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
	    <input id="password" type="password" class="form-control input-lg" name="password" placeholder="비밀번호">
	  </div><div class="col-xs-3"></div><br/>
	  
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"><i class="glyphicon glyphicon-ok-circle"></i></span>
	    <input id="passcheck" type="password" class="form-control input-lg" name="passcheck" placeholder="비밀번호 확인">
	  </div><div class="col-xs-3"></div><br/>
	  
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
	    <input id="nick" type="text" class="form-control input-lg" name="nick" placeholder="닉네임">
	  </div><div class="col-xs-3"></div><br/>
	  
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
	    <input id="phone" type="text" class="form-control input-lg" name="phone" placeholder="전화번호">
	  </div><div class="col-xs-3"></div><br/>
	  
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-3">
	  	<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
	    <input id="post_code" type="text" class="form-control input-lg" name="post_code" placeholder="우편번호">
	  </div>
	  <div class="col-xs-3"><button type="button" class="btn btn-default btn-lg">우편번호 찾기</button></div>
	  <div class="col-xs-3"></div>
	  
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <input id="address1" type="text" class="form-control input-lg" name="address1" placeholder="주소">
	    <input id="address2" type="text" class="form-control input-lg" name="address2" placeholder="상세주소">
	  </div><div class="col-xs-3"></div>
	  
	</form>
</div>
</body>
</html>
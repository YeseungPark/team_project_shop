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
	<div class="text-center">
		<h3>Assa</h3>
	</div>
	
	<form>
	  <div class="input-group">
	    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
	    <input id="ID" type="text" class="form-control" name="ID" placeholder="아이디(이메일)">
	  </div><br/>
	  <div class="input-group">
	    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
	    <input id="password" type="password" class="form-control" name="password" placeholder="비밀번호">
	  </div><br/>
	  <div class="input-group">
	    <span class="input-group-addon"><i class="glyphicon glyphicon-ok-circle"></i></span>
	    <input id="passcheck" type="password" class="form-control" name="passcheck" placeholder="비밀번호 확인">
	  </div><br/>
	  <div class="input-group">
	    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
	    <input id="nick" type="text" class="form-control" name="nick" placeholder="닉네임">
	  </div><br/>
	  <div class="input-group">
	    <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
	    <input id="phone" type="text" class="form-control" name="phone" placeholder="전화번호">
	  </div><br/>
	</form>
</body>
</html>
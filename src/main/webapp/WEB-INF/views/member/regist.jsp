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
<script src="js/validation.js"></script>
</head>
<body>
	<div id="logo_regist">
		<a href="#">아웃싸이더</a>
	</div>
	
	<form id="regist_form"><!-- method="post" action="registMember.mem" -->
	<div class="regist">
		<label for="ID"><i class="material-icons" style="font-size:25px;color:#9ec3ff;">email</i></label>
		<input type="email" name="ID" id="ID" placeholder="아이디(이메일)"/><br/>
		<p class="alam" id="id_alam"></p>
	</div>
	
	<div class="regist">
		<label for="password"><i class="material-icons" style="font-size:25px;color:#9ec3ff;">lock</i></label>
		<input type="password" name="password" id="password" placeholder="비밀번호(영문, 숫자를 혼합하여 6~20자 이내)"/>
		<p class="alam" id="password_alam"></p>
	</div>
	
	<div class="regist">
		<label for="passcheck"><i class="material-icons" style="font-size:25px;color:#9ec3ff;">lock_outline</i></label>
		<input type="password" name="passcheck" id="passcheck" placeholder="비밀번호 확인"/>
		<p class="alam" id="passcheck_alam"></p>
	</div>
	
	<div class="regist">
		<label for="nick"><i class="material-icons" style="font-size:25px;color:#9ec3ff;">person</i></label>
		<input type="text" name="nick" id="nick" placeholder="별명(2~10자 특수문자 제외)"/>
		<p class="alam" id="nick_alam"></p>
	</div>
	
	<div class="regist">
		<label for="phone"><i class="material-icons" style="font-size:25px;color:#9ec3ff;">stay_primary_portrait</i></label>
		<input type="text" name="phone" id="phone" placeholder="휴대폰 번호"/>
		<p class="alam" id="phone_alam"></p>
	</div>
	<div id="regist_button">
		<button id="regist_member">회원가입</button>
	</div>
	</form>
</body>
</html>
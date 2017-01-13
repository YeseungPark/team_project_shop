<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="UTF-8">

<jsp:include page="myPage.jsp"></jsp:include>

<div class="container">
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8 text-center" style="border:1px solid black;margin-top:30px;padding:30px;">
  		<h5><strong>비밀번호 입력</strong></h5>
  		<p>외부로부터 고객님의 정보를 안전하게 보호하기 위하여 비밀번호를 다시 한번 확인합니다.<br/>
  		항상 비밀번호는 타인에게 노출되지 않도록 주의하여 주세요.
  		</p>
  		<br/>
  		<div class="col-sm-4"></div>
  		<div class="col-sm-4">
  		<input type="password" class="form-control" id="pass">
  		</div>
  		<div class="col-sm-4"></div>
  		<br/><br/>
  		<button class="btn btn-default" id="deleteBtn">확인</button>
  		<a href="/member/myPage"><button class="btn btn-default">취소</button></a>
  
  </div>
  <div class="col-sm-2"></div>
</div>
</div>

<jsp:include page="../include/footer.jsp"></jsp:include>

<script>

	$(document).ready(function(){
		$("#deleteBtn").click(function(){
			var password = $("#pass").val();
			
			if(password == null || password == ""){
				alert("비밀번호를 입력해주세요.");
				return false;
			}
			if(password != '${login.password}'){
				alert("비밀번호가 맞지 않습니다.");
				return false;
			}
			self.location="";
			
		})
	})
</script>
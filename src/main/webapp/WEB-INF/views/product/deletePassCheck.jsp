<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="UTF-8">
<jsp:include page="../include/header.jsp"></jsp:include>

<div class="container">
<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8 text-center" style="border:1px solid black;margin-top:30px;padding:30px;">
  		<p>상품을 삭제 하시겠습까?<br/></p>
  		<br/>
  	<form method="post" action="/product/delete">	
  		<div class="col-sm-4"></div>
  		<div class="col-sm-4">
  		<input type=hidden name="product_index" value="${index}"/>
  		<input type="password" class="form-control" id="pass">
  		</div>
  		<div class="col-sm-4"></div>
  		<br/><br/>
  		<button class="btn btn-default" id="deleteBtn">삭제</button>
  		<a href="/product/productUpdatePage"><button class="btn btn-default">취소</button></a>
  	</form>
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
			
		})
	})
</script>
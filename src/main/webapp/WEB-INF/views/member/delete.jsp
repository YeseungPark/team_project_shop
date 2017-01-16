<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta charset="UTF-8">

<jsp:include page="../include/header.jsp"></jsp:include>

<div class="container text-center">
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8" style="border:1px solid black;padding:30px;margin-top:30px;">
			<h4>정말 삭제하시겠습니까?</h4>
			<form id="delForm">
				<input type="hidden" name="ID" value="${login.ID }" />
			</form>
			<button id="delBtn" class="btn btn-danger">삭제</button>
			<button id="cancelBtn" class="btn btn-default">취소</button>
		</div>
		<div class="col-sm-2"></div>
	</div>
</div>



<jsp:include page="../include/footer.jsp"></jsp:include>
<script>
	$(function(){
		$("#delBtn").click(function(){
			$("#delForm").attr("method","post");
			$("#delForm").attr("action","/member/delete");
			$("#delForm").submit();
			
		})
		
		$("#cancelBtn").click(function(){
			self.location="/member/myPage";
			
		})
		
	})

</script>
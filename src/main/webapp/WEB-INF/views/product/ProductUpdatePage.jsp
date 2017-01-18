<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<meta charset="utf-8">

<script>
function modifyResult(){
	alert("수정 성공!");
}
</script>

<jsp:include page="../include/header.jsp"></jsp:include>
<div class="container">
	<div class="row text-center">
		<div class="col-md-2 label label-default">상품 이름</div>
		<div class="col-md-1 label label-default">가격</div>
		<div class="col-md-1 label label-default">포인트</div>
		<div class="col-md-1 label label-default">색상</div>
		<div class="col-md-1 label label-default">사이즈</div>
		<div class="col-md-1 label label-default">수량</div>
		<div class="col-md-1 label label-default">분류</div>
		<div class="col-md-1 label label-default">세부 분류</div>
		<div class="col-md-1 label label-default">비고</div>
		<div class="col-md-1 label label-default"><span class="glyphicon glyphicon-pencil"></span></div>
		<div class="col-md-1 label label-default"><span class="glyphicon glyphicon-trash"></span></div>
		
	</div>
		
	<c:forEach var="list" items="${productList}">
		<div class="row text-center">
			<form method="get" action="/product/ProductUpdate">			
			<div class="col-md-2"><input type="text" name="product_name" value="${list.product_name}" class="form-control"></div>
			<div class="col-md-1"><input type="text" name="product_price" value="${list.product_price}" class="form-control"></div>
			<div class="col-md-1"><input type="text" name="product_point" value="${list.product_point}" class="form-control"></div>
			<div class="col-md-1"><input type="text" name="product_color" value="${list.product_color}" class="form-control"></div>
			<div class="col-md-1"><input type="text" name="product_size" value="${list.product_size}" class="form-control"></div>
			<div class="col-md-1"><input type="text" name="product_stoke" value="${list.product_stoke}" class="form-control"></div>
			<div class="col-md-1"><input type="text" name="category" value="${list.category}" class="form-control"></div>
			<div class="col-md-1"><input type="text" name="category_detail" value="${list.category_detail}" class="form-control"></div>	
			<div class="col-md-1"><input type="text" name="content" value="${list.content}" class="form-control"></div>	
			<div class="col-md-1"><button type="submit" class="btn btn-info" onclick="modifyResult();">수정</button></div>
			<div class="col-md-1"><a href="/product/deletePage?product_index=${list.product_index}" class="btn btn-danger"> 삭 제 </a></div>
			<div class="col-md-1"><input type="hidden" name="product_index" value="${list.product_index}" readonly></div>		
			</form>
		</div>
	</c:forEach>
	<br>
	<a href="/product/productList" class="box"> 상품 목록 </a> &nbsp;
	<a href="/product/ProductUpdatePage" class="box"> 수정 목록 </a> &nbsp;
	<a href="/product/insert" class="box"> 상품 등록 </a> &nbsp;
	<a href="/pboard/write" class="box"> 게시판 등록 </a>
	

</div>
<jsp:include page="../include/footer.jsp"></jsp:include>
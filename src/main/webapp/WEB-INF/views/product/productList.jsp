<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<meta charset="utf-8">

<jsp:include page="../include/header.jsp"></jsp:include>
<div class="container">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>상품 이름</th>
				<th>가 격</th>
				<th>포인트</th>
				<th>색 상</th>
				<th>사이즈</th>
				<th>수량</th>
				<th>분 류</th>
				<th>세부 분류</th>
				<th>비 고</th>
			</tr>
		</thead>
		<tr>
			<c:forEach var="list" items="${productList}">
				<tr>
					<td>${list.product_name}</td>
					<td>${list.product_price}</td>
					<td>${list.product_point}</td>
					<td>${list.product_color}</td>
					<td>${list.product_size}</td>
					<td>${list.product_stoke}</td>
					<td>${list.category}</td>
					<td>${list.category_detail}</td>
					<td>${list.content}</td>
				</tr>
			</c:forEach>
		</tr>
	</table>
	<br>
	<a href="/product/productList" class="box"> 상품 목록 </a> &nbsp;
	<a href="/product/ProductUpdatePage" class="box"> 수정 목록 </a> &nbsp;
	<a href="/product/insert" class="box"> 상품 등록 </a> &nbsp;
	<a href="#" class="box"> 게시판 등록 </a>
</div>

<jsp:include page="../include/footer.jsp"></jsp:include>
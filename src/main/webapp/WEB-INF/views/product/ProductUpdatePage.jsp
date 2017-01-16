<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session = "false" %>

<!DOCTYPE html">
<html>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
function modifyResult(){
	alert("수정 성공!");
}
</script>
<style>
	.align-center { text-align: center; }

.box {
	padding: 10px 20px;
	background-color: #333;
	color: #f1f1f1;
	border-radius: 0;
	transition: .2s;
}

.box:hover, #box:focus {
	border: 1px solid #333;
	background-color: #fff;
	color: #000;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WASSA 수정등록</title>
</head>
<body>
	<table border = "1" class="align-center">
		<tr>
			<th>번호</th>
			<th>상품 이름</th>
			<th>가 격</th>
			<th>포인트</th>
			<th>색 상</th>
			<th>사이즈</th>
			<th>수량</th>
			<th>분  류</th>
			<th>세부 분류</th>
			<th>비 고</th>
			<th>수 정</th>
			<th>삭 제</th>
		</tr>
			<c:forEach var="list" items="${productList}">
				<form method="get" action="/product/ProductUpdate?product_index="${list.product_index}">
				<tr>
						<td><input type="text" name="product_index" value="${list.product_index}" readonly></td>
						<td><input type="text" name="product_name" value="${list.product_name}"></td>
						<td><input type="text" name="product_price" value="${list.product_price}"></td>
						<td><input type="text" name="product_point" value="${list.product_point}"></td>
						<td><input type="text" name="product_color" value="${list.product_color}"></td>
						<td><input type="text" name="product_size" value="${list.product_size}"></td>
						<td><input type="text" name="product_stoke" value="${list.product_stoke}"></td>
						<td><input type="text" name="category" value="${list.category}"></td>	
						<td><input type="text" name="category_detail" value="${list.category_detail}"></td>	
						<td><input type="text" name="content" value="${list.content}"></td>	
						<td><button type="submit" onclick="modifyResult();">수정</button></td>
						<td><a href="/product/deletePage?product_index="${list.product_index}"> 삭 제 </a></td>
					
				</tr>
				</form>
			</c:forEach>
	</table>
	<br>
	<a href="/product/productList" class="box"> 상품 목록 </a> &nbsp;
	<a href="/product/ProductUpdatePage" class="box"> 수정 목록 </a> &nbsp;
	<a href="/product/insert" class="box"> 상품 등록 </a> &nbsp;
	<a href="#" class="box"> 게시판 등록 </a>
	
</body>
</html>
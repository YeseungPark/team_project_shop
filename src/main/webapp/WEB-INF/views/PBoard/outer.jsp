<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WASSA BEST BOARD</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<jsp:include page="../include/header.jsp"></jsp:include>

<style>
.btn {
	padding: 10px 20px;
	background-color: #333;
	color: #f1f1f1;
	border-radius: 0;
	transition: .2s;
}

.btn:hover, .btn:focus {
	border: 1px solid #333;
	background-color: #fff;
	color: #000;
}
</style>

<body>
	<c:forEach var="item" items="${outerList}">
		<div class="row text-center">
			<div class="col-sm-4">
				<div class="thumbnail">
					<a href="boardDetail?num=${item.bp_index}"><img src="#"
						alt="${item.product_name}" width="400" height="300"></a>
					<p>
						<strong>${item.product_name}</strong>
					</p>
					<p>${item.product_price}</p>
					<a href="#"><button class="btn">장바구니 담기</button></a>
				</div>
			</div>
		</div>
	</c:forEach>
</body>
</html>
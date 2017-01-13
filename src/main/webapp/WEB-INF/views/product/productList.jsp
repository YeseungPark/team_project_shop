<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session = "false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PRODUCT LIST</title>
</head>
<body>
	<table>
		<tr>
			<th>상품 이름</th>
			<th>상품 가격</th>
		</tr>
		<tr>
			<c:forEach var="list" items="${productList}">
				<tr>
					<td>${list.product_name}</td>
					<td>${list.product_price}</td>
				</tr>
			</c:forEach>
		</tr>
	</table>
</body>
</html>
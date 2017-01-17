<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<meta charset="utf-8">

<jsp:include page="../include/header.jsp"></jsp:include>

<div class="container">
	<table class="table">
		<tr>
			<td>제목</td>
			<td>대분류</td>
			<td>소분류</td>
		</tr>
		<c:forEach var="lists" items="${sbList}">
			<tr>
				<td>${lists.subject }</td>
				<td>${lists.category }</td>
				<td>${lists.category_detail }</td>
			</tr>
		</c:forEach>
	</table>
</div>

<jsp:include page="../include/footer.jsp"></jsp:include>


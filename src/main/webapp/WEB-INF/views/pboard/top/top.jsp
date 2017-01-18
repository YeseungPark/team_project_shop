<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<meta charset="utf-8">
<style>
.thumbnail img { 
	min-height:300px; height:300px; 
}
.category_detail{
	margin-bottom:20px;
}
.category_detail a{
    padding:20px;    
}

</style>
<jsp:include page="../../include/header.jsp"></jsp:include>

<div class="container">
	<div class="row category_detail">
		<a href="#">TEE</a><a href="#">BLOUSE</a><a href="#">SHIRTS</a><a href="#">KNIT</a>
	</div>
	
	<div class="row">
	<c:forEach var="lists" items="${list}">
		<div class="col-md-3">
			<div class="thumbnail">
				<a href="/pboard/read?bp_index=${lists.bp_index }">
					<img src="/resources/FileUpload/${lists.thumbnail }" alt="img"><br/>
					<p style='line-height:0px'><small>${lists.product_name }</small></p>
					<p style='line-height:0px'><small><fmt:formatNumber value="${lists.product_price }" pattern="₩#,###.##"/></small></p>
				</a>
			</div>
		</div>
	</c:forEach>
	</div>
	<div class="row">
	<div class="text-center">
		<ul class="pagination">

			<c:if test="${pageMaker.prev}">
				<li><a
					href="/pboard/top${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li
					<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
					<a href="/pboard/top${pageMaker.makeQuery(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a
					href="/pboard/top${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
			</c:if>

		</ul>
	</div>
	</div>
</div>

<jsp:include page="../../include/footer.jsp"></jsp:include>


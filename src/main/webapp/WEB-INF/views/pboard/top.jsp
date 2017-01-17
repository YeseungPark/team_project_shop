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
</style>
<jsp:include page="../include/header.jsp"></jsp:include>

<div class="container">
	
	<c:forEach var="lists" items="${list}">
		<div class="col-md-3">
			<div class="thumbnail">
				<a href="#">
					<img src="/resources/FileUpload/${lists.thumbnail }" alt="img"><br/>
					<p style='line-height:0px'><small>${lists.subject }</small></p>
					<p style='line-height:0px'><small>${lists.reg_date }</small></p>
				</a>
			</div>
		</div>
	</c:forEach>
	
	
	<div class="text-center">
			<ul class="pagination">

				<c:if test="${pageMaker.prev}">
					<li><a
						href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
				</c:if>

				<c:forEach begin="${pageMaker.startPage }"
					end="${pageMaker.endPage }" var="idx">
					<li
						<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
						<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
					</li>
				</c:forEach>

				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<li><a
						href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
				</c:if>

			</ul>
		</div>
</div>

<jsp:include page="../include/footer.jsp"></jsp:include>


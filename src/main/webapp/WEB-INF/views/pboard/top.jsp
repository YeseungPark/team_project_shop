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
	
	<c:forEach var="lists" items="${topList}">
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
</div>

<jsp:include page="../include/footer.jsp"></jsp:include>


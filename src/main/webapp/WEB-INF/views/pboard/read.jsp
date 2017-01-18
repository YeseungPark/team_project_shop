<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
#sideAffix.affix {
    top: 54;
    width: 100%;
    left:73%;
    z-index: 99999 !important;
    background-color:white;
}​
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<meta charset="UTF-8">

<jsp:include page="../include/header.jsp"></jsp:include>

<div class="container">
	<div class="row">
		
		<!-- 상품 이미지 (read 페이지 왼쪽) -->
		<div class="col-md-9" style="max-width:100%;white-space: nowrap;overflow: hidden; ">
			<c:forEach items="${files }" var="file">
				<div style="margin:10px 0px;text-align:center">
					<img src="/resources/FileUpload/${file }" alt="img" style="max-width:100%" /><br/>
				</div>
			</c:forEach>
		</div>
		<!-- 상품 이미지 끝 -->
		
		<!-- sidebar (read 페이지 오른쪽) -->
		<div class="col-md-3" id="sideAffix" data-spy="affix" data-offset-top="197" style="line-height:0px">
			<h3 style="color:#6d6d6d">${productList.product_name }</h3>
			<h5><fmt:formatNumber value="${productList.product_price }" pattern="₩#,###.##"/></h5>
			<h6><small>save</small>&nbsp;${productList.product_point }&nbsp;<small>point</small></h6>
			<pre style="max-width:300px;min-height:300px;">${boardList.content }</pre>
			<c:forEach items="${ }">
				<select class="form-control">
					<option></option>
					<option></option>
				</select>
			</c:forEach>
		</div>
		<!-- sidebar 끝 -->
		
		
	</div>
</div>
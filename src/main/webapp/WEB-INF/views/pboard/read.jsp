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
}
.btn.btn-square {
  border-radius: 0;
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
			<jsp:include page="../reply/replyTest.jsp">
				<jsp:param value="${boardList.bp_index }" name="bp_index"/>
				<jsp:param value="${boardList.category }" name="category"/>
			</jsp:include>
		</div>
		<!-- 상품 이미지 끝 -->
		
		<!-- sidebar (read 페이지 오른쪽) -->
		<div class="col-md-3" id="sideAffix" data-spy="affix" data-offset-top="197" style="line-height:0px">
			<h3 style="color:#6d6d6d">${boardList.product_name }</h3>
			<h5><fmt:formatNumber value="${boardList.product_price }" pattern="₩#,###.##"/></h5>
			<h6><small>save</small>&nbsp;${boardList.product_point }&nbsp;<small>point</small></h6>
			<pre style="max-width:300px;min-height:300px;">${boardList.content }</pre>
			
			<form>
				<select class="form-control" style="max-width:300px;" name="product_size" id="product_size">
					<option>::SIZE::</option>
					<c:forEach items="${productList }" var="product">
						<option value="${product.product_size }">${product.product_size }</option>
					</c:forEach>
				</select>
				<select class="form-control" style="max-width:300px;" name="product_color" id="product_color">
					<option>::COLOR::</option>
					<c:forEach items="${productList }" var="product">
						<option value="${product.product_color }">${product.product_color }</option>
					</c:forEach>
				</select>
				<input type="hidden" name="product_name" value="${boardList.product_name }" />
				
				
				<div class="input-group" style="max-width:300px;">
				  <div class="input-group-btn">
			        <button class="btn btn-default" id="minus_btn" type="button"><i class="glyphicon glyphicon-minus"></i></button>
			      </div>
			      <input type="text" name="order_number" id="order_number" class="form-control text-center" placeholder="주문 수량"/>
			      <div class="input-group-btn">
			        <button class="btn btn-default" id="plus_btn" type="button"><i class="glyphicon glyphicon-plus"></i></button>
			      </div>
			    </div>	
			   		
			
				<button type="button" class="btn btn-primary btn-square" style="width:100%;max-width:300px;margin:10px 0;">ADD TO CART</button><br/>
				<button type="button" class="btn btn-default btn-square" style="width:100%;max-width:300px;">BUY IT NOW</button>
				
			</form>
		</div>
		<!-- sidebar 끝 -->
		
		
	</div>
</div>
<script>
	$(function(){
		$("#minus_btn").click(function(){
			var order_number_form = $("#order_number");
			var order_number = $("#order_number").val();
			
			if(order_number <= 1){
				order_number_form.val("1");
				return false;
			}else{
				order_number_form.val(parseInt(order_number)-1);
			}
			
		}) /* end minus_btn */
		
		$("#plus_btn").click(function(){
			var order_number = $("#order_number").val();
			var product_name = '${boardList.product_name}';
			var product_color = $("#product_color option:selected").val();
			var product_size = $("#product_size option:selected").val();

			$.ajax({
				   url:"/pboard/getProductStock",
				   type:"get",
				   data: {
				   		product_name:product_name,
				   		product_color:product_color,
				   		product_size:product_size
				   },
				   dataType:"text",
				   success:function(result){
					   
					   if(parseInt(order_number)+1>parseInt(result)){
						   alert("재고 수량이 모자랍니다.");
						   return false;
					   }
					   if(isNaN(order_number) || $("#order_number").val() == ""){
							$("#order_number").val(1);
							return false;
						}else{
							$("#order_number").val(parseInt(order_number)+1);
						}
				   }
			  });
			
			
		}) /* end plus_btn */

	})/* end jquery */
</script>
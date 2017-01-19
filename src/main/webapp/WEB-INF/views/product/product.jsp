<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="../include/header.jsp"></jsp:include>

<div class="container">
	<a href="/product/productList" class="box"> 상품 목록 </a> &nbsp;
	<a href="/product/ProductUpdatePage" class="box"> 수정 목록 </a> &nbsp;
	<a href="/product/insert" class="box"> 상품 등록 </a> &nbsp;
	<a href="/pboard/write" class="box"> 게시판 등록 </a>
	
	<div class="text-center">
		<h3>WASSA 상품등록</h3>
	</div>
	
	<form method="post" action="/product/insert">
	  <div class="row">
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"></span>
	    <input id="product_name" type="text" class="form-control input-lg" name="product_name" placeholder="상품명">
	  </div><div class="col-xs-3"></div><br/>
	  </div>
	  
	  <div class="row">
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"></span>
	    <input id="product_price" type="text" class="form-control input-lg" name="product_price" placeholder="상품 가격">
	  </div><div class="col-xs-3"></div><br/>
	  </div>
	  
	  <div class="row">
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"></span>
	    <input id="product_point" type="text" class="form-control input-lg" name="product_point" placeholder="상품 포인트">
	  </div><div class="col-xs-3"></div><br/>
	  </div>
	  
	  <div class="row">
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"></span>
	    <input id="product_color" type="text" class="form-control input-lg" name="product_color" placeholder="상품 색상">
	  </div><div class="col-xs-3"></div><br/>
	  </div>
	  
	  <div class="row">
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"></span>
	    <input id="product_size" type="text" class="form-control input-lg" name="product_size" placeholder="상품 사이즈">
	  </div><div class="col-xs-3"></div><br/>
	  </div>
	  
	  <div class="row">
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"></span>
	    <input id="product_stoke" type="text" class="form-control input-lg" name="product_stoke" placeholder="상품 수량">
	  </div><div class="col-xs-3"></div><br/>
	  </div>
	  
	  <div class="row">
	  <div class="col-xs-3"></div>
	  <div class="form-group col-xs-6">
	  	<label for="category">상품 분류</label>
	    <select class="form-control" name="category" id="category">
	    	<option value="top" selected>TOP</option>
	        <option value="outer">OUTER</option>
	        <option value="dress">DRESS</option>
	        <option value="bottom">BOTTOM</option>
	        <option value="sb">SHOES&BAG</option>
	        <option value="acc">ACC</option>
	    </select>
	  </div><div class="col-xs-3"></div><br/>
	 </div>
	 
	 <div class="row">
	  <div class="col-xs-3"></div>
	  <div class="form-group col-xs-6">
	  	<label for="category">상품 세부 분류</label>
	    <select class="form-control" name="category_detail" id="category_detail">
	    	<option value="tee">TEE</option>
	        <option value="blouse">BLOUSE</option>
	        <option value="shirts">SHIRTS</option>
	        <option value="knit">KNIT</option>
	    </select>
	  </div><div class="col-xs-3"></div><br/>
	 </div>
	  
	  <div class="row">
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"></span>
	    <input id="content" type="text" class="form-control input-lg" name="content" placeholder="비 고">
	  </div><div class="col-xs-3"></div><br/>
	  </div>
	  
	  <div class="row">
	  <div class="col-xs-3"></div>
	  <button type="submit" class="btn btn-primary btn-lg col-xs-6"> 상품 등록 </button>
	  <div class="col-xs-3"></div>
	  </div>
	</form>
	
</div>

<jsp:include page="../include/footer.jsp"></jsp:include>
<script>
$(function(){
	$("#category").change(function(){
		
		var category = $("#category option:selected").val();
		var target = $("#category_detail");
		var str = "";
		if(category == 'top'){
			target.html("");
			str = 	        '<option value="tee">TEE</option>'+
					        '<option value="blouse">BLOUSE</option>'+
					        '<option value="shirts">SHIRTS</option>'+
					        '<option value="knit">KNIT</option>';
			target.html(str); 
			getProduct();
		}
		if(category == 'outer'){
			target.html("");
			str =   '<option value="coat">COAT</option>'+
			        '<option value="jacket">JACKET</option>'+
			        '<option value="jumper">JUMPER</option>'+
			        '<option value="cardigan">CARDIGAN</option>';
			target.html(str);
			getProduct();
		}
		if(category == 'dress'){
			target.html("");
			str =   '<option value="solid">SOLID</option>'+
			        '<option value="pattern">PATTERN</option>'+
			        '<option value="set">SET</option>';
			target.html(str);
			getProduct();
		}
		if(category == 'bottom'){
			target.html("");
			str =   '<option value="skirt">SKIRT</option>'+
			        '<option value="pants">PANTS</option>';
			target.html(str);
			getProduct();
		}
		if(category == 'sb'){
			target.html("");
			str =   '<option value="shoes">SHOES</option>'+
			        '<option value="bag">BAG</option>';
			target.html(str);
			getProduct();
		}
		if(category == 'acc'){
			target.html("");
			str =   '<option value="silver">SILVER</option>'+
			        '<option value="jewelry">JEWELRY</option>'+
			        '<option value="hairacc">HAIR ACC</option>'+
			        '<option value="ch">CAP&HAT</option>'+
			        '<option value="sm">SCARF&MUFFLER</option>'+
			        '<option value="st">SOCKS&TIGHTS</option>'+
			        '<option value="glasses">GLASSES</option>';
			target.html(str);
			getProduct();
		}
	})
	
	
	
	
})
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/assa.css" />
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

</head>
<body>
<div class="container">
	<div class="text-center">
		<h3>WASSA 상품등록</h3>
	</div>
	
	<form method="post" action="/product/insert">
	
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"></span>
	    <input id="product_name" type="text" class="form-control input-lg" name="product_name" placeholder="상품명">
	  </div><div class="col-xs-3"></div><br/>
	  
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"></span>
	    <input id="product_price" type="text" class="form-control input-lg" name="product_price" placeholder="상품 가격">
	  </div><div class="col-xs-3"></div><br/>
	  
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"></span>
	    <input id="product_point" type="text" class="form-control input-lg" name="product_point" placeholder="상품 포인트">
	  </div><div class="col-xs-3"></div><br/>
	  
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"></span>
	    <input id="product_color" type="text" class="form-control input-lg" name="product_color" placeholder="상품 색상">
	  </div><div class="col-xs-3"></div><br/>
	  
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"></span>
	    <input id="product_size" type="text" class="form-control input-lg" name="product_size" placeholder="상품 사이즈">
	  </div><div class="col-xs-3"></div><br/>
	  
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"></span>
	    <input id="product_stoke" type="text" class="form-control input-lg" name="product_stoke" placeholder="상품 수량">
	  </div><div class="col-xs-3"></div><br/>
	
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"></span>
	    <input id="category" type="text" class="form-control input-lg" name="category" placeholder="상품 분류">
	  </div><div class="col-xs-3"></div><br/>
	 
	 <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"></span>
	    <input id="category_detail" type="text" class="form-control input-lg" name="category_detail" placeholder="상품 세부 분류">
	  </div><div class="col-xs-3"></div><br/>
	  	  
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"></span>
	    <input id="content" type="text" class="form-control input-lg" name="content" placeholder="비 고">
	  </div><div class="col-xs-3"></div><br/>
	  	 
	  <div class="col-xs-3"></div>
	  <button type="submit" class="btn btn-primary btn-lg col-xs-6"> 상품 등록 </button>
	</form>
</div>
</body>
</html>

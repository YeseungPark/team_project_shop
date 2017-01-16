<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/ckeditor/ckeditor.js"></script>
<meta charset="UTF-8">

<jsp:include page="../include/header.jsp"></jsp:include>

<div class="container">
	<form action="/pboard/write" method="post">
		<table class="table">
			<tr>
				<td>글제목</td>
				<td colspan="3"><input type="text" name="subject"
					maxlength="50" size="50"></td>
			</tr>
			<tr>
				<td>분류</td>
				<td>
					<div class="form-group">				      	
				      	<select class="form-control" id="category">
					        <option value="top" selected>TOP</option>
					        <option value="outer">OUTER</option>
					        <option value="dress">DRESS</option>
					        <option value="bottom">BOTTOM</option>
					        <option value="sb">SHOES&BAG</option>
					        <option value="acc">ACC</option>
				      	</select>
				    </div>
				</td>
			</tr>
			<tr>
				<td>세부분류</td>
				<td>
					<div class="form-group" id="category_detail_form">				      	
				      	<select class="form-control" id="category_detail">
					        <option value="tee" selected>TEE</option>
					        <option value="blouse">BLOUSE</option>
					        <option value="shirts">SHIRTS</option>
					        <option value="knit">KNIT</option>
				      	</select>
				    </div>
				</td>
			</tr>
			<tr>
				<td>본문</td>
				<td colspan="3"><textarea name="content" class="ckeditor"></textarea></td>
			</tr>
			<tr>
				<td colspan="4" align="right"><input type="submit"
					class="btn btn-default" value="글 올리기"></td>
			</tr>
		</table>
	</form>
</div>

<jsp:include page="../include/footer.jsp"></jsp:include>
<script>
	$(function(){
		$("#category").change(function(){
			
			var category = $("#category option:selected").val();
			var target = $("#category_detail_form");
			var str = "";
			if(category == 'top'){
				target.html("");
				str = '<select class="form-control" id="category_detail">'+
						        '<option value="tee">TEE</option>'+
						        '<option value="blouse">BLOUSE</option>'+
						        '<option value="shirts">SHIRTS</option>'+
						        '<option value="knit">KNIT</option>'+
					      	'</select>';
				target.html(str); 
			}
			if(category == 'outer'){
				target.html("");
				str = '<select class="form-control" id="category_detail">'+
				        '<option value="coat">COAT</option>'+
				        '<option value="jacket">JACKET</option>'+
				        '<option value="jumper">JUMPER</option>'+
				        '<option value="cardigan">CARDIGAN</option>'+
			      	'</select>';
				target.html(str);
			}
			if(category == 'dress'){
				target.html("");
				str = '<select class="form-control" id="category_detail">'+
				        '<option value="solid">SOLID</option>'+
				        '<option value="pattern">PATTERN</option>'+
				        '<option value="set">SET</option>'+
				        '</select>';
				target.html(str);
			}
			if(category == 'bottom'){
				target.html("");
				str = '<select class="form-control" id="category_detail">'+
				        '<option value="skirt">SKIRT</option>'+
				        '<option value="pants">PANTS</option>'+
			      	'</select>';
				target.html(str);
			}
			if(category == 'sb'){
				target.html("");
				str = '<select class="form-control" id="category_detail">'+
				        '<option value="shoes">SHOES</option>'+
				        '<option value="bag">BAG</option>'+
			      	'</select>';
				target.html(str);
			}
			if(category == 'acc'){
				target.html("");
				str = '<select class="form-control" id="category_detail">'+
				        '<option value="silver">SILVER</option>'+
				        '<option value="jewelry">JEWELRY</option>'+
				        '<option value="hairacc">HAIR ACC</option>'+
				        '<option value="ch">CAP&HAT</option>'+
				        '<option value="sm">SCARF&MUFFLER</option>'+
				        '<option value="st">SOCKS&TIGHTS</option>'+
				        '<option value="glasses">GLASSES</option>'+
			      	'</select>';
				target.html(str);
			}
		})
	})
	
</script>
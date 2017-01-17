<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/ckeditor/ckeditor.js"></script>
<meta charset="UTF-8">
<style>

/*
 * Component: Box
 * --------------
 */
.box {
  position: relative;
  border-radius: 3px;
  background: #ffffff;
  border-top: 3px solid #d2d6de;
  margin-bottom: 20px;
  width: 100%;
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
}
.box.box-primary {
  border-top-color: #3c8dbc;
}
.box.box-info {
  border-top-color: #00c0ef;
}
.box.box-danger {
  border-top-color: #dd4b39;
}
.box.box-warning {
  border-top-color: #f39c12;
}
.box.box-success {
  border-top-color: #00a65a;
}
.box.box-default {
  border-top-color: #d2d6de;
}
.box.collapsed-box .box-body,
.box.collapsed-box .box-footer {
  display: none;
}
.box .nav-stacked > li {
  border-bottom: 1px solid #f4f4f4;
  margin: 0;
}
.box .nav-stacked > li:last-of-type {
  border-bottom: none;
}
.box.height-control .box-body {
  max-height: 300px;
  overflow: auto;
}
.box .border-right {
  border-right: 1px solid #f4f4f4;
}
.box .border-left {
  border-left: 1px solid #f4f4f4;
}
.box.box-solid {
  border-top: 0px;
}
.box.box-solid > .box-header .btn.btn-default {
  background: transparent;
}
.box.box-solid > .box-header .btn:hover,
.box.box-solid > .box-header a:hover {
  background: rgba(0, 0, 0, 0.1) !important;
}
.box.box-solid.box-default {
  border: 1px solid #d2d6de;
}
.box.box-solid.box-default > .box-header {
  color: #444444;
  background: #d2d6de;
  background-color: #d2d6de;
}
.box.box-solid.box-default > .box-header a,
.box.box-solid.box-default > .box-header .btn {
  color: #444444;
}
.box.box-solid.box-primary {
  border: 1px solid #3c8dbc;
}
.box.box-solid.box-primary > .box-header {
  color: #ffffff;
  background: #3c8dbc;
  background-color: #3c8dbc;
}
.box.box-solid.box-primary > .box-header a,
.box.box-solid.box-primary > .box-header .btn {
  color: #ffffff;
}
.box.box-solid.box-info {
  border: 1px solid #00c0ef;
}
.box.box-solid.box-info > .box-header {
  color: #ffffff;
  background: #00c0ef;
  background-color: #00c0ef;
}
.box.box-solid.box-info > .box-header a,
.box.box-solid.box-info > .box-header .btn {
  color: #ffffff;
}
.box.box-solid.box-danger {
  border: 1px solid #dd4b39;
}
.box.box-solid.box-danger > .box-header {
  color: #ffffff;
  background: #dd4b39;
  background-color: #dd4b39;
}
.box.box-solid.box-danger > .box-header a,
.box.box-solid.box-danger > .box-header .btn {
  color: #ffffff;
}
.box.box-solid.box-warning {
  border: 1px solid #f39c12;
}
.box.box-solid.box-warning > .box-header {
  color: #ffffff;
  background: #f39c12;
  background-color: #f39c12;
}
.box.box-solid.box-warning > .box-header a,
.box.box-solid.box-warning > .box-header .btn {
  color: #ffffff;
}
.box.box-solid.box-success {
  border: 1px solid #00a65a;
}
.box.box-solid.box-success > .box-header {
  color: #ffffff;
  background: #00a65a;
  background-color: #00a65a;
}
.box.box-solid.box-success > .box-header a,
.box.box-solid.box-success > .box-header .btn {
  color: #ffffff;
}
.box.box-solid > .box-header > .box-tools .btn {
  border: 0;
  box-shadow: none;
}
.box.box-solid[class*='bg'] > .box-header {
  color: #fff;
}
.box .box-group > .box {
  margin-bottom: 5px;
}
.box .knob-label {
  text-align: center;
  color: #333;
  font-weight: 100;
  font-size: 12px;
  margin-bottom: 0.3em;
}
.box > .overlay,
.overlay-wrapper > .overlay,
.box > .loading-img,
.overlay-wrapper > .loading-img {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}
.box .overlay,
.overlay-wrapper .overlay {
  z-index: 50;
  background: rgba(255, 255, 255, 0.7);
  border-radius: 3px;
}
.box .overlay > .fa,
.overlay-wrapper .overlay > .fa {
  position: absolute;
  top: 50%;
  left: 50%;
  margin-left: -15px;
  margin-top: -15px;
  color: #000;
  font-size: 30px;
}
.box .overlay.dark,
.overlay-wrapper .overlay.dark {
  background: rgba(0, 0, 0, 0.5);
}
.box-header:before,
.box-body:before,
.box-footer:before,
.box-header:after,
.box-body:after,
.box-footer:after {
  content: " ";
  display: table;
}
.box-header:after,
.box-body:after,
.box-footer:after {
  clear: both;
}
.box-header {
  color: #444;
  display: block;
  padding: 10px;
  position: relative;
}
.box-header.with-border {
  border-bottom: 1px solid #f4f4f4;
}
.collapsed-box .box-header.with-border {
  border-bottom: none;
}
.box-header > .fa,
.box-header > .glyphicon,
.box-header > .ion,
.box-header .box-title {
  display: inline-block;
  font-size: 18px;
  margin: 0;
  line-height: 1;
}
.box-header > .fa,
.box-header > .glyphicon,
.box-header > .ion {
  margin-right: 5px;
}
.box-header > .box-tools {
  position: absolute;
  right: 10px;
  top: 5px;
}
.box-header > .box-tools [data-toggle="tooltip"] {
  position: relative;
}
.box-header > .box-tools.pull-right .dropdown-menu {
  right: 0;
  left: auto;
}
.btn-box-tool {
  padding: 5px;
  font-size: 12px;
  background: transparent;
  box-shadow: none!important;
  color: #97a0b3;
}
.open .btn-box-tool,
.btn-box-tool:hover {
  color: #606c84;
}
.btn-box-tool:active {
  outline: none!important;
}
.box-body {
  border-top-left-radius: 0;
  border-top-right-radius: 0;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
  padding: 10px;
}
.no-header .box-body {
  border-top-right-radius: 3px;
  border-top-left-radius: 3px;
}
.box-body > .table {
  margin-bottom: 0;
}
.box-body .fc {
  margin-top: 5px;
}
.box-body .full-width-chart {
  margin: -19px;
}
.box-body.no-padding .full-width-chart {
  margin: -9px;
}
.box-body .box-pane {
  border-top-left-radius: 0;
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 3px;
}
.box-body .box-pane-right {
  border-top-left-radius: 0;
  border-top-right-radius: 0;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 0;
}
.box-footer {
  border-top-left-radius: 0;
  border-top-right-radius: 0;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
  border-top: 1px solid #f4f4f4;
  padding: 10px;
  background-color: #ffffff;
}
/*
 * Page: Mailbox
 * -------------
 */
.mailbox-messages > .table {
  margin: 0;
}
.mailbox-controls {
  padding: 5px;
}
.mailbox-controls.with-border {
  border-bottom: 1px solid #f4f4f4;
}
.mailbox-read-info {
  border-bottom: 1px solid #f4f4f4;
  padding: 10px;
}
.mailbox-read-info h3 {
  font-size: 20px;
  margin: 0;
}
.mailbox-read-info h5 {
  margin: 0;
  padding: 5px 0 0 0;
}
.mailbox-read-time {
  color: #999;
  font-size: 13px;
}
.mailbox-read-message {
  padding: 10px;
}
.mailbox-attachments li {
  float: left;
  width: 200px;
  border: 1px solid #eee;
  margin-bottom: 10px;
  margin-right: 10px;
}
.mailbox-attachment-name {
  font-weight: bold;
  color: #666;
}
.mailbox-attachment-icon,
.mailbox-attachment-info,
.mailbox-attachment-size {
  display: block;
}
.mailbox-attachment-info {
  padding: 10px;
  background: #f4f4f4;
}
.mailbox-attachment-size {
  color: #999;
  font-size: 12px;
}
.mailbox-attachment-icon {
  text-align: center;
  font-size: 65px;
  color: #666;
  padding: 20px 10px;
}
.mailbox-attachment-icon.has-img {
  padding: 0;
}
.mailbox-attachment-icon.has-img > img {
  max-width: 100%;
  height: auto;
}
</style>
<jsp:include page="../include/header.jsp"></jsp:include>

<div class="container">
	<form action="/pboard/write" method="post" id="registerForm" enctype="multipart/form-data">
		<table class="table">
			<tr>
				<td>분류</td>
				<td>
					<div class="form-group">				      	
				      	<select class="form-control" id="category" name="category">
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
				      	<select class="form-control" id="category_detail" name="category_detail" onchange="getProduct()">
					        
				      	</select>
				    </div>
				</td>
			</tr>
			<tr>
				<td>상품</td>
				<td>
					<div class="form-group">				      	
				      	<select class="form-control" id="product_name" name="product_name" onchange="getPrice()">
					        
				      	</select>
				    </div>
				</td>
			</tr>
			<tr>
				<td>상품가격</td>
				<td>
					<div class="form-group" id="product_price_form">				      	
				      	
				    </div>
				</td>
			</tr>
			<tr>
				<td>					
					<p>본문</p>
					<img id="photo" name="photo" width="100%" class="img-thumbnail" style="margin-top:120px;"/>
				</td>
				<td colspan="3"><textarea name="content" class="ckeditor"></textarea></td>
			</tr>
			<tr>
				<td style="width:20%;margin:5px;padding-left:10px;">
					<p>대표 이미지</p> 
				</td>
				<td colspan="3">
					<input type="file" id="file" name="file">
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right"><input type="submit"
					class="btn btn-default" value="글 올리기"></td>
			</tr>
		</table>
	
	<div class="form-group">
		<label for="fileDrop">File DROP Here</label>
		<div class="fileDrop" id="fileDrop" style="width:100%;height:130px;border-style:inset;"></div>
	</div>

	<div class="box-footer">
		<div>
			<hr>
		</div>

		<ul class="mailbox-attachments clearfix uploadedList">
		</ul>
	</div>
	</form>
</div>

<jsp:include page="../include/footer.jsp"></jsp:include>
<script>
var map = new Map();

function getProduct(){
	
		
		var category_detail = $("#category_detail option:selected").val();
		var str = "";

		$.getJSON('/pboard/getProduct/'+category_detail,function(data){
			$(data).each(function(){
				str += '<option value="'+this.product_name+'">'+this.product_name+'</option>';
				map.set(this.product_name,this.product_price);
			})
			$("#product_name").html(str);
			
		});
}
function getPrice(){
	var product_name = $("#product_name option:selected").val();
	var str = '<input type="text" value="'+map.get(product_name)+'" name="product_price" class="form-control" readonly/>';
	$("#product_price_form").html(str);
}

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
<script>
	$(function(){
		if('${pboardWriteResult}' == 'success'){
			alert("제품 게시글 등록 성공!");
		}
	})
</script>
<script>
	$(function(){
		$("#file").change(function(){
		    document.getElementById('photo').src = window.URL.createObjectURL(this.files[0]);
		});
	})
</script>


<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="template" type="text/x-handlebars-template">
<li>
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	<button class="btn btn-default btn-xs pull-right delbtn" data-src="{{fullName}}"><i class="fa fa-fw fa-remove"></i></button>
  </div>
</li>                
</script>    

<script>

var template = Handlebars.compile($("#template").html());

$(".fileDrop").on("dragenter dragover", function(event){
	event.preventDefault();
});


$(".fileDrop").on("drop", function(event){
	event.preventDefault();
	
	var files = event.originalEvent.dataTransfer.files;
	
	var file = files[0];

	var formData = new FormData();
	
	formData.append("file", file);	
	
	
	$.ajax({
		  url: '/uploadAjax',
		  data: formData,
		  dataType:'text',
		  processData: false,
		  contentType: false,
		  type: 'POST',
		  success: function(data){
			  
			  var fileInfo = getFileInfo(data);
			  
			  var html = template(fileInfo);
			  
			  $(".uploadedList").append(html);
		  }
		});	
});
$(".uploadedList").on("click", ".delbtn", function(event){
	event.preventDefault();
	
	var that = $(this);

	  $.ajax({
		   url:"/deleteFile",
		   type:"post",
		   data: {fileName:$(this).attr("data-src")},
		   dataType:"text",
		   success:function(result){
			   if(result == 'deleted'){
				   that.parent("div").remove();
			   }
		   }
	  });
});

$("#registerForm").submit(function(event){
	event.preventDefault();
	
	var that = $(this);
	
	var str ="";
	$(".uploadedList .delbtn").each(function(index){
		 str += "<input type='hidden' name='files["+index+"]' value='"+$(this).attr("data-src") +"'> ";
	});
	
	that.append(str);

	that.get(0).submit();
});


function checkImageType(fileName){
	
	var pattern = /jpg|gif|png|jpeg/i;
	
	return fileName.match(pattern);
	
}
function getImageLink(fileName){
	
	if(!checkImageType(fileName)){
		return;
	}
	var front = fileName.substr(0,12);
	var end = fileName.substr(14);
	
	return front + end;
	
}
function getOriginalName(fileName){	

	if(checkImageType(fileName)){
		return;
	}
	
	var idx = fileName.indexOf("_") + 1 ;
	return fileName.substr(idx);
	
}
</script>

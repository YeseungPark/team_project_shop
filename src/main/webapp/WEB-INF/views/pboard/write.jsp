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
ul{ 
	list-style-type:none; 
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
					        <option value="tee">TEE</option>
					        <option value="blouse">BLOUSE</option>
					        <option value="shirts">SHIRTS</option>
					        <option value="knit">KNIT</option>
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
	<a href="{{fullName}}" class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
	
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
		   data: {fileName:$(this).attr("href")},
		   dataType:"text",
		   success:function(result){
			   if(result == 'deleted'){
				
				   that.parent("div").parent("li").remove();
				   
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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

.box.collapsed-box .box-body, .box.collapsed-box .box-footer {
	display: none;
}

.box .nav-stacked>li {
	border-bottom: 1px solid #f4f4f4;
	margin: 0;
}

.box .nav-stacked>li:last-of-type {
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

.box.box-solid>.box-header .btn.btn-default {
	background: transparent;
}

.box.box-solid>.box-header .btn:hover, .box.box-solid>.box-header a:hover
	{
	background: rgba(0, 0, 0, 0.1) !important;
}

.box.box-solid.box-default {
	border: 1px solid #d2d6de;
}

.box.box-solid.box-default>.box-header {
	color: #444444;
	background: #d2d6de;
	background-color: #d2d6de;
}

.box.box-solid.box-default>.box-header a, .box.box-solid.box-default>.box-header .btn
	{
	color: #444444;
}

.box.box-solid.box-primary {
	border: 1px solid #3c8dbc;
}

.box.box-solid.box-primary>.box-header {
	color: #ffffff;
	background: #3c8dbc;
	background-color: #3c8dbc;
}

.box.box-solid.box-primary>.box-header a, .box.box-solid.box-primary>.box-header .btn
	{
	color: #ffffff;
}

.box.box-solid.box-info {
	border: 1px solid #00c0ef;
}

.box.box-solid.box-info>.box-header {
	color: #ffffff;
	background: #00c0ef;
	background-color: #00c0ef;
}

.box.box-solid.box-info>.box-header a, .box.box-solid.box-info>.box-header .btn
	{
	color: #ffffff;
}

.box.box-solid.box-danger {
	border: 1px solid #dd4b39;
}

.box.box-solid.box-danger>.box-header {
	color: #ffffff;
	background: #dd4b39;
	background-color: #dd4b39;
}

.box.box-solid.box-danger>.box-header a, .box.box-solid.box-danger>.box-header .btn
	{
	color: #ffffff;
}

.box.box-solid.box-warning {
	border: 1px solid #f39c12;
}

.box.box-solid.box-warning>.box-header {
	color: #ffffff;
	background: #f39c12;
	background-color: #f39c12;
}

.box.box-solid.box-warning>.box-header a, .box.box-solid.box-warning>.box-header .btn
	{
	color: #ffffff;
}

.box.box-solid.box-success {
	border: 1px solid #00a65a;
}

.box.box-solid.box-success>.box-header {
	color: #ffffff;
	background: #00a65a;
	background-color: #00a65a;
}

.box.box-solid.box-success>.box-header a, .box.box-solid.box-success>.box-header .btn
	{
	color: #ffffff;
}

.box.box-solid>.box-header>.box-tools .btn {
	border: 0;
	box-shadow: none;
}

.box.box-solid[class*='bg']>.box-header {
	color: #fff;
}

.box .box-group>.box {
	margin-bottom: 5px;
}

.box .knob-label {
	text-align: center;
	color: #333;
	font-weight: 100;
	font-size: 12px;
	margin-bottom: 0.3em;
}

.box>.overlay, .overlay-wrapper>.overlay, .box>.loading-img,
	.overlay-wrapper>.loading-img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

.box .overlay, .overlay-wrapper .overlay {
	z-index: 50;
	background: rgba(255, 255, 255, 0.7);
	border-radius: 3px;
}

.box .overlay>.fa, .overlay-wrapper .overlay>.fa {
	position: absolute;
	top: 50%;
	left: 50%;
	margin-left: -15px;
	margin-top: -15px;
	color: #000;
	font-size: 30px;
}

.box .overlay.dark, .overlay-wrapper .overlay.dark {
	background: rgba(0, 0, 0, 0.5);
}

.box-header:before, .box-body:before, .box-footer:before, .box-header:after,
	.box-body:after, .box-footer:after {
	content: " ";
	display: table;
}

.box-header:after, .box-body:after, .box-footer:after {
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

.box-header>.fa, .box-header>.glyphicon, .box-header>.ion, .box-header .box-title
	{
	display: inline-block;
	font-size: 18px;
	margin: 0;
	line-height: 1;
}

.box-header>.fa, .box-header>.glyphicon, .box-header>.ion {
	margin-right: 5px;
}

.box-header>.box-tools {
	position: absolute;
	right: 10px;
	top: 5px;
}

.box-header>.box-tools [data-toggle="tooltip"] {
	position: relative;
}

.box-header>.box-tools.pull-right .dropdown-menu {
	right: 0;
	left: auto;
}

.btn-box-tool {
	padding: 5px;
	font-size: 12px;
	background: transparent;
	box-shadow: none !important;
	color: #97a0b3;
}

.open .btn-box-tool, .btn-box-tool:hover {
	color: #606c84;
}

.btn-box-tool:active {
	outline: none !important;
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

.box-body>.table {
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
 * Component: Timeline
 * -------------------
 */
.timeline {
	position: relative;
	margin: 0 0 30px 0;
	padding: 0;
	list-style: none;
}

.timeline:before {
	content: '';
	position: absolute;
	top: 0px;
	bottom: 0;
	width: 4px;
	background: #ddd;
	left: 31px;
	margin: 0;
	border-radius: 2px;
}

.timeline>li {
	position: relative;
	margin-right: 10px;
	margin-bottom: 15px;
}

.timeline>li:before, .timeline>li:after {
	content: " ";
	display: table;
}

.timeline>li:after {
	clear: both;
}

.timeline>li>.timeline-item {
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	border-radius: 3px;
	margin-top: 0px;
	background: #fff;
	color: #444;
	margin-left: 60px;
	margin-right: 15px;
	padding: 0;
	position: relative;
}

.timeline>li>.timeline-item>.time {
	color: #999;
	float: right;
	padding: 10px;
	font-size: 12px;
}

.timeline>li>.timeline-item>.timeline-header {
	margin: 0;
	color: #555;
	border-bottom: 1px solid #f4f4f4;
	padding: 10px;
	font-size: 16px;
	line-height: 1.1;
}

.timeline>li>.timeline-item>.timeline-header>a {
	font-weight: 600;
}

.timeline>li>.timeline-item>.timeline-body, .timeline>li>.timeline-item>.timeline-footer
	{
	padding: 10px;
}

.timeline>li.time-label>span {
	font-weight: 600;
	padding: 5px;
	display: inline-block;
	background-color: #fff;
	border-radius: 4px;
}

.timeline>li>.fa, .timeline>li>.glyphicon, .timeline>li>.ion {
	width: 30px;
	height: 30px;
	font-size: 15px;
	line-height: 30px;
	position: absolute;
	color: #666;
	background: #d2d6de;
	border-radius: 50%;
	text-align: center;
	left: 18px;
	top: 0;
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js">
	
<meta charset="UTF-8">

<jsp:include page="../include/header.jsp"></jsp:include>

<div class="container" ng-app="myApp" ng-controller="myCtrl">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-success">
				<div class="box-header">
					<h4 class="box-title">한줄 상품평</h4>
				</div>
				<div class="box-body">
					<input class="form-control" type="text" placeholder="상품평" id="newReplyText"/>
				</div>
				<div class="box-footer">
					<button type="submit" class="btn btn-primary" id="replyAddBtn">댓글</button>
				</div>
			</div>
			
			<!-- The time line -->
			<ul class="timeline" id="repliesDiv">
				<li class="replyLi" data-rno="{{reply.reply_index}}" ng-repeat="reply in replies track by $index"">
				<i class="fa fa-comments bg-blue"></i>
				 <div class="timeline-item" >
				  <span class="time">
				    <i class="fa fa-clock-o"></i>{{reply.reg_date | date:'yyyy/MM/dd HH:mm'}}
				  </span>
				  <h3 class="timeline-header"><strong>{{reply.reply_index}}</strong> -{{reply.nick}}</h3>
				  <div class="timeline-body">{{reply.content}} </div>
				    <div class="timeline-footer">
				     <a href="#modify_{{$index}}" class="btn btn-info btn-xs" data-toggle="collapse">수정</a>
				     <button class="btn btn-danger btn-xs" data-rno="{{reply.reply_index}}">삭제</button>
				    </div>
				    
				    <div id="modify_{{$index}}" class="collapse timeline-footer">
					    <input class="form-control" type="text" value="{{reply.content}}" id="{{reply.reply_index}}" placeholder="수정 내용" />
					    <button class="btn btn-default btn-xs" data-rno="{{reply.reply_index}}">등록</button>
					</div>
					  
				  </div>
				  
				</li>
				<div>
			</ul>
			   
			<div class='text-center'>
				<ul id="pagination" class="pagination pagination-sm no-margin ">
				
				
				</ul>
			</div>
				
		</div><!-- col -->
	</div><!-- row -->
</div>

<jsp:include page="../include/footer.jsp"></jsp:include>
<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
    $("#replyAddBtn").click(function(){
    	var content = $("#newReplyText").val();
    	$http({
        	method : 'POST',
        	url : '/replies/regist',
        	headers: {
        		   'Content-Type': 'application/json'
        	},
        	data: JSON.stringify({
        		board_index:10,
        		nick:'${login.nick}',
        		content:content,
        		category:'outer'
        	})
        }).then(function successCallback(response) {
        		getPageList(1); 
        }, function errorCallback(response) {
            	alert(response.data.result);
        });
    })
    
    $(".pagination").on("click","li a",function(event){
    	event.preventDefault();
    	
    	board_index = 10;
    	replyPage = $(this).attr("href");
    	
    	getPageList(replyPage);
    	
    })
    
    $(".timeline").on("click",".btn-danger",function(event){
    	var reply = $(this);
    	var reply_index = reply.attr("data-rno");
		
		$http({
        	method : 'DELETE',
        	url : '/replies/'+reply_index,
        	headers: {
        		   'Content-Type': 'application/json',
        		   "X-HTTP-Method-Override":"DELETE"
        	},
        	data: JSON.stringify({
        		board_index:10,
				reply_index:reply_index,
        		category:'outer'
        	})
        }).then(function successCallback(response) {
        		getPageList(1); 
        }, function errorCallback(response) {
            	alert(response.data);
        });
    	
    })
    $(".timeline").on("click",".btn-default",function(event){
    	var reply = $(this);
    	var reply_index = reply.attr("data-rno");
    	var content = $('#'+reply_index).val();
    	var category = 'outer';
    	
    	$http({
        	method : 'PUT',
        	url : '/replies/'+reply_index,
        	headers: {
        		   'Content-Type': 'application/json',
        		   "X-HTTP-Method-Override":"PUT"
        	},
        	data: JSON.stringify({
        		board_index:10,
				reply_index:reply_index,
        		content:content,
        		category:'outer'
        	})
        }).then(function successCallback(response) {
        		getPageList(1); 
        }, function errorCallback(response) {
            	alert(response.data);
        });
    	
    })
    
    function getPageList(page){
    	
    	var str="";
    	
    	$http.get("/replies/outer/10/"+page)
        .then(function(response) {
            $scope.replies = response.data.list;            
            printPaging(response.data.pageMaker,$("#pagination"));
            
        });    	
    }
    function printPaging(pageMaker,target){
    	
    	var str = "";
    	
    	if (pageMaker.prev) {
			str += "<li><a href='" + (pageMaker.startPage - 1)
					+ "'> << </a></li>";
		}

		for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
			var strClass = pageMaker.cri.page == i ? 'class=active' : '';
			str += "<li "+strClass+"><a href='"+i+"'>" + i + "</a></li>";
		}

		if (pageMaker.next) {
			str += "<li><a href='" + (pageMaker.endPage + 1)
					+ "'> >> </a></li>";
		}

		target.html(str);
    }
});

</script>
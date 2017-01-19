<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


	
<meta charset="UTF-8">

<div ng-app="myApp" ng-controller="myCtrl">
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
				  <h3 class="timeline-header"><strong>{{pageMaker.index-$index}}</strong> -{{reply.nick}}</h3>
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
			</ul>
			   
			<div class='text-center'>
				<ul id="pagination" class="pagination pagination-sm no-margin ">
				
				
				</ul>
			</div>
				
		</div><!-- col -->
	</div><!-- row -->
</div>

<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
	getPageList(1);
	$("#replyAddBtn").click(function(){
    	var content = $("#newReplyText").val();

    	$http({
        	method : 'POST',
        	url : '/replies/regist',
        	headers: {
        		   'Content-Type': 'application/json'
        	},
        	data: JSON.stringify({
        		board_index:'${param.bp_index}',
        		nick:'${login.nick}',
        		content:content,
        		category:'${param.category}'
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
        		board_index:'${param.bp_index}',
				reply_index:reply_index,
        		category:'${param.category}'
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
    	
    	$http({
        	method : 'PUT',
        	url : '/replies/'+reply_index,
        	headers: {
        		   'Content-Type': 'application/json',
        		   "X-HTTP-Method-Override":"PUT"
        	},
        	data: JSON.stringify({
        		board_index:'${param.bp_index}',
				reply_index:reply_index,
        		content:content,
        		category:'${param.category}'
        	})
        }).then(function successCallback(response) {
        		getPageList(1); 
        }, function errorCallback(response) {
            	alert(response.data);
        });
    	
    })
    
    function getPageList(page){
    	
    	var str="";
    	
    	$http.get("/replies/${param.category}/${param.bp_index}/"+page)
        .then(function(response) {
            $scope.replies = response.data.list;   
            $scope.pageMaker = response.data.pageMaker;
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
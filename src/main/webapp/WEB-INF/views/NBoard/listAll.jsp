<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<%@include file="../include/header.jsp"%>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->

			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">BOARD</h3>
				</div>
				<div class="box-body">

					<table class="table table-bordered">
						<tr>
							<th style="width: 10px">NO</th>
							<th>SUBJECT</th>
							<th>NICK</th>
							<th>REGDATE</th>
							<th style="width: 40px">CATEGORY</th>
						</tr>


						<c:forEach items="${list}" var="NBoardVO">

							<tr>
								<td>${NBoardVO.bn_index}</td>
								<td><a href='/NBoard/read?bn_index=${NBoardVO.bn_index}'>${NBoardVO.subject}</a></td>
								<td>${NBoardVO.nick}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${NBoardVO.reg_date}" /></td>
								<td><span class="badge bg-red">${NBoardVO.category }</span></td>
							</tr>

						</c:forEach>

					</table>

				</div>
				<!-- /.box-body -->



				<div class="box-footer">
					<button type="submit" class="btn btn-warning">Register</button>
					<button type="submit" class="btn btn-primary">LIST ALL</button>
				</div>
				<div class="box-footer">Footer</div>
				<!-- /.box-footer-->
			</div>
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<script>
				
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$(".btn-warning").on("click", function(){
		formObj.attr("action", "/NBoard/register");
		formObj.attr("method", "get");		
		formObj.submit();
	});
	
		
	$(".btn-primary").on("click", function(){
		self.location = "/NBoard/listAll";
	});
	
});

</script>

<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
</script>

<%@include file="../include/footer.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">READ BOARD</h3>
				</div>
				<!-- /.box-header -->

				<form role="form" method="post">

					<input type='hidden' name='bn_index' value="${NBoardVO.bn_index}">

				</form>

				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">category</label> <input type="text"
							name='category' class="form-control" value="${NBoardVO.category}"
							readonly="readonly">

						<div class="form-group">
							<label for="exampleInputEmail1">subject</label> <input
								type="text" name='subject' class="form-control"
								value="${NBoardVO.subject}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Content</label>
							<textarea class="form-control" name="content" rows="3"
								readonly="readonly">${NBoardVO.content}</textarea>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">nick</label> <input type="text"
								name="nick" class="form-control" value="${NBoardVO.nick}"
								readonly="readonly">
						</div>
					</div>
					<!-- /.box-body -->

					<div class="box-footer">
						<button type="submit" class="btn btn-warning">Modify</button>
						<button type="submit" class="btn btn-danger">REMOVE</button>
						<button type="submit" class="btn btn-primary">LIST ALL</button>
					</div>


					<script>
						$(document).ready(function() {

							var formObj = $("form[role='form']");

							console.log(formObj);

							$(".btn-warning").on("click", function() {
								formObj.attr("action", "/NBoard/modify");
								formObj.attr("method", "get");
								formObj.submit();
							});

							$(".btn-danger").on("click", function() {
								formObj.attr("action", "/NBoard/remove");
								formObj.submit();
							});

							$(".btn-primary").on("click", function() {
								self.location = "/NBoard/listAll";
							});

						});
					</script>




				</div>
				<!-- /.box -->
			</div>
			<!--/.col (left) -->

		</div>
		<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@include file="../include/footer.jsp"%>

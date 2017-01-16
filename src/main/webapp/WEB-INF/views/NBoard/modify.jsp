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

	<div class="box-body">

		<div class="form-group">
			<label for="exampleInputEmail1">bn_index</label> <input type="text"
				name='bn_index' class="form-control" value="${NBoardVO.bn_index}"
				readonly="readonly">
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">subject</label> <input type="text"
				name='subject' class="form-control" value="${NBoardVO.subject}" required >
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Content</label>
			<textarea class="form-control" name="content" rows="3" required>${NBoardVO.content}</textarea>
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">nick</label> <input
				type="text" name="nick" class="form-control"
				value="${NBoardVO.nick}">
		</div>
	</div>
	<!-- /.box-body -->
</form>


<div class="box-footer">
	<button type="submit" class="btn btn-primary">SAVE</button>
	<button type="submit" class="btn btn-warning">CANCEL</button>
</div>

<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		$(".btn-warning").on("click", function() {
			self.location = "/NBoard/listAll";
		});

		$(".btn-primary").on("click", function() {
			formObj.submit();
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

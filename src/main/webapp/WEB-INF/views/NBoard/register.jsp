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
					<h3 class="box-title">REGISTER BOARD</h3>
				</div>
				<!-- /.box-header -->

<form role="form" method="post">
	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputEmail1">subject</label> 
			<input type="text"
				name='subject' class="form-control" placeholder="Enter subject">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Content</label>
			<textarea class="form-control" name="content" rows="3"
				placeholder="Enter ..."></textarea>
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">nick</label> 
			<input type="text"
				name="nick" class="form-control" placeholder="Enter nick">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">password</label> 
			<input type="password"
				name="password" class="form-control" placeholder="Enter password">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">category</label> 
			<input type="text"
				name="category" class="form-control" placeholder="Enter category">
		</div>
		
	</div>
	<!-- /.box-body -->

	<div class="box-footer">
		<button type="submit" class="btn btn-primary">Submit</button>
	</div>
</form>


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

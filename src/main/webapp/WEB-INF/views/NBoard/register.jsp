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
							<label for="exampleInputEmail1">category</label> <select
								name="category" required onChange="">
								<option value="">::분류 선택::</option>
								<option value="00">상품문의</option>
								<option value="01">주문/결제문의</option>
								<option value="02">배송문의</option>
								<option value="03">배송전 취소/변경문의</option>
								<option value="04">교환/반품(환불)문의</option>
								<option value="05">적립금/예치금문의</option>
								<option value="06">기타문의</option>
							</select>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">subject</label> <input
								type="text" name='subject' class="form-control"
								placeholder="Enter subject" required>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Content</label>
							<textarea class="form-control" name="content" rows="3"
								placeholder="Enter ..." required></textarea>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">nick</label> <input type="text"
								name="nick" class="form-control" placeholder="Enter nick">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">password</label> <input
								type="password" name="password" class="form-control"
								placeholder="Enter password">
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<!-- Modal -->
	<div class="modal fade" id="myModal2" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Logout</h4>
				</div>
				<div class="modal-body">
					<p>로그아웃 하시겠습니까?.</p>
				</div>
				<div class="modal-footer">
					<form method="post"	action="/member/loginPost">
						<button type="submit" class="btn btn-danger">Logout</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</form>
				</div>
			</div>

		</div>
	</div>

</div>
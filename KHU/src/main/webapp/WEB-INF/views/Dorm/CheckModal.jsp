<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="modal" id="CheckModal">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header" style="background-color: #0B0B3B">
				<h4 style="text-align: center; color: white">기숙사 조회</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<!-- modal-header -->

			<div class="modal-body">
				<form action="${pageContext.request.contextPath}/user/Book/BookBorrow" method="post">
					<input type="hidden" name="bookNum" value="${bookInfo[0].bookNum}"/>
					<h3 style="text-align: center">정보 입력</h3>
					<div style="maring: auto; border: 1px solid silver; padding: 30px">
						<div style="text-align: center; margin-top: 30px">
							<table class="table">
								<tr>
									<td style="width: 12%">학번 :</td>
									<td><input type="text" class="form-control"
										name="studentNum" id="studentNum" value=""></td>
								</tr>
								<tr>
									<td style="width: 12%">이름 :</td>
									<td><input type="text" class="form-control"
										name="studentNum" id="studentNum" value=""></td>
								</tr>
								<tr>
									<td style="width: 12%">학과 :</td>
									<td><select name="findType" class="form-control">
										<option value="">::학 과::</option>
										<option value="1">컴퓨터공학과</option>
										<option value="2">정보통신학과</option>

									</select></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
								</tr>
							</table>
							<button class="btn bg-gray" type="button">조회</button>
							<button class="btn bg-gray" type="button" data-dismiss="modal">취소</button>
						</div>

					</div>
					<!-- border있는 div -->

				</form>
				<div class="modal-footer"></div>
			</div>
			<!-- modal-body -->

		</div>
		<!-- modal-content -->
	</div>
	<!-- modal-dialog -->
</div>
<!-- modal -->
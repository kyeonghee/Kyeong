<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="modal" id="myModal2">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header" style="background-color: #0B0B3B">
				<h4 style="text-align: center; color: white">대출신청</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<!-- modal-header -->

			<div class="modal-body">
				<form action="${pageContext.request.contextPath}/user/Book/BookBorrow" method="post">
					<input type="hidden" name="bookNum" value="${bookInfo[0].bookNum}"/>
					<h3 style="text-align: center">대출 유의사항</h3>
					<div style="maring: auto; border: 1px solid silver; padding: 30px">
						<p
							style="font-size: 20px; color: darkslateblue; font-weight: bold; margin-top: 5pt">도서
							대출 시 유의사항 안내</p>
						<div style="font-size: 15px">* 경희네학교 학생, 교사만 대출이 가능합니다.</div>
						
						<div style="font-size: 15px">* 대출기간은 대여 날을 포함한 1주일 입니다.</div>
						<div style="text-align: center; margin-top: 30px">
							<table class="table">
								<tr>
									<td style="width: 12%">학번 :</td>
									<td><input type="text" class="form-control"
										name="studentNum" id="studentNum" value="${loginUser.studentNum}"></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
								</tr>
							</table>
							<button class="btn bg-gray" type="submit">대여</button>
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
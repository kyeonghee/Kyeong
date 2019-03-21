<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	var check=function(){
		if(!DormCheck.studentNum.value){
			alert('학번을 입력하세요2');
			DormCheck.studentNum.focus();
			return false;
		}
		if(!DormCheck.studentName.value){
			alert('이름을 입력하세요');
			DormCheck.studentName.focus();
			return false;
		}
		if(!DormCheck.majorNum.value){
			alert('검색 유형을 선택하세요');
			DormCheck.majorNum.focus();
			return false;
		}
	}
</script>
<div class="modal" id="SignModal">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header" style="background-color: #0B0B3B">
				<h4 style="text-align: center; color: white">기숙사 신청</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<!-- modal-header -->

			<div class="modal-body">
				<form
					action="${pageContext.request.contextPath}/Dorm/DormM"
					onsubmit="return check()" name="DormCheck" method="post">
					<input type="hidden" name="bookNum" value="${bookInfo[0].bookNum}" />
					<h3 style="text-align: center">정보 입력</h3>
					<div style="maring: auto; border: 1px solid silver; padding: 30px">
						<div style="text-align: center; margin-top: 30px">

							<table class="table">
								<tr>
									<td style="width: 12%">학번 :</td>
									<td><input type="text" class="form-control"
										name="studentNum" id="studentNum"
										value=""></td>
								</tr>
								<tr>
									<td style="width: 12%">이름 :</td>
									<td><input type="text" class="form-control"
										name="studentName" id="studentName"
										value=""></td>
								</tr>
								<tr>
									<td style="width: 12%">학과 :</td>
									<td><select name="majorNum" class="form-control">
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
							<button class="btn bg-gray" type="submit">신청</button>
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
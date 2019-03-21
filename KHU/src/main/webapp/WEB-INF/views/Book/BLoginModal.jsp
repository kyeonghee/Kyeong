<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String myctx = request.getContextPath();
	Cookie cks[] = request.getCookies();
	String uid = "";
	boolean isSave = false;
	if (cks != null) {
		for (Cookie c : cks) {
			String key = c.getName();
			if (key.equals("saveId")) {
				uid = c.getValue();
				isSave = true;
				break;
			} //if
		} //for
	} //if
%>
<script type="text/javascript">
	var loginCheck=function(){
		if(!loginform.studentNum.value){
			alert('아이디를 입력하세요');
			loginform.studentNum.focus();
			return;
		}
		if(!loginform.studentPwd.value){
			alert('비밀번호를 입력하세요');
			loginform.studentPwd.focus();
			return;
		}
		$('#href').val(location.href);
		loginform.submit();
	}
</script>
<div class="modal" id="BModal">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header">
				<h4 class="modal-title">Login Page</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<!-- class modal-header  -->

			<div class="modal-body">
				<form name="loginform" action="<%=myctx%>/Book/BookLogin" method="post">
					<table class="table table-borderless">
						<tr>
							<td>아이디</td>
							<td><input type="text" name="studentNum" class="form-control"
								value="<%=uid%>" placeholder="아이디를 입력하세요"></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type="password" name="studentPwd" class="form-control"
								placeholder="비밀번호를 입력하세요"></td>
						</tr>
						<tr>
							<td><a href="<%=myctx%>/Login/lost.do">아이디/비밀번호 찾기</a></td>
							<td colspan="2" class="text-right">
								<button type="button" onclick="loginCheck()"
									class="btn btn-primary">Login</button>
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button></td>
						</tr>
						<input type="hidden" name="href" id="href" value="">
					</table>
				</form>
				<div class="modal-footer"></div>
			</div>
			<!-- class modal-body -->
		</div>
		<!-- class modal-content -->
	</div>
	<!-- class modal-dialog -->
</div>
<!-- class modal -->
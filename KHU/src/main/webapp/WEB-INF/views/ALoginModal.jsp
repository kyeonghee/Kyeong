<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--
	String myctx = request.getContextPath();
--%>
<%-- <%
	
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
%> --%>
<script type="text/javascript">
	var adminCheck=function(){
		if(!adminform.adminID.value){
			alert('아이디를 입력하세요');
			adminform.adminID.focus();
			return;
		}
		if(!adminform.adminPwd.value){
			alert('비밀번호를 입력하세요');
			adminform.adminPwd.focus();
			return;
		}
		$('#href').val(location.href);
		adminform.submit();
	}
</script>
<div class="modal" id="AModal">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header">
				<h4 class="modal-title">관리자 페이지</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<!-- class modal-header  -->

			<div class="modal-body">
				<form name="adminform" action="<%=myctx%>/admin/Admin/adminLogin" method="post">
					<table class="table table-borderless">
						<tr>
							<td>아이디</td>
							<td><input type="text" name="adminID" class="form-control"
								 placeholder="아이디를 입력하세요"></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type="password" name="adminPwd" class="form-control"
								placeholder="비밀번호를 입력하세요"></td>
						</tr>
						<tr>
							<td colspan="2" class="text-right">
								<button type="button" onclick="adminCheck()"
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
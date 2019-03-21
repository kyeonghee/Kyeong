<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String myctx = request.getContextPath();
%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="<%=myctx%>/css/top.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
	
</script>

<div class="text-center section">
	<div class="text-center container">
		<div class="row">
		<label for="userid" class="col-md-2" style="font-size:15pt;margin-top:10px">수험번호 조회하기</label>
			<div class="col-md-8 col-md-offset-2">
				<form name="joinform" action="joinEnd.do" method="post"
					onsubmit="return check()">
					<table class="table">
						<tr>
							<th style="font-size: 13pt">이름</th>
							<td>
								<div style="padding-left: 0px">
									<input type="text" name="name" class="form-control"
										placeholder="이름을 입력하세요">
								</div>
							</td>
						</tr>
						<tr>
							<th style="font-size: 13pt">생년월일</th>
							<td>
								<div style="padding-left: 0px">
									<input type="text" name="name" class="form-control"
										placeholder="생년월일 예) 990422">
								</div>
							</td>
						</tr>
						<tr>
							<th style="font-size: 13pt">휴대전화</th>
							<td>
								<div style="padding-left: 0px">
									<input type="text" name="name" class="form-control"
										placeholder="휴대폰 번호를 입력해주세요">
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2" class="text-center">
								<button type="button" class="btn btn-primary" type="submit">조회하기</button>
							</td>
							<!-- 이미지버튼으로 처리하고 싶을 때 input type="image" src="이미지이름" -->
						</tr>
					</table>
				</form>

			</div>
			<!-- col-md-8 -->
		</div>
		<!-- row -->
	</div>
	<!-- container -->
</div>
<!-- section  -->









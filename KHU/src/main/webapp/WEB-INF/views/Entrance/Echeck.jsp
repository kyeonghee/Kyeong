<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
</style>
<script type="text/javascript">
	$(function() {
		$('ul#ulTabContent>li').hide();
		$('ul#ulTab li a').click(function() {
			var target = $(this).attr('href');
			$('#myCarousel').hide();
			$('ul#ulTabContent>li').hide();
			$(target).show();
			return false;
		});
	});
	function NumberFind() {
		var url = '../Entrance/NumberFind';
		win = window.open(url, 'NumberFind',
				'width=700, height=350, left=300, top=100, scrollbars=yes');
	}
</script>

<div class="text-center section">
	<div class="text-center container">
		<ul id="ulTab" class="nav nav-tabs nav-justified tab">
			<li><a href="#pass" class="active" style="font-family: 'Jeju Gothic'">합격자 조회</a></li>
			<li><a href="#paysend" style="font-family: 'Jeju Gothic'">등록금 납부/안내</a>
			<li><a href="#paycheck" style="font-family: 'Jeju Gothic'">등록금 납부확인</a>
		</ul>

		<!-- -----------------------합격자 조회 클릭시-------------------------------------------- -->
		<ul id="ulTabContent" class="panel" style="list-style-type: none">
			<li id="pass">

				<div class="row">
					<div class="col-md-8 col-md-offset-2" style="margin-top: 30px">
						<h2 style="font-family: 'Jeju Gothic'; font-size: 20pt">2019학년도 합격자 조회</h2>
						<form name="joinform" action="joinEnd.do" method="post"
							onsubmit="return check()">
							<table class="table">
								<tr>
									<th style="font-size: 13pt">이름</th>
									<td>
										<div class="col-md-8" style="padding-left: 0px">
											<input type="text" name="name" class="form-control"
												placeholder="이름을 입력하세요">
										</div>
									</td>
								</tr>
								<tr>
									<th style="font-size: 13pt">생년월일</th>
									<td>
										<div class="col-md-8" style="padding-left: 0px">
											<input type="text" name="name" class="form-control"
												placeholder="생년월일 예) 990422">
										</div>
									</td>
								</tr>
								<tr>
									<th style="font-size: 13pt">수험번호</th>
									<td>
										<div class="col-md-8" style="padding-left: 0px">
											<input type="text" name="name" class="form-control"
												placeholder="수험번호 9자리를 입력해주세요">
										</div>
										<div class="col-md-2" style="padding-left: 0px">
											<button class="btn btn-success" type="button"
												onclick="NumberFind()">수험번호 조회</button>
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
				</div>
			</li>
			<!-- -------------------------------등록금 납부하기 클릭시----------------------------- -->
			<li id="paysend">
				<div class="row">
					<div class="col-md-8 col-md-offset-2" style="margin-top: 30px">
						<h2 style="font-family: 'Jeju Gothic'; font-size: 20pt">2019학년도 등록금 납부 및 합격자확인 안내</h2>
						<div style="border: 1px solid silver;text-align: left; padding: 10px; font-family: 'Jeju Gothic'">
							<p style="font-size: 20px; color: darkslateblue; margin-top: 5pt">
							1. 등록금 안내사항</p>
						<div style="font-size:15px">* 납부기간 내에 등록금을 납부하지 않으면 입학이 취소됩니다
													(납부기한 : ~2019.03.21(목) 18:00)</div>
						<div style="font-size:15px">* 등록금 납부확인은 등록금납부확인 메뉴를 통해 확인 가능</div>
						<div style="font-size:15px">* 문의사항 : 02-1234-5678(입학관리처)</div>
						
						<p style="font-size: 20px; color: darkslateblue; margin-top: 25pt">
							2. 입학식 안내사항</p>
						<div style="font-size:15px">* 일시 : 2019.02.27(수) 10:00</div>
						<div style="font-size:15px">* 장소 : 경희대학교 오비스홀</div>
						
						
						<p style="font-size: 20px; color: darkslateblue; margin-top: 25pt">
							3. 기숙사 신청</p>
						<div style="font-size:15px">* 신청기간 : 2019.02.11(월) ~ 02.13(수)</div>
						<div style="font-size:15px">* 신청방법 : 본교 홈페이지에서 신청가능</div>
							
						<p style="font-size: 20px; color: darkslateblue; margin-top: 25pt">
							4. 수강신청</p>
						<div style="font-size:15px">* 신청기간 : 2019.02.25(월) ~ 02.28(목)</div>
						</div>
						
						<h3 style="font-family: 'Jeju Gothic';margin-top: 30pt">등록금 납부하기</h3>
						<form name="joinform" action="joinEnd.do" method="post"
							onsubmit="return check()">
							<table class="table">
								<tr>
									<th style="font-size: 10pt">이름</th>
									<td>
										<div class="col-md-8" style="padding-left: 0px">
											<input type="text" name="name" class="form-control"
												placeholder="이름을 입력하세요">
										</div>
									</td>
								</tr>
								<tr>
									<th style="font-size: 10pt">생년월일</th>
									<td>
										<div class="col-md-8" style="padding-left: 0px">
											<input type="text" name="name" class="form-control"
												placeholder="생년월일 예) 990422">
										</div>
									</td>
								</tr>
								<tr>
									<th style="font-size: 10pt">휴대전화</th>
									<td>
										<div class="col-md-8" style="padding-left: 0px">
											<input type="text" name="name" class="form-control"
												placeholder="휴대폰 번호를 입력해주세요">
										</div>
									</td>
								</tr>
								<tr>
									<th style="font-size: 10pt">납부금액</th>
									<td>
										<div class="col-md-8" style="padding-left: 0px">
											<input type="text" name="name" class="form-control" value="납부금액el로넣기"
												placeholder="휴대폰 번호를 입력해주세요">
										</div>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="text-center">
										<button type="button" class="btn btn-primary" type="submit">납부하기</button>
										<button type="button" class="btn btn-warning" onclick="history.go(-1)">이전 페이지</button>
									</td>
									<!-- 이미지버튼으로 처리하고 싶을 때 input type="image" src="이미지이름" -->
								</tr>
							</table>
							</form>
					</div>
				</div>
			</li>
			<!-- ---------------------------등록금 납부확인 클릭시---------------------- -->
			<li id="paycheck">
				<div class="row">
					<div class="col-md-8 col-md-offset-2" style="margin-top: 30px">
						<h2 style="font-family: 'Jeju Gothic';; font-size: 20pt">2019학년도 등록금 납부 조회</h2>
						<form name="joinform" action="joinEnd.do" method="post"
							onsubmit="return check()">
							<table class="table">
								<tr>
									<th style="font-size: 13pt">이름</th>
									<td>
										<div class="col-md-8" style="padding-left: 0px">
											<input type="text" name="name" class="form-control"
												placeholder="이름을 입력하세요">
										</div>
									</td>
								</tr>
								<tr>
									<th style="font-size: 13pt">생년월일</th>
									<td>
										<div class="col-md-8" style="padding-left: 0px">
											<input type="text" name="name" class="form-control"
												placeholder="생년월일 예) 990422">
										</div>
									</td>
								</tr>
								<tr>
									<th style="font-size: 13pt">수험번호</th>
									<td>
										<div class="col-md-8" style="padding-left: 0px">
											<input type="text" name="name" class="form-control"
												placeholder="수험번호 9자리를 입력해주세요">
										</div>
										<div class="col-md-2" style="padding-left: 0px">
											<button class="btn btn-success" type="button"
												onclick="NumberFind()">수험번호 조회</button>
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
				</div>
			</li>
		</ul>
	</div>
	<!-- container -->
</div>
<!-- section -->

<div class="row" style="margin-top: 15px">
	<div class="col-md-12">
		<div id="myCarousel" class="carousel slide" data-ride="carousel"
			data-interval="3000">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="../images/입시1.jpg">
				</div>

				<div class="item">
					<img src="../images/입시2.jpg">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev"><i
				class="icon-prev fa fa-angle-left"></i></a><a
				class="right carousel-control" href="#myCarousel" data-slide="next"><i
				class="icon-next fa fa-angle-right"></i></a>
		</div>
		<!-- carousel -->

	</div>
	<!-- col-md-12 -->
</div>
<!-- row -->
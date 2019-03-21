<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String myctx = request.getContextPath();
%>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- <link href="top.css" rel="stylesheet" type="text/css"> -->

<link href="<%=myctx%>/css/top.css" rel="stylesheet" type="text/css">
<style>
.hovereffect {
	width: auto;
	height: auto;
	float: left;
	overflow: hidden;
	position: relative;
	text-align: center;
	cursor: default;
}

.hovereffect .overlay {
	width: 100%;
	height: 100%;
	position: absolute;
	overflow: hidden;
	top: 0;
	left: 0;
	background-color: rgba(75, 75, 75, 0.7);
	-webkit-transition: all 0.4s ease-in-out;
	transition: all 0.4s ease-in-out;
}

.hovereffect:hover .overlay {
	background-color: rgba(48, 80, 80, 0.4);
}

.hovereffect img {
	display: block;
	position: relative;
}

.hovereffect h2 {
	text-transform: uppercase;
	color: #fff;
	text-align: center;
	position: relative;
	font-size: 17px;
	padding: 10px;
	background: rgba(0, 0, 0, 0.6);
	-webkit-transform: translateY(45px);
	-ms-transform: translateY(45px);
	transform: translateY(45px);
	-webkit-transition: all 0.4s ease-in-out;
	transition: all 0.4s ease-in-out;
}

.hovereffect:hover h2 {
	-webkit-transform: translateY(5px);
	-ms-transform: translateY(5px);
	transform: translateY(5px);
}

.hovereffect a.info {
	display: inline-block;
	text-decoration: none;
	padding: 7px 14px;
	text-transform: uppercase;
	color: #fff;
	border: 1px solid #fff;
	background-color: transparent;
	opacity: 0;
	filter: alpha(opacity = 0);
	-webkit-transform: scale(0);
	-ms-transform: scale(0);
	transform: scale(0);
	-webkit-transition: all 0.4s ease-in-out;
	transition: all 0.4s ease-in-out;
	font-weight: normal;
	margin: -52px 0 0 0;
	padding: 62px 100px;
}

.hovereffect:hover a.info {
	opacity: 1;
	filter: alpha(opacity = 100);
	-webkit-transform: scale(1);
	-ms-transform: scale(1);
	transform: scale(1);
}

.hovereffect a.info:hover {
	box-shadow: 0 0 5px #fff;
}

@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);

@import url('https://fonts.googleapis.com/css?family=East+Sea+Dokdo');
</style>
</head>

<div class="section">
	<div class="container">
		<div
			style="margin-top: 60px; font-family: 'Jeju Gothic'; font-size: 25pt; color: dimgray">
			<div class="col-md-6">
				<img src="images/로고.PNG"> 경 희 네 학 교
				<h2
					style="font-family: 'Jeju Gothic'; margin-top: 70px; font-size: 26pt">대학기본역량진단
					자율개선대학 선정</h2>
				<h3 style="font-family: 'Jeju Gothic'">KyungHee University</h3>
			</div>
			<!-- col-md-6 -->
			<div class='col-md-6' style="text-align: right; padding: 0">
				<img src="images/로고2.png">
			</div>
			<!-- col-md-6 -->
		</div>
		<!-- style color dimgray -->
	</div>
	<!-- container  -->
</div>
<!-- sction  -->
<!-- ------------------------------------------------------------------------------------------------------- -->

<div class="section">
	<div class="container">
		<div class="row" style="padding-left: 17px">
			<div style="margin-top: 40px">
				<div class="col-md-4">
					<div class="hovereffect" style="height: 350px; width: auto">
						<img class="img-responsive" src="images/메인1.jpg"
							style="height: 500px;" alt="">
						<div class="overlay" style="width: 100%">
							<a href="<%=myctx%>/Entrance/Entrance" target="_blank">
								<h2>입학예정자</h2>
								<p>
									<a style="color: white">"등록기간 : ~ 2019.03.21(목)"</a>
								</p>
						</div>
						<!-- overlay -->
					</div>
					<!-- hovereffect -->
				</div>
				<!-- col-md-4 -->
				<a href="<%=myctx%>/uniM">
					<div class="col-md-4">
						<div class="hovereffect" style="height: 350px; width: auto">
							<img class="img-responsive" src="images/메인2.jpg"
								style="height: 500px;" alt=""> <a href="<%=myctx%>/uniM"
								target="_blank"><div class="overlay" style="width: 100%">
									<h2>대학홈페이지</h2>
									<p>
										<a style="color: white">"내가 꿈꾸는 그곳 경희네학교"</a>
									</p>
								</div>
								<!-- overlay -->
						</div>
				</a>
				<!-- hovereffect -->
			</div>
			<!-- col-md-4 -->
			<div class="col-md-4">
				<div class="hovereffect" style="height: 350px; width: auto">
					<img class="img-responsive" src="images/메인3.jpg"
						style="height: 500px;" alt="">
					<div class="overlay" style="width: 100%">
						<a href="#AModal" data-toggle="modal">
							<h2>관리자</h2>
							<p>
								<a style="color: white">홈페이지 관리자만 사용</a>
							</p>
					</div>
					<!-- overlay -->
				</div>
				</a>
				<!-- hovereffect -->
				<div>
					<!-- col-md-4 -->
				</div>
				<!-- margin-top -->
			</div>
			<!-- row -->
		</div>
		<!--container -->
	</div>
	<!-- section -->
</div>
</div>
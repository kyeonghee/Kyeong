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
<title>KyungHee University</title>
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
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
</style>
</head>
<body>
	<div class="navbar navbar-default navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-ex-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="navbar-ex-collapse">
				<ul id="subMenu" class="nav navbar-nav navbar-right">
				<c:if test="${loginUser==null}">
					<li><a href="#BModal" data-toggle="modal">Login</a></li>
				</c:if>
					<c:if test="${loginUser!=null}">
					<li class="bg-warning"><a>${loginUser.studentName}님 로그인중...</a></li>
					<li><a href="<%=myctx%>/MLogout">Logout</a></li>
				</c:if>
					<li><a href="<%=myctx%>/uniM">Home<br></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div
		style="margin-top: 20px; font-family: 'Jeju Gothic'; font-size: 25pt; color: dimgray; text-align: center">
		<img src="<%=myctx %>/images/로고.PNG"> 경 희 네 학 교
	</div>
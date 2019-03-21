<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/Admin/AdminTop"/>
<div class="text-center section">
	<div class="col-md-12">
	<img src="../images/관리자배경.PNG" width="55%">
	</div>
	<div class="text-center container">
	<div class="col-md-8 col-md-offset-2">
	<h1 align="center" style="font-size:30pt; color:black; margin-top:80px">페이지 관리</h1>		
	</div> <!-- col-md-8 -->
	</div> <!-- class text-center container -->
	<img src="../images/hr.PNG">
	<div class="section">
	<div class="container"> 
	<div class="col-md-6">
	<h3>도서등록</h3>
	<img src="../images/도서등록.png">
	<br>
	<button class="btn btn-danger" style="margin-top:20px" onclick="location.href='../Admin/AdminBook'">도서등록</button>
	</div><!-- col-md-6 -->
	
	<div class="col-md-6">
	<h3>게시판 관리</h3>
	<img src="../images/공지사항등록.png">
	<br>
	<button class="btn btn-danger" style="margin-top:20px" onclick="location.href='../mypage/orderUser.do?idx=${user.idx}'">게시판 관리</button>
	</div><!-- col-md-6 -->
	
	<%-- <div class="col-md-4">
	<h3>학생관리</h3>
	<img src="../images/학생관리.PNG">
	<br>
	<button class="btn btn-danger" style="margin-top:20px" onclick="location.href='../mypage/orderUser.do?idx=${user.idx}'">학생관리</button>
	</div><!-- col-md-6 --> --%>
	</div><!-- container -->
	</div><!-- section --> 
	<img src="../images/hr.PNG">
	
</div> <!-- class text-center section -->
<c:import url="/foot"/>
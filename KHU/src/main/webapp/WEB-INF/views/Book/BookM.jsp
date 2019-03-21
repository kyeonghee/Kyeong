<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String myctx = request.getContextPath();
%>
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
</style>
<c:import url="/Book/BookTop" />

<div class="section">
	<div class="container">
		<div class="row">

			<div class="col-md-12" style="margin-top: 30px">
				<div class="col-md-4" align="center" style="margin-top: 15px">
					<a href="<%=myctx%>/Book/BookList"><img
						src="../images/도서신청.PNG" style="width: 20%"></a>
					<p style="font-family: 'Jeju Gothic'; margin-top: 10px">도서조회</p>
				</div>
				<div class="col-md-4" align="center" style="margin-top: 15px">
					<a href="<%=myctx%>/user/Book/BookBorrow"><img
						src="../images/대출현황.PNG" style="width: 20%"></a>
					<p style="font-family: 'Jeju Gothic'; margin-top: 10px">대출현황</p>
				</div>
				<div class="col-md-4" align="center" style="margin-top: 15px">
					<a href="<%=myctx%>/user/Book/BookSeat"><img src="../images/열람실.PNG"
						style="width: 20%"></a>
					<p style="font-family: 'Jeju Gothic'; margin-top: 10px">열람실예약</p>
				</div>
			</div>
		</div>
	</div>
</div>

<c:import url="/Book/BookFoot" />